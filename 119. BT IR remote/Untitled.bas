'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2017 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 25-Jan-17                                         *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F688

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, MCLRE_ON, CP_ON, CPD_ON, BOREN_OFF, IESO_OFF, FCMEN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
CMCON0 = 7
ANSEL = 0
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100100 
Declare Hserial_Clear = On  

Symbol relay1 = PORTA.2
Symbol relay2 = PORTC.0
Symbol relay3 = PORTC.1
Symbol relay4 = PORTC.2

Declare Sonyin_Pin = PORTC.3
Dim Sony_in As Word 
Dim cmd As Sony_in.LowByte  

Output relay1 : Output relay2
Output relay3 : Output relay4

relay1 = 1 : relay2 = 1
relay3 = 1 : relay4 = 1

Dim relay_status As Byte
Dim rly_1 As relay_status.0
Dim rly_2 As relay_status.1
Dim rly_3 As relay_status.2
Dim rly_4 As relay_status.3

relay_status = ERead 0
If relay_status = $FF Then relay_status = 0
EWrite 0, [relay_status]

Dim rxd As Byte

main:
  If rly_1 = 1 Then 
    relay1 = 0
  Else
    relay1 = 1
  EndIf
  If rly_2 = 1 Then 
    relay2 = 0
  Else
    relay2 = 1
  EndIf
  If rly_3 = 1 Then 
    relay3 = 0
  Else
    relay3 = 1
  EndIf
  If rly_4 = 1 Then 
    relay4 = 0
  Else
    relay4 = 1
  EndIf
  GoSub ir_sense
GoTo main

ir_sense:
  Sony_in = SonyIn
  GoSub take_action
  HSerIn 10, main, [rxd]
Return

take_action:
  If rxd = "1" Then rly_1 = 1
  If rxd = "A" Then rly_1 = 0
  If rxd = "2" Then rly_2 = 1
  If rxd = "B" Then rly_2 = 0
  If rxd = "3" Then rly_3 = 1
  If rxd = "C" Then rly_3 = 0
  If rxd = "4" Then rly_4 = 1
  If rxd = "D" Then rly_4 = 0
  If rxd = "I" Then GoSub high_all
  If rxd = "9" Then GoSub low_all
  If cmd = 0 Then rly_1 =~ rly_1 : DelayMS 300
  If cmd = 1 Then rly_2 =~ rly_2 : DelayMS 300
  If cmd = 2 Then rly_3 =~ rly_3 : DelayMS 300
  If cmd = 3 Then rly_4 =~ rly_4 : DelayMS 300
  If cmd = 19 Then GoSub high_all : DelayMS 300
  If cmd = 18 Then GoSub low_all : DelayMS 300  
  EWrite 0, [relay_status]
  rxd = 0
Return

low_all:
  rly_1 = 1 : rly_2 = 1
  rly_3 = 1 : rly_4 = 1
Return

high_all:
  rly_1 = 0 : rly_2 = 0
  rly_3 = 0 : rly_4 = 0
Return

