'****************************************************************
'*  Name    : 7 clock time keeper.BAS                           *
'*  Author  : Abrar Antor                                       *
'*  Notice  : Copyright (c) 2015 BlaC Electronics               *
'*          : All Rights Reserved                               *
'*  Date    : 04/08/2015                                        *
'*  Version : 1.0                                               *
'*  Notes   : 74HC154                                           *
'*          :                                                   *
'****************************************************************

Device = 16F876
Xtal 20
TRISA = 0 : TRISB = 0 : TRISC = 0
PORTA = 0 : PORTB = 0 : PORTC = 0

Symbol dta = PORTB
Symbol digit1 = PORTC
Symbol digit2 = PORTA
Symbol setup = PORTC.4
Symbol nxt = PORTC.5
Symbol up = PORTC.6
Symbol down = PORTC.7

Dim digit_s As Byte
Dim seg As Byte
Dim adrs As Byte : adrs = 255
Dim wrt[29] As Byte
Dim delay As Byte
Dim i As Byte
Dim hh11 As Byte : Dim hh12 As Byte
Dim hh21 As Byte : Dim hh22 As Byte
Dim hh31 As Byte : Dim hh32 As Byte
Dim hh41 As Byte : Dim hh42 As Byte
Dim hh51 As Byte : Dim hh52 As Byte
Dim hh61 As Byte : Dim hh62 As Byte
Dim hh71 As Byte : Dim hh72 As Byte
Dim mm11 As Byte : Dim mm12 As Byte
Dim mm21 As Byte : Dim mm22 As Byte
Dim mm31 As Byte : Dim mm32 As Byte
Dim mm41 As Byte : Dim mm42 As Byte
Dim mm51 As Byte : Dim mm52 As Byte
Dim mm61 As Byte : Dim mm62 As Byte
Dim mm71 As Byte : Dim mm72 As Byte
hh11 = ERead 0 : hh12 = ERead 1
hh21 = ERead 2 : hh22 = ERead 3
hh31 = ERead 4 : hh32 = ERead 5
hh41 = ERead 6 : hh42 = ERead 7
hh51 = ERead 8 : hh52 = ERead 9
hh61 = ERead 10 : hh62 = ERead 11
hh71 = ERead 12 : hh72 = ERead 13
mm11 = ERead 14 : mm12 = ERead 15
mm21 = ERead 16 : mm22 = ERead 17
mm31 = ERead 18 : mm32 = ERead 19
mm41 = ERead 20 : mm42 = ERead 21
mm51 = ERead 22 : mm52 = ERead 23
mm61 = ERead 24 : mm62 = ERead 25
mm71 = ERead 26 : mm72 = ERead 27
Select Case hh11
Case 63,6,91,79,102,109,125,7,127,111
GoTo main
Case Else
hh11 = 0 : hh12 = 0 : mm11 = 0 : mm12 = 0
hh21 = 0 : hh22 = 0 : mm21 = 0 : mm22 = 0
hh31 = 0 : hh32 = 0 : mm31 = 0 : mm32 = 0
hh41 = 0 : hh42 = 0 : mm41 = 0 : mm42 = 0
hh51 = 0 : hh52 = 0 : mm51 = 0 : mm52 = 0
hh61 = 0 : hh62 = 0 : mm61 = 0 : mm62 = 0
hh71 = 0 : hh72 = 0 : mm71 = 0 : mm72 = 0
EndSelect

main:
For i = 0 To 28
wrt[i] = 0
Next i
start:
If setup = 1 Then GoTo setting1
GoSub scan
GoTo start

setting1:
wrt[1] = 1
If up = 1 Then hh11 = hh11 + 1
If down = 1 Then hh11 = hh11 - 1
If hh11 < 0 Then hh11 = 9
If hh11 = 10 Then hh11 = 0
For delay = 0 To 300
GoSub rescan
Next delay
EWrite 0, [hh11]
If nxt = 1 Then GoTo setting2
If setup = 0 Then GoTo main
GoTo setting1

setting2:
wrt[2] = 1
If up = 1 Then hh12 = hh12 + 1
If down = 1 Then hh12 = hh12 - 1
If hh12 < 0 Then hh12 = 9
If hh12 = 10 Then hh12 = 0
For delay = 0 To 270
GoSub rescan
Next delay
EWrite 1, [hh12]
If nxt = 1 Then GoTo setting3
If setup = 0 Then GoTo main
GoTo setting2

