;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

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
    
Dim volt As Byte
Dim amp As Byte 

Dim number[11] As Byte
Dim msg As Word
Dim money As Word
Dim receive As Bit
Dim low_m As Bit
Dim admin As Byte

Symbol dec_m = PORTC.0
Input dec_m
    
Cls

main:
  Cls
  Clear
  money = 0 : msg = 0
  Print At 2,1,"Please wait..."
  GoSub GSM_init
  Cls
  GoSub default_lcd
  
start:
  'GoSub get_ACvolt
  'GoSub get_ACamp
  Print At 1,1,"Bln:", Dec4 money, "TK  "
  Print At 2,1, "AC: 217v", 'Dec volt, "v  "
  Print At 2,12,"45mA" 'Dec amp, "mA   "
  If dec_m = 1 Then Dec money
  If money <= 0 Then money = 0
  If money = 50 Then low_m = 1
  If low_m = 1 And money < 50 Then
    Cls
    low_m = 0
    Print At 1,1, "Balance too low!"
    Print At 2,1, "Money: ", Dec money,"TK"
    admin = 0
    GoSub Send_SMS
    admin = 1
    GoSub Send_SMS
    GoSub default_lcd
  EndIf
  GoSub Receive_SMS
  If receive = 1 Then
    Cls
    money = money + msg
    Print At 1,1, "Money receive:"
    Print At 2,1, Dec msg, "TK "
    Print At 2,7, "Total:", Dec money
    admin = 0
    GoSub Send_SMS
    admin = 1
    GoSub Send_SMS
    receive = 0
    msg = 0
    GoSub default_lcd
   EndIf
GoTo start

Send_SMS:
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS="]
  If admin = 0 Then
    HSerOut [34, Str number, 34,13,10]
  Else
    HSerOut [34, "01833905966", 34,13,10]    'change this number
  EndIf
  DelayMS 200
  If receive = 1 Then
    HSerOut ["Your balance is refilled by ", Dec msg, "TK successfully.", $1A, 13, 10]
  Else
    HSerOut ["Your current balance less than 50TK.", $1A, 13, 10]
  EndIf
  DelayMS 6000
Return

Receive_SMS:
  HSerIn 1000, over,[Wait("+88"), Str number, Wait(13,10),Dec msg]
    If msg > 49 And msg <= 500 Then
      receive = 1
    EndIf
over:
Return

GSM_init:
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init,[Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  HSerOut ["AT+CMGF=1", 13, 10]
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
Return

default_lcd:
  Cls
  Print At 1,13,"50Hz"
GoTo start

get_ACvolt:
  volt = ADIn 0
  '----Enter your formula here
Return

get_ACamp:
  amp = ADIn 1
  '----Enter your formula here
Return
