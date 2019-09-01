;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C73B

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
Declare Hserial_Baud = 115200
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100100 
Declare Hserial_Clear = On     

Dim number[11] As Byte
Dim msg As Word 
Dim money As Word 
Dim receive As Bit
Dim low_m As Bit
Dim admin As Byte
Dim volt As Byte 
Dim freq As Byte
Dim tvolt As Byte 
Dim tfreq As Byte
Dim sms_f_f As Bit
Dim sms_f_v As Bit

Output PORTC.0
Symbol incVolt = PORTC.1 : Input incVolt
Symbol decVolt = PORTC.2 : Input decVolt
Symbol incFreq = PORTC.3 : Input incFreq
Symbol decFreq = PORTC.4 : Input decFreq
Symbol incBlnc = PORTC.5 : Input incBlnc

Print $fe, $40, 0,17,10,4,10,17,0,0   '0
Print $fe, $48, 1,2,20,9,2,20,8,0     '1

  Cls
  Print At 1,1, "Waiting for GSM"
  DelayMS 10000
  Print At 2,1, "."
Gsm_init:
  HSerOut ["AT", 13, 10]
  HSerIn 1000, Gsm_init, [Wait("OK")]
  Print At 2,2, "."
  HSerOut ["ATE0", 13, 10]
  DelayMS 1000
  Print At 2,3, "."
  HSerOut ["AT+CSDH=1", 13, 10]
  DelayMS 1000
  Print At 2,4, "."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  Print At 2,4, "."
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
  DelayMS 1000
  Print At 2,5, "."
  DelayMS 1000
  Cls
  msg = -1 : money = 100
  volt = 218 : freq = 50
  tvolt = volt : tfreq = freq
  receive = 0
  
start: 
  Print At 1,1,"Blnc: ", Dec4 money, "TK  "
  Print At 2,1, "AC: ", Dec3 volt, "v  "
  Print At 2,13, Dec2 freq, "Hz"
  
  If incVolt = 1 Then Inc volt 
  If decVolt = 1 Then Dec volt
  If incFreq = 1 Then Inc freq
  If decFreq = 1 Then Dec freq 
  
  If incBlnc = 1 And money != 0 Then Dec money
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
    Cls
  EndIf
  
  GoSub Receive_SMS
  If receive = 1 Then
    Cls
    receive = 0
    money = money + msg
    Print At 1,1, "Money receive:"
    Print At 2,1, Dec msg, "TK "
    Print At 2,7, "Total:", Dec money
    admin = 0
    GoSub Send_SMS
    admin = 1
    GoSub Send_SMS
    msg = -1
    Cls
  EndIf
  
  If volt < 180 Or volt > 230 Or freq < 45 Or freq > 55 Or money < 50 Then
    PORTC.0 = 0
    Print At 1,16, 0
  Else
    PORTC.0 = 1
    Print At 1,16, 1
  EndIf 
  If freq >= 45 And freq <= 55 Then sms_f_f = 1
  If volt >= 180 And volt <= 230 Then sms_f_v = 1
  If sms_f_f = 1 Then 
    If freq < 45 Or freq > 55 Then Send_freq : sms_f_f = 0
  EndIf
  If sms_f_v = 1 Then
    If volt < 180 Or volt > 230 Then Send_volt : sms_f_v = 0
  EndIf
GoTo start

Send_SMS:
  Cls
  Print At 1,1, "SMS Sending..."
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
  DelayMS 3000
  Cls
GoSub start

Send_blance:
  Cls
  Print At 1,1, "SMS Sending..."
  Print At 2,1, "Balance..."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS="]
  HSerOut [34, Str number, 34,13,10]
  DelayMS 200
  HSerOut ["Your current balance is: ", Dec msg, "TK only.", $1A, 13, 10]
  DelayMS 3000
  Cls
GoSub start

Send_freq:
  Cls
  Print At 1,1, "SMS Sending..."
  Print At 2,1, "Frequency..."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS="]
  HSerOut [34, "01833905966", 34,13,10]
  DelayMS 200
  HSerOut ["Frequency over range.", $1A, 13, 10]
  DelayMS 3000
  Cls
GoSub start 

Send_volt:
  Cls
  Print At 1,1, "SMS Sending..."
  Print At 2,1, "Voltage..."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS="]
  HSerOut [34, "01833905966", 34,13,10]
  DelayMS 200
  HSerOut ["Voltage over range.", $1A, 13, 10]
  DelayMS 3000
  Cls
GoSub start  

Receive_SMS:
  HSerIn 1000, over,[Wait("+88"), Str number, Wait(13,10), Dec msg]
    If msg > 49 And msg <= 500 Then
      receive = 1
    EndIf
    If msg = 10 Then GoSub Send_blance
over:
Return