setting3:
wrt[3] = 1
If up = 1 Then mm11 = mm11 + 1
If down = 1 Then mm11 = mm11 - 1
If mm11 < 0 Then mm11 = 9
If mm11 = 10 Then mm11 = 0
For delay = 0 To 250
GoSub rescan
Next delay
EWrite 2, [mm11]
If nxt = 1 Then GoTo setting4
If setup = 0 Then GoTo main
GoTo setting3

setting4:
wrt[4] = 1
If up = 1 Then mm12 = mm12 + 1
If down = 1 Then mm12 = mm12 - 1
If mm12 < 0 Then mm12 = 9
If mm12 = 10 Then mm12 = 0
For delay = 0 To 200
GoSub rescan
Next delay
EWrite 3, [mm12]
If nxt = 1 Then GoTo setting5
If setup = 0 Then GoTo main
GoTo setting4

setting5:
wrt[5] = 1
If up = 1 Then hh21 = hh21 + 1
If down = 1 Then hh21 = hh21 - 1
If hh21 < 0 Then hh21 = 9
If hh21 = 10 Then hh21 = 0
For delay = 0 To 150
GoSub rescan
Next delay
EWrite 4, [hh21]
If nxt = 1 Then GoTo setting6
If setup = 0 Then GoTo main
GoTo setting5

setting6:
wrt[6] = 1
If up = 1 Then hh21 = hh21 + 1
If down = 1 Then hh21 = hh21 - 1
If hh21 < 0 Then hh21 = 9
If hh21 = 10 Then hh21 = 0
For delay = 0 To 100
GoSub rescan
Next delay
EWrite 5, [hh21]
If nxt = 1 Then GoTo setting7
If setup = 0 Then GoTo main
GoTo setting6

setting7:
wrt[7] = 1
If up = 1 Then mm21 = mm21 + 1
If down = 1 Then mm21 = mm21 - 1
If mm21 < 0 Then mm21 = 9
If mm21 = 10 Then mm21 = 0
For delay = 0 To 50
GoSub rescan
Next delay
EWrite 6, [mm21]
If nxt = 1 Then GoTo setting8
If setup = 0 Then GoTo main
GoTo setting7

setting8:
wrt[8] = 1
If up = 1 Then mm22 = mm22 + 1
If down = 1 Then mm22 = mm22 - 1
If mm22 < 0 Then mm22 = 9
If mm22 = 10 Then mm22 = 0
For delay = 0 To 50
GoSub rescan
Next delay
EWrite 7, [mm22]
If nxt = 1 Then GoTo setting9
If setup = 0 Then GoTo main
GoTo setting8

setting9:
wrt[9] = 1
If up = 1 Then hh31 = hh31 + 1
If down = 1 Then hh31 = hh31 - 1
If hh31 < 0 Then hh31 = 9
If hh31 = 10 Then hh31 = 0
For delay = 0 To 50
GoSub rescan
Next delay
EWrite 8, [hh31]
If nxt = 1 Then GoTo setting10
If setup = 0 Then GoTo main
GoTo setting9

setting10:
wrt[10] = 1
If up = 1 Then hh32 = hh32 + 1
If down = 1 Then hh32 = hh32 - 1
If hh32 < 0 Then hh32 = 9
If hh32 = 10 Then hh32 = 0
For delay = 0 To 50
GoSub rescan
Next delay
EWrite 9, [hh32]
If nxt = 1 Then GoTo setting11
If setup = 0 Then GoTo main
GoTo setting10

setting11:
wrt[11] = 1
If up = 1 Then mm31 = mm31 + 1
If down = 1 Then mm31 = mm31 - 1
If mm31 < 0 Then mm31 = 9
If mm31 = 10 Then mm31 = 0
For delay = 0 To 50
GoSub rescan
Next delay
EWrite 10, [mm31]
If nxt = 1 Then GoTo setting12
If setup = 0 Then GoTo main
GoTo setting11

