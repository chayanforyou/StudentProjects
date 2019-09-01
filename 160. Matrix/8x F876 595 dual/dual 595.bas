Device 16F876
Xtal 10
TRISB = 0 : PORTB = 0

Symbol row_sh = PORTB.0
Symbol row_ds = PORTB.1
Symbol row_st = PORTB.2
Symbol col_sh = PORTB.3
Symbol col_ds = PORTB.4
Symbol col_st = PORTB.5

Dim scroll As Word
Dim dta As Byte
Dim col As Byte
Dim row As Byte 
Dim scan As Byte

main:
For scan = 0 To 50
  col_ds = 1 : col_sh = 1 : col_sh = 0 : col_st = 1 : col_st = 0
    For col = 0 To 7
       For row = 0 To 7
         dta =~ CRead dta1 + col 
         row_ds = dta >> row
         row_sh = 1 : row_sh = 0
         row_st = 1 : row_st = 0
         DelayMS 1
       Next row
     col_ds = 0 : col_sh = 1 : col_sh = 0 : col_st = 1 : col_st = 0
     'DelaymS 
    Next col
Next scan
GoTo main

dta1:
CData $7F , $FF , $CC , $CC , $CC , $FF , $7F , $00 'A

