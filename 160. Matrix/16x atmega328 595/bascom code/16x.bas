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
$regfile = "m8def.dat"
$crystal = 10000000

Config Portb = Output
Config Portc = Output
Config Portd = Output
Dta Alias Portc.0
Clk Alias Portc.1
Stb Alias Portc.2
Sh Alias Portb.0
Stch Alias Portb.1
Row1 Alias Portb.2
Row2 Alias Portb.3

Dim Col As Byte , Dch As Word , Row As Byte
Dim Scan As Byte , Scroll As Word
Dim Disp As Byte , Temp1 As Byte , Temp2 As Byte


Main:
For Scroll = 0 To 79 Step 2
   For Scan = 0 To 3
   Dta = 1 : Clk = 1 : Clk = 0 : Stb = 1 : Stb = 0
   Dch = 0
      For Col = 0 To 31
      Disp = Dch + Scroll
      Temp1 = Lookup(disp , Dta1) : Toggle Temp1
        For Row = 0 To 7
        Shift Temp1 , Right , 1
        Row1 = Temp1
        Sh = 1 : Sh = 0
        Stch = 1 : Stch = 0
        Next Row
      Incr Dch
      Disp = Dch + Scroll
      Temp2 = Lookup(disp , Dta1) : Toggle Temp2
        For Row = 0 To 7
        Shift Temp2 , Right , 1
        Row2 = Temp2
        Sh = 1 : Sh = 0
        Stch = 1 : Stch = 0
        Next Row
      Incr Dch
      Waitus 100
      Dta = 0 : Clk = 1 : Clk = 0 : Stb = 1 : Stb = 0
      Next Col
   Next Scan
Next Scroll
Goto Main

Dta1:
Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00, ' Code for char
Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00, ' Code for char
Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00, ' Code for char
Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00, ' Code for char

Data &H00 , &H00 , &H00 , &H0F , &H80 , &H11 , &HC0 , &H20 , &HC0 , &H20 , &H40 , &H20 , &H40 , &H30 , &H40 , &H30,
Data &H80 , &H18 , &H00 , &H0F , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 0
Data &H00 , &H00 , &H38 , &H30 , &H78 , &H78 , &H78 , &H78 , &HC0 , &H78 , &H80 , &H39 , &H00 , &H33 , &H00 , &H1E,
Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 1
Data &H00 , &H03 , &H00 , &H0E , &H38 , &H0C , &H38 , &H1C , &H70 , &H1C , &H60 , &H3C , &HE0 , &H34 , &H80 , &H63,
Data &H00 , &HC0 , &H00 , &H80 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 2
Data &HC0 , &H00 , &HC0 , &H03 , &H00 , &H0E , &HE0 , &H1C , &HF0 , &H19 , &HF0 , &H31 , &HF0 , &H30 , &H30 , &H30,
Data &H60 , &H30 , &H60 , &H18 , &H80 , &H0F , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,

Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00, ' Code for char
Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00, ' Code for char
Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00, ' Code for char
Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00, ' Code for char