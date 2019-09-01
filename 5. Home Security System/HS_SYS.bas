;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F877A

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_OFF, LVP_OFF, CPD_ON, WRT_OFF, DEBUG_OFF, CP_ON

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 10
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100000 
Declare Hserial_Clear = On  

Dim pos As Byte
Dim x As Byte
Dim check_point As Bit 
Dim vib_count As Byte 
Dim password[8] As Byte

Symbol motor = PORTC.0
Symbol buzz = PORTC.1
Symbol passChng = PORTD.2
Symbol passMode = PORTD.3
Symbol vibrator = PORTD.0
Symbol v_mode = PORTB.0
Symbol v_ok = PORTB.1
Input v_mode : Input v_ok
Output motor : Output buzz
Input passChng : Input passMode
Input vibrator

ADCON1 = 7
PORTA = 0 : PORTB = 0 : PORTC = 0 : PORTD = 0 : PORTE = 0

GoTo start

Include "keypad4x4.inc"
Include "GSM_SMS.Inc"

start:
  Cls
  Str password = "@ABC1234"   'default password
  vib_count = 0
  check_point = 0
  '--------------------------------
  Print At 2,1, "Checking GSM.."
  GoSub gate_lock
  GoSub GSM_init
  Print At 2,1, "GSM Module Found"
  DelayMS 2000
  GoSub default_lcd

main:
GoSub default_lcd  
While 1 = 1
  If passChng = 1 Then DelayMS 500 : GoSub change_pass
  If passMode = 1 Then DelayMS 500 : GoSub enter_pass
  If v_mode = 1 Then GoSub voice_mode
  If vibrator = 1 Then DelayMS 100 : Inc vib_count
  If vib_count = 5 Then vib_count = 0 : GoSub action
  GoSub Receive_SMS
Wend

voice_mode:
  Cls
Repeat
  Print At 1,1, "Voice mode: ON"
  Print At 2,1, "Pls say ur code"
  If v_ok = 1 Then GoTo voice_opening
Until v_mode = 0 
  GoTo main
  
voice_opening:
  Cls
  Print At 1,1, "Door Opened."
  GoSub gate_open
  Print At 1,1, "Lock in 10Sec"
  DelayMS 10000
  GoSub gate_lock
GoTo main

change_pass:
  Cls
  Print At 1,1, "Change pass: [8]"
  For x = 0 To 7
    GoSub capture_key
    password[x] = key_value
    Print At 2,x+1, key_value
  Next
GoTo main

enter_pass:
Cls
Print At 1,1, "Enter pass:"
  For x = 0 To 7
    GoSub capture_key
    If key_value = password[x] Then
      Print At 2,x+1, "*"
    Else
      Print At 2,1, "Wrong Password!"
      DelayMS 2000
      GoSub action
      GoTo main
    EndIf
  Next
GoSub door_open
GoTo main

action:
  buzz = 1
  Cls
  Print At 1,1, "Sending SMS..."
  Str text = "Someone trying to open your door."
  Str receiver = "01994171591"
  GoSub Send_SMS
  Str receiver = "01951074760"
  GoSub Send_SMS
  Str receiver = "01945452271"
  GoSub Send_SMS
  buzz = 0
GoTo main
  

default_lcd:
  Cls
  Print At 1,1, "DoorSecurity SYS" 
  Print At 2,1, "Door: Locked" 
Return

door_open:
 Cls
 Print At 1,1, "Door Opened."
 GoSub gate_open
 Print At 1,1, "Lock in 10Sec"
 DelayMS 10000
 GoSub gate_lock
Return

gate_lock:
  For pos = 0 To 50  '0 degree
     motor = 1
     DelayUS 800
     motor = 0
     DelayUS 19200
  Next
Return

gate_open:
  For pos = 0 To 50  '180 degree
     motor = 1
     DelayUS 2000
     motor = 0
     DelayUS 18000
  Next
Return
