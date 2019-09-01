;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20

Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface 4 
DelayMS 1000
Cls
All_Digital = 1

Symbol IR_butt = PORTA.0
Symbol sonar_butt = PORTA.1
Symbol weight_butt = PORTA.2 
Symbol IR_sensor = PORTA.4
Symbol s_motor = PORTA.5
Symbol buzzer = PORTC.5
Symbol echo = PORTC.6
Symbol Trigger = PORTC.7
Symbol motor = PORTB.0
Symbol dataa = PORTC.4
Symbol clock = PORTC.3
Input dataa : Output clock
Input IR_butt : Input sonar_butt
Input weight_butt : Input IR_sensor
Output s_motor : Output buzzer
Input echo : Output Trigger
Output motor : Clear PORTC 

Dim Hx711Cnt As Dword
Dim i As Byte
Dim gram As Word
Dim sonar_read As Word
Dim distance As Float
Dim human As Byte
Dim gate_flag As Bit
Dim pos As Byte
Dim IR_mode As Bit
Dim sonar_mode As Bit
Dim weight_mode As Bit
Clear

GoSub gate_open

main:
  If IR_mode = 1 Then
    GoSub check_IR
  Else
    Print At 2,1, "-OFF-"
  EndIf
  
  If sonar_mode = 1 Then
    GoSub check_sonar
  Else
    Print At 1,1, "Sonar System OFF"
  EndIf
  
  If weight_mode = 1 Then
    GoSub check_weight
  Else
    Print At 2,7, "Weight OFF"
  EndIf
  
  GoSub mode_sense
GoTo main

mode_sense:
  If IR_butt = 1 Then
    IR_mode = ~IR_mode
    Cls
    If IR_mode = 1 Then 
      Print At 2,1, "IR System ON"
      DelayMS 1000
    Else
      human = 0
      Print At 2,1, "IR System OFF"
      DelayMS 1000
    EndIf
    Cls
  EndIf
  If sonar_butt = 1 Then
    sonar_mode = ~sonar_mode
    Cls
    If sonar_mode = 1 Then 
      Print At 2,1, "Sonar System ON"
      DelayMS 1000
    Else
      Print At 2,1, "Sonar System OFF"
      DelayMS 1000
    EndIf
    Cls
  EndIf
  If weight_butt = 1 Then
    weight_mode = ~weight_mode
    Cls
    If weight_mode = 1 Then 
      Print At 2,1, "Weight System ON"
      DelayMS 1000
    Else
      Print At 2,1, "Weight SystemOFF"
      DelayMS 1000
    EndIf
    Cls
  EndIf
Return

check_weight:
  dataa = 1 
  clock = 0
  Hx711Cnt = 0
  While dataa = 1 : Wend
  For i = 0 To 23
    High clock
    Hx711Cnt = Hx711Cnt << 1
    Low clock
    If dataa = 1 Then Inc Hx711Cnt
  Next
  High clock
  Hx711Cnt = Hx711Cnt ^ 0x800000
  gram = 8388608 - Hx711Cnt
  'gram = gram - 124000
  Low clock
  Print At 2,7, Dec gram, "gram  " 
Return

check_IR:
  If IR_sensor = 0 And human < 30 Then 
    Inc human
    buzzer = 1
    DelayMS 100 
    buzzer = 0
  EndIf
  Print At 2,1, "P: ", Dec human 
  If human < 30 And gate_flag = 1 Then gate_flag = 0 : GoSub gate_open
  If human = 30 And gate_flag = 0 Then 
    gate_flag = 1 
    GoSub gate_lock 
    GoSub alarm
  EndIf
Return

check_sonar:
  PulsOut Trigger, 10, High  
  sonar_read = PulsIn echo, 1
  DelayMS 10
  distance = (sonar_read * 2) / 58
  Print At 1,1, "Distance:", Dec1 distance, "cm  " 
Return

gate_lock:
  For pos = 0 To 50  '0 degree
     s_motor = 1
     DelayUS 800
     s_motor = 0
     DelayUS 19200
  Next
Return

gate_open:
  For pos = 0 To 50  '180 degree
     s_motor = 1
     DelayUS 3000
     s_motor = 0
     DelayUS 17000
  Next
Return

alarm:
  buzzer = 1
  DelayMS 2000
  buzzer = 0
Return