setting12:
wrt[12] = 1
If up = 1 Then mm32 = mm32 + 1
If down = 1 Then mm32 = mm32 - 1
If mm32 < 0 Then mm32 = 9
If mm32 = 10 Then mm32 = 0
For delay = 0 To 50
GoSub rescan
Next delay
EWrite 11, [mm32]
If nxt = 1 Then GoTo setting13
If setup = 0 Then GoTo main
GoTo setting12

setting13:
wrt[13] = 1
If up = 1 Then hh41 = hh41 + 1
If down = 1 Then hh41 = hh41 - 1
If hh41 < 0 Then hh41 = 9
If hh41 = 10 Then hh41 = 0
For delay = 0 To 50
GoSub rescan
Next delay
EWrite 12, [hh41]
If nxt = 1 Then GoTo setting14
If setup = 0 Then GoTo main
GoTo setting13

setting14:
wrt[14] = 1
If up = 1 Then hh42 = hh42 + 1
If down = 1 Then hh42 = hh42 - 1
If hh42 < 0 Then hh42 = 9
If hh42 = 10 Then hh42 = 0
For delay = 0 To 50
GoSub rescan
Next delay
EWrite 13, [hh42]
If nxt = 1 Then GoTo setting15
If setup = 0 Then GoTo main
GoTo setting14

setting15:
wrt[15] = 1
If up = 1 Then mm41 = mm41 + 1
If down = 1 Then mm41 = mm41 - 1
If mm41 < 0 Then mm41 = 9
If mm41 = 10 Then mm41 = 0
For delay = 0 To 40
GoSub rescan
Next delay
EWrite 14, [mm41]
If nxt = 1 Then GoTo setting16
If setup = 0 Then GoTo main
GoTo setting15

setting16:
wrt[16] = 1
If up = 1 Then mm42 = mm42 + 1
If down = 1 Then mm42 = mm42 - 1
If mm42 < 0 Then mm42 = 9
If mm42 = 10 Then mm42 = 0
For delay = 0 To 40
GoSub rescan
Next delay
EWrite 15, [mm42]
If nxt = 1 Then GoTo setting17
If setup = 0 Then GoTo main
GoTo setting16

setting17:
wrt[17] = 1
If up = 1 Then hh51 = hh51 + 1
If down = 1 Then hh51 = hh51 - 1
If hh51 < 0 Then hh51 = 9
If hh51 = 10 Then hh51 = 0
For delay = 0 To 40
GoSub rescan
Next delay
EWrite 16, [hh51]
If nxt = 1 Then GoTo setting18
If setup = 0 Then GoTo main
GoTo setting17

setting18:
wrt[18] = 1
If up = 1 Then hh52 = hh52 + 1
If down = 1 Then hh52 = hh52 - 1
If hh52 < 0 Then hh52 = 9
If hh52 = 10 Then hh52 = 0
For delay = 0 To 40
GoSub rescan
Next delay
EWrite 17, [hh52]
If nxt = 1 Then GoTo setting19
If setup = 0 Then GoTo main
GoTo setting18

setting19:
wrt[19] = 1
If up = 1 Then mm51 = mm51 + 1
If down = 1 Then mm51 = mm51 - 1
If mm51 < 0 Then mm51 = 9
If mm51 = 10 Then mm51 = 0
For delay = 0 To 40
GoSub rescan
Next delay
EWrite 18, [mm51]
If nxt = 1 Then GoTo setting20
If setup = 0 Then GoTo main
GoTo setting19

setting20:
wrt[20] = 1
If up = 1 Then mm52 = mm52 + 1
If down = 1 Then mm52 = mm52 - 1
If mm52 < 0 Then mm52 = 9
If mm52 = 10 Then mm52 = 0
For delay = 0 To 40
GoSub rescan
Next delay
EWrite 19, [mm52]
If nxt = 1 Then GoTo setting21
If setup = 0 Then GoTo main
GoTo setting20

setting21:
wrt[21] = 1
If up = 1 Then hh61 = hh61 + 1
If down = 1 Then hh61 = hh61 - 1
If hh61 < 0 Then hh61 = 9
If hh61 = 10 Then hh61 = 0
For delay = 0 To 30
GoSub rescan
Next delay
EWrite 20, [hh61]
If nxt = 1 Then GoTo setting22
If setup = 0 Then GoTo main
GoTo setting21

