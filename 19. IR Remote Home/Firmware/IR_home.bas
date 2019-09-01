'****************************************************************
'*  Name    : IR_home.BAS                                       *
'*  Author  : Antor Ahmed                                       *
'*  Notice  : Copyright (c) 2017 Antor Ahmed                    *
'*          : All Rights Reserved                               *
'*  Date    : 28-Jun-17                                         *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************

Device = 16F676

Config FOSC_INTRCIO, WDTE_OFF, PWRTE_OFF, MCLRE_ON, BOREN_OFF, CP_ON, CPD_ON

Xtal 20
ANSEL = 0
Declare Sonyin_Pin = PORTC.0

Symbol FAN = PORTC.1
Symbol L_1 = PORTC.2
Symbol L_2 = PORTC.3
Symbol L_3 = PORTC.4
Symbol L_4 = PORTC.5
Symbol L_5 = PORTA.0
Symbol L_6 = PORTA.1
Symbol L_7 = PORTA.2
Output FAN : Output L_1
Output L_2 : Output L_3
Output L_4 : Output L_5
Output L_6 : Output L_7
PORTC = 0 : PORTA = 0

Dim speed As Byte
Dim flag As Bit
Dim sony As Word
Dim cmd As sony.LowByte
Clear

main:
  Repeat
    sony = SonyIn
    GoSub fan_speed 
  Until cmd <> 255
  
  If cmd >= 0 And cmd <= 8 Then 
    speed = cmd + 2
    flag = 1
  EndIf
  If cmd = 21 Then flag = 0
  If cmd = 16 Then L_1 = ~L_1 : DelayMS 500
  If cmd = 17 Then L_2 = ~L_2 : DelayMS 500
  If cmd = 18 Then L_3 = ~L_3 : DelayMS 500
  If cmd = 19 Then L_4 = ~L_4 : DelayMS 500
GoTo main

fan_speed:
  If flag = 1 Then
    FAN = 0
    DelayMS 10 - speed
    FAN = 1
  Else
    FAN = 0 
  EndIf
Return


