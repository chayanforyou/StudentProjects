;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
All_Digital = On
Declare LCD_DTPin = PORTB.4
Declare LCD_RSPin = PORTB.2
Declare LCD_ENPin = PORTB.3
Declare LCD_Interface = 4 

Symbol rly = PORTC.4
Symbol buzz = PORTA.1
Symbol sensor = PORTC.1
Symbol sensor2 = PORTC.2
Output rly : Output buzz 
Input sensor : Input sensor2

rly = 0 : buzz = 0

Dim flag_i As Bit : flag_i = 0
Dim flag_o As Bit : flag_o = 0


Dim people As Word
Cls

main:
  Print At 1,1, "IR Human Counter"
  rly = 0 : people = 0
  
  While 1 = 1
    If sensor = 0 Then flag_o = 1 : DelayMS 300
    If sensor2 = 0 Then flag_i = 1 : DelayMS 300
    If flag_o = 1 And sensor2 = 0 Then 
      flag_o = 0
      Inc people : GoSub buzzer  
      Print At 2,1, "   Someone IN   "
      DelayMS 1000
    EndIf 
    If flag_i = 1 And sensor = 0 Then 
      flag_i = 0
      Dec people : GoSub buzzer
      Print At 2,1, "  Someone OUT   "
      DelayMS 1000
    EndIf
    If people = 0 Then rly = 0
    If people > 0 Then rly = 1
    Print At 2,1, "Entered:  ", Dec4 people
  Wend
  
buzzer:
  buzz = 1
  DelayMS 500
  buzz = 0
Return