setting22:
wrt[22] = 1
If up = 1 Then hh62 = hh62 + 1
If down = 1 Then hh62 = hh62 - 1
If hh62 < 0 Then hh62 = 9
If hh62 = 10 Then hh62 = 0
For delay = 0 To 30
GoSub rescan
Next delay
EWrite 21, [hh62]
If nxt = 1 Then GoTo setting23
If setup = 0 Then GoTo main
GoTo setting22

setting23:
wrt[23] = 1
If up = 1 Then mm61 = mm61 + 1
If down = 1 Then mm61 = mm61 - 1
If mm61 < 0 Then mm61 = 9
If mm61 = 10 Then mm61 = 0
For delay = 0 To 30
GoSub rescan
Next delay
EWrite 22, [mm61]
If nxt = 1 Then GoTo setting24
If setup = 0 Then GoTo main
GoTo setting23

setting24:
wrt[24] = 1
If up = 1 Then mm62 = mm62 + 1
If down = 1 Then mm62 = mm62 - 1
If mm62 < 0 Then mm62 = 9
If mm62 = 10 Then mm62 = 0
For delay = 0 To 30
GoSub rescan
Next delay
EWrite 23, [mm62]
If nxt = 1 Then GoTo setting25
If setup = 0 Then GoTo main
GoTo setting24

setting25:
wrt[25] = 1
If up = 1 Then hh71 = hh71 + 1
If down = 1 Then hh71 = hh71 - 1
If hh71 < 0 Then hh71 = 9
If hh71 = 10 Then hh71 = 0
For delay = 0 To 30
GoSub rescan
Next delay
EWrite 24, [hh71]
If nxt = 1 Then GoTo setting26
If setup = 0 Then GoTo main
GoTo setting25

setting26:
wrt[26] = 1
If up = 1 Then hh72 = hh72 + 1
If down = 1 Then hh72 = hh72 - 1
If hh72 < 0 Then hh72 = 9
If hh72 = 10 Then hh72 = 0
For delay = 0 To 20
GoSub rescan
Next delay
EWrite 25, [hh72]
If nxt = 1 Then GoTo setting27
If setup = 0 Then GoTo main
GoTo setting26

setting27:
wrt[27] = 1
If up = 1 Then mm71 = mm71 + 1
If down = 1 Then mm71 = mm71 - 1
If mm71 < 0 Then mm71 = 9
If mm71 = 10 Then mm71 = 0
For delay = 0 To 20
GoSub rescan
Next delay
EWrite 26, [mm71]
If nxt = 1 Then GoTo setting28
If setup = 0 Then GoTo main
GoTo setting27

setting28:
wrt[28] = 1
If up = 1 Then mm72 = mm72 + 1
If down = 1 Then mm72 = mm72 - 1
If mm72 < 0 Then mm72 = 9
If mm72 = 10 Then mm72 = 0
For delay = 0 To 20
GoSub rescan
Next delay
EWrite 27, [mm72]
If nxt = 1 Then GoTo main
If setup = 0 Then GoTo main
GoTo setting28

