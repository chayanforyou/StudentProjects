;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
Declare Hserial_Baud = 115200     
Declare Hserial_RCSTA = %10010000
Declare Hserial_TXSTA = %00100100
Declare Hserial_Clear = On
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
DelayMS 1000
Cls

Symbol buzz = PORTC.4
Symbol door = PORTC.0
Input door : Output buzz
buzz = 0

Dim smoke As Byte
Dim temp As Byte
Dim timer As Word
Dim number[11] As Byte
Clear

Str number = "01688398513"

GSM_init:
  Print At 1,1, "Please wait.."
  DelayMS 10000
  Cls
  Print At 1,1, "Contacting GSM.."
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init, [Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  DelayMS 1000
  Print At 2,1, "GSM OK.."
  DelayMS 1000
  Cls

main:
  temp = ADIn 0
  smoke = ADIn 1
  temp = temp * 1.96
  
  If door = 1 Then 
    Print At 1,1, "Door: OPEN"
    GoSub alart
  Else 
    Print At 1,1, "Door: LOCK" 
  EndIf
  Print At 1,13, Dec2 temp, 223, "C",
  Print At 2,1, "Smoke: ", Dec3 smoke, " PPM"
  
  If temp > 35 Then GoSub alart
  If smoke > 50 Then GoSub alart
GoTo main

alart:
  buzz = 1
  Inc timer
  If timer = 10 Then send_SMS
  If timer = 1500 Then timer = 0 ' 200 * 1500 = 300000ms = 5min
  DelayMS 100
  buzz = 0
  DelayMS 100
Return

send_SMS:
  Cls
  Print At 2,1, "SMS Sending..."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CMGS=",34, Str number, 34,13,10]
  DelayMS 1000  
  If door = 1 Then 
    HSerOut ["Door: OPEN", 13]
  Else 
    HSerOut ["Door: LOCK", 13]
  EndIf
  HSerOut ["Temperature: ", Dec2 temp, " Degree C", 13]
  HSerOut ["Smoke: ", Dec3 smoke]
  HSerOut [$1A, 13, 10]
  DelayMS 5000
  Cls 
GoTo main
