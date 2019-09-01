Device = 16F73
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF
Xtal 20
ADCON1 = 7

Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100100 
Declare Hserial_Clear = On
DelayMS 1000
Cls

Symbol pump = PORTC.1
Symbol soil = PORTC.0
Symbol led = PORTC.2
Input soil
Output led : Output pump
Low led : Low pump

Dim auto As Bit
Dim number[11] As Byte
Dim msg[4] As Byte
Dim x As Byte
Clear

auto = 1

Gsm_init:
  For x = 0 To 1
  Print At 1,1, "Waiting for GSM"
  Print At 2,1, "."
  HSerOut ["AT", 13, 10]
  HSerIn 1000, Gsm_init, [Wait("OK")]
  Print At 2,2, "."
  HSerOut ["ATE0", 13, 10]
  DelayMS 500
  Print At 2,3, "."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 500
  Print At 2,4, "."
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
  DelayMS 500
  Print At 2,5, "."
  DelayMS 1000
  Cls
  Next
  

main:
  Print At 1,1, "Soil Status: "
  If soil = 1 Then
    Print At 1,14, "DRY"
    If auto = 1 Then pump = 1 : led = 1
  Else
    Print At 1,14, "WET"
    If auto = 1 Then pump = 0 : led = 0
  EndIf
  If auto = 0 Then 
    Print At 2,3, "Mode: MANUAL"
  Else
    Print At 2,3, "Mode: AUTO  "
  EndIf
  GoSub Receive_SMS
GoTo main

Receive_SMS:
  Clear msg
  HSerIn 500, over, [Wait("+88"), Str number, Wait(13,10),Str msg]
  
  If msg[0] = "S" And msg[1] = "T" And msg[2] = "A" Then GoSub send_report
  If msg[0] = "A" And msg[1] = "U" And msg[2] = "T" Then auto = 1
  If msg[0] = "M" And msg[1] = "A" And msg[2] = "N" Then auto = 0
  If auto = 0 Then 
    If msg[0] = "P" And msg[1] = "O" And msg[2] = "N" Then pump = 1 : led = 1
    If msg[0] = "P" And msg[1] = "O" And msg[2] = "F" Then pump = 0 : led = 0
  EndIf
  
over:
Return

send_report:
  Cls
  
  Print At 1,1, "Sending SMS..."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS=", 34, Str number, 34,13,10]
  DelayMS 200 
  If soil = 1 Then  
    HSerOut ["Soil: DRY.", 13]
  Else
    HSerOut ["Soil: WET.", 13]
  EndIf
  If pump = 1 Then  
    HSerOut ["Pump: ON.", 13]
  Else
    HSerOut ["Pump: OFF.", 13]
  EndIf
  If auto = 1 Then  
    HSerOut ["Mode: Auto.", 13]
  Else
    HSerOut ["Mode: Manual.", 13]
  EndIf
  HSerOut [$1A, 13, 10]
  DelayMS 5000
  Cls
Return
GoTo main
  