rescan:
If wrt[1] = 1 Then
seg = hh11
GoSub DISPLAY : dta = seg
digit1 = 1 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[2] = 1 Then
seg = hh12
GoSub DISPLAY : dta = seg
digit1 = 2 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[3] = 1 Then
seg = mm11
GoSub DISPLAY : dta = seg
digit1 = 3 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[4] = 1 Then
seg = mm12
GoSub DISPLAY : dta = seg
digit1 = 4 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[5] = 1 Then
seg = hh21
GoSub DISPLAY : dta = seg
digit1 = 5 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[6] = 1 Then
seg = hh22
GoSub DISPLAY : dta = seg
digit1 = 6 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[7] = 1 Then
seg = mm21
GoSub DISPLAY : dta = seg
digit1 = 7 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[8] = 1 Then
seg = mm22
GoSub DISPLAY : dta = seg
digit1 = 8 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[9] = 1 Then
seg = hh31
GoSub DISPLAY : dta = seg
digit1 = 9 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[10] = 1 Then
seg = hh32
GoSub DISPLAY : dta = seg
digit1 = 10 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[11] = 1 Then
seg = mm31
GoSub DISPLAY : dta = seg
digit1 = 11 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[12] = 1 Then
seg = mm32
GoSub DISPLAY : dta = seg
digit1 = 12 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[13] = 1 Then
seg = hh41
GoSub DISPLAY : dta = seg
digit1 = 13 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[14] = 1 Then
seg = hh42
GoSub DISPLAY : dta = seg
digit1 = 14 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[15] = 1 Then
seg = mm41
GoSub DISPLAY : dta = seg
digit1 = 15 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[16] = 1 Then
seg = mm42
GoSub DISPLAY : dta = seg
digit2 = 1 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[17] = 1 Then
seg = hh51
GoSub DISPLAY : dta = seg
digit2 = 2 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[18] = 1 Then
seg = hh52
GoSub DISPLAY : dta = seg
digit2 = 3 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[19] = 1 Then
seg = mm51
GoSub DISPLAY : dta = seg
digit2 = 4 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[20] = 1 Then
seg = mm52
GoSub DISPLAY : dta = seg
digit2 = 5 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[21] = 1 Then
seg = hh61
GoSub DISPLAY : dta = seg
digit2 = 6 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[22] = 1 Then
seg = hh62
GoSub DISPLAY : dta = seg
digit2 = 7 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[23] = 1 Then
seg = mm61
GoSub DISPLAY : dta = seg
digit2 = 8 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[24] = 1 Then
seg = mm62
GoSub DISPLAY : dta = seg
digit2 = 9 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[25] = 1 Then
seg = hh71
GoSub DISPLAY : dta = seg
digit2 = 10 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[26] = 1 Then
seg = hh72
GoSub DISPLAY : dta = seg
digit2 = 11 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[27] = 1 Then
seg = mm71
GoSub DISPLAY : dta = seg
digit2 = 12 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
If wrt[28] = 1 Then
seg = mm72
GoSub DISPLAY : dta = seg
digit2 = 13 : DelayMS 1 : digit1 = 0 : digit2 = 0
EndIf
Return

scan:
seg = hh11
GoSub DISPLAY : dta = seg
digit1 = 1 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh12
GoSub DISPLAY : dta = seg
digit1 = 2 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm11
GoSub DISPLAY : dta = seg
digit1 = 3 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm12
GoSub DISPLAY : dta = seg
digit1 = 4 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh21
GoSub DISPLAY : dta = seg
digit1 = 5 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh22
GoSub DISPLAY : dta = seg
digit1 = 6 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm21
GoSub DISPLAY : dta = seg
digit1 = 7 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm22
GoSub DISPLAY : dta = seg
digit1 = 8 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh31
GoSub DISPLAY : dta = seg
digit1 = 9 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh32
GoSub DISPLAY : dta = seg
digit1 = 10 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm31
GoSub DISPLAY : dta = seg
digit1 = 11 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm32
GoSub DISPLAY : dta = seg
digit1 = 12 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh41
GoSub DISPLAY : dta = seg
digit1 = 13 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh42
GoSub DISPLAY : dta = seg
digit1 = 14 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm41
GoSub DISPLAY : dta = seg
digit1 = 15 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm42
GoSub DISPLAY : dta = seg
digit2 = 1 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh51
GoSub DISPLAY : dta = seg
digit2 = 2 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh52
GoSub DISPLAY : dta = seg
digit2 = 3 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm51
GoSub DISPLAY : dta = seg
digit2 = 4 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm52
GoSub DISPLAY : dta = seg
digit2 = 5 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh61
GoSub DISPLAY : dta = seg
digit2 = 6 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh62
GoSub DISPLAY : dta = seg
digit2 = 7 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm61
GoSub DISPLAY : dta = seg
digit2 = 8 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm62
GoSub DISPLAY : dta = seg
digit2 = 9 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh71
GoSub DISPLAY : dta = seg
digit2 = 10 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = hh72
GoSub DISPLAY : dta = seg
digit2 = 11 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm71
GoSub DISPLAY : dta = seg
digit2 = 12 : DelayMS 1 : digit1 = 0 : digit2 = 0
seg = mm72
GoSub DISPLAY : dta = seg
digit2 = 13 : DelayMS 1 : digit1 = 0 : digit2 = 0
Return

DISPLAY:
seg = LookUp seg,[63,6,91,79,102,109,125,7,127,111]
Return
