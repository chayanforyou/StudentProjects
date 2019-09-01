'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2017 [select VIEW...EDITOR OPTIONS] *       --
'*          : All Rights Reserved                               *
'*  Date    : 4/28/2017                                         *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
Device = 16F73
Xtal 20
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF
Declare LCD_DTPin = PORTB.4 
Declare LCD_RSPin = PORTB.2
Declare LCD_ENPin = PORTB.3
Declare LCD_Interface = 4
Declare LCD_Lines = 2
Declare Hserial_Baud = 115200     
Declare Hserial_RCSTA = %10010000
Declare Hserial_TXSTA = %00100100
Declare Hserial_Clear = On

Symbol L1_pin = PORTC.2
Symbol L2_pin = PORTC.3
Symbol L3_pin = PORTC.4
Symbol F1_pin = PORTC.5
Output L1_pin : Output L2_pin
Output L3_pin : Output F1_pin

Dim number[11] As Byte
Dim msg[5] As Byte
Dim speed As Byte
Dim flag As Bit

PORTC = 0 : Clear

Print $FE,$40,1,2,20,9,2,20,8,0
Print $FE,$48,0,17,10,4,10,17,0,0

Cls
DelayMS 10000
Print At 1,1, "WAIT FOR GSM..."

Gsm_init:
  HSerOut ["AT", 13, 10]
  HSerIn 1000, Gsm_init, [Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CMGD=1,4", 13, 10]
  DelayMS 1000
  Cls
  
Print At 1,1, "L1: "
Print At 1,12, "L2: "
Print At 2,1, "L3: "
Print At 2,9, "Fan: "

flag = 0 : speed = 0
  
MAIN:
  GoSub RECEIVE_SMS
  GoSub regulate
  If L1_pin = 1 Then
    Print At 1,5, 0
  Else
    Print At 1,5, 1
  EndIf
  If L2_pin = 1 Then
    Print At 1,16, 0
  Else
    Print At 1,16, 1
  EndIf
  If L3_pin = 1 Then
    Print At 2,5, 0
  Else
    Print At 2,5, 1
  EndIf
  If flag = 1 Then
    Print At 2,14, Dec speed, "%"
  Else
    Print At 2,14, "OFF"
  EndIf
GoTo MAIN

RECEIVE_SMS:
  HSerIn 100, over, [Wait("+88"),Str number,Wait(13, 10), Str msg]
  GoSub take_action
over:
Return

take_action:
  If msg[0] = "L" And msg[1] = "1" And msg[2] = "O" And msg[3] = "N" Then L1_pin = 1
  If msg[0] = "L" And msg[1] = "1" And msg[2] = "O" And msg[3] = "F" Then L1_pin = 0
  If msg[0] = "L" And msg[1] = "2" And msg[2] = "O" And msg[3] = "N" Then L2_pin = 1
  If msg[0] = "L" And msg[1] = "2" And msg[2] = "O" And msg[3] = "F" Then L2_pin = 0
  If msg[0] = "L" And msg[1] = "3" And msg[2] = "O" And msg[3] = "N" Then L3_pin = 1
  If msg[0] = "L" And msg[1] = "3" And msg[2] = "O" And msg[3] = "F" Then L3_pin = 0
  If msg[0] = "C" And msg[1] = "H" And msg[2] = "E" And msg[3] = "C" Then GoSub Send_SMS
  
  If msg[0] = "F" And msg[1] = "1" Then
    speed = (msg[2] - 48) * 10 + msg[3] - 48 
    flag = 1
  EndIf
  
  If msg[0] = "F" And msg[1] = "1" And msg[2] = "O" And msg[3] = "F" Then 
    flag = 0
    F1_pin = 0
  EndIf 
  
  Clear msg
Return

Send_SMS:
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS="]
  DelayMS 200
  HSerOut [34, Str number, 34,13,10]
  DelayMS 200  
  HSerOut ["Light 1: ", Dec1 L1_pin, 13, 10]
  HSerOut ["Light 2: ", Dec1 L1_pin, 13, 10]
  HSerOut ["Light 3: ", Dec1 L1_pin, 13, 10]
  HSerOut ["Fan 1: ", Dec2 speed, $1A, 13, 10]
  DelayMS 5000
  Clear msg
GoTo MAIN

regulate:
  If flag = 1 Then
     F1_pin = 0
     DelayMS 100 - speed
     F1_pin = 1 
  EndIf
Return
