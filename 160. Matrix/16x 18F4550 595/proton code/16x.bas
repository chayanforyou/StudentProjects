'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : Abrar Antor                                       *
'*  Notice  : Copyright (c) 2015 BlaC Electronics               *
'*          : All Rights Reserved                               *
'*  Date    : 08/08/2015                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
Device = 18F4550
Xtal 10
TRISA = 0 : TRISB = 0 : TRISC = 0 : TRISD = 0
All_Digital = 1

Symbol dta = PORTC.0
Symbol clk = PORTC.1
Symbol stb = PORTC.2
Symbol row1 = PORTB
Symbol row2 = PORTD

Dim col As Byte
Dim dch As Word
Dim scan As Byte
Dim scroll As Word


main:
For scroll = 0 To 192 Step 2 '(total line in "dta1" * 16) - 64 = 192
For scan = 0 To 5
dta = 1 : clk = 1 : clk = 0 : stb = 1 : stb = 0
dch = 0
For col = 0 To 31
row1 =~ CRead dta1 + dch + scroll
dch = dch + 1
row2 =~ CRead dta1 + dch + scroll
dch = dch + 1
DelayUS 500
dta = 0 : clk = 1 : clk = 0 : stb = 1 : stb = 0
Next col
Next scan
Next scroll
GoTo main

dta1:
CData $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
CData $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,  ' Code for char 
CData $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
CData $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,  ' Code for char
'---------------------- start font here ---------------------------- 
CData $08, $00, $08, $00, $78, $1E, $48, $12, $48, $12, $48, $1A, $C8, $03, $08, $02, 
CData $08, $02, $08, $02, $08, $02, $F8, $1F, $08, $00, $08, $00, $F8, $1F, $08, $00,  ' Code for char  
CData $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
CData $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,  ' Code for char !
CData $08, $00, $E9, $1E, $A9, $12, $A9, $12, $A9, $12, $29, $12, $29, $12, $29, $12, 
CData $29, $12, $29, $12, $29, $12, $EF, $13, $08, $00, $E8, $07, $18, $08, $08, $10,  ' Code for char "
CData $08, $00, $88, $07, $48, $08, $48, $10, $88, $00, $08, $03, $88, $00, $48, $00, 
CData $48, $00, $88, $00, $08, $01, $F8, $1F, $08, $00, $08, $00, $08, $00, $08, $00,  ' Code for char #  
'------------------------ end font here ---------------------------- 
CData $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
CData $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,  ' Code for char
CData $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
CData $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,  ' Code for char  
