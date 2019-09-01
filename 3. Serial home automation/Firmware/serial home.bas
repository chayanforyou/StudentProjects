'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : Antor Ahmed                                       *
'*  Notice  : Copyright (c) 2016 Antor Ahmed                    *
'*          : All Rights Reserved                               *
'*  Date    : 24-Aug-16                                         *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
Device 16F73
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF
Xtal 8
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100000 
Declare Hserial_Clear = On  

  
Symbol out1 = PORTC.0
Symbol out2 = PORTC.1
Symbol out3 = PORTC.2
Symbol out4 = PORTC.3
Symbol motorA = PORTA.0  'clock-wise
Symbol motorB = PORTA.1  'anti clock-wise
Symbol butt = PORTC.4

Dim speed As Byte : speed = 0
Dim temp As Byte
Dim serDta As Byte
Dim dir As Byte
Dim delay As Byte

ADCON1 = 7 : TRISB = 0
TRISC = 144 : PORTC = 15
TRISA = 0 : PORTA = 0

Print $FE, 1 : DelayMS 30
Print $FE, 2, " PC Serial Home " 

wait_for_pc:
  Print $FE, $C0, "Waiting For PC.."
  HSerIn [Wait("AT"), serDta]
  HSerOut ["You are connected to the device.",13,13]

menu:
Print $FE, 1 : DelayMS 30
Print $FE, 2, " PC Serial Home " 
While 1 = 1
  Print $FE, $C0, "PC Connected. :)"
reselect:
  HSerOut ["Please select your choice?",13]
  HSerOut ["1. Light 1 Toggle",13]
  HSerOut ["2. Light 2 Toggle",13]
  HSerOut ["3. Light 3 Toggle",13]
  HSerOut ["4. Light 4 Toggle",13]
  HSerOut ["5. Motor Speed",13]
  dir = 1
  HSerIn [Dec serDta]
    If serDta = 1 Then
      Toggle out1
      GoTo show
    ElseIf serDta = 2 Then
      Toggle out2
      GoTo show
    ElseIf serDta = 3 Then
      Toggle out3
      GoTo show
    ElseIf serDta = 4 Then
      Toggle out4
      GoTo show
    ElseIf serDta = 5 Then
    retry:
      HSerOut ["Enter Motor Direction?",13]
      HSerOut ["1. Motor OFF",13]
      HSerOut ["2. Clock-wise",13]
      HSerOut ["3. Anti Clock-wise",13]
      HSerIn [Dec dir]
       If dir = 0 Or dir > 3 Then
         HSerOut [13,"value must be (1-3).",13]
         GoTo retry
       EndIf
      GoTo show
    Else
      HSerOut [13,"value must be (1-5).",13,13]
      GoTo reselect
    EndIf  
 Wend 
GoTo menu

show:
If out1 = 1 Then
  HSerOut ["Light 1 : OFF", 13]
Else
  HSerOut ["Light 1 : ON", 13]
EndIf
If out2 = 1 Then
  HSerOut ["Light 2 : OFF", 13]
Else
  HSerOut ["Light 2 : ON", 13]
EndIf
If out3 = 1 Then
  HSerOut ["Light 3 : OFF", 13]
Else
  HSerOut ["Light 3 : ON", 13]
EndIf
If out4 = 1 Then
  HSerOut ["Light 4 : OFF", 13]
Else
  HSerOut ["Light 4 : ON", 13]
EndIf
If dir = 1 Then
  HSerOut ["Motor: OFF", 13]
ElseIf dir = 2 Then
  HSerOut ["Motor: Clockwise", 13]
ElseIf dir = 3 Then
  HSerOut ["Motor: Anti-Clockwise", 13]
EndIf
HSerOut [13,13, "Enter X to reconnect.",13,13] 
While 1 = 1
Print $FE, 1 'lcd clear
    If out1 = 1 Then
      Print At 1,1, "L1: ", "OFF"
    Else
      Print At 1,1, "L1: ", "ON"
    EndIf
    If out2 = 1 Then
      Print At 1,10, "L2: ", "OFF"
    Else
      Print At 1,10, "L2: ", "ON"
    EndIf
    If out3 = 1 Then
      Print At 2,1, "L3: ", "OFF"
    Else
      Print At 2,1, "L3: ", "ON"
    EndIf
    If out4 = 1 Then
      Print At 2,10, "L4: ", "OFF"
    Else
      Print At 2,10, "L4: ", "ON"
    EndIf
    If butt = 1 Then GoTo menu 
    GoSub motor
    HSerIn 3000, TIME1,[serDta]
    If serDta = "X" Then GoTo menu
TIME1:
    Print $FE, 1 'lcd clear
     If dir = 1 Then
       Print At 1,1, "Motor: "
       Print At 2,1, "OFF"
     ElseIf dir = 2 Then
       Print At 1,1, "Motor: "
       Print At 2,1, "Clockwise"
     ElseIf dir = 3 Then
       Print At 1,1, "Motor: "
       Print At 2,1, "Anti-Clockwise"
     EndIf
     GoSub motor
    HSerIn 3000, time2,[serDta]
    If serDta = "X" Then GoTo menu
    If butt = 1 Then GoTo menu
time2:
Wend
GoTo show

motor:
  If dir = 1 Then
    motorA = 0
    motorB = 0
  ElseIf dir = 2 Then
    motorB = 0
    motorA = 1
  ElseIf dir = 3 Then
    motorA = 0
    motorB = 1
  EndIf
Return





