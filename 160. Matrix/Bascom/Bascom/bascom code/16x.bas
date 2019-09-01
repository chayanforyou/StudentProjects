'****************************************************************
'*  Name    : Dotmatrix16x16.BAS                                *
'*  Author  : Shohidul Islam                                    *
'*  Notice  : Copyright (c) 2015 S-Tech Electronics             *
'*          : All Rights Reserved                               *
'*  Date    : 08/08/2015                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
$regfile = "m328def.dat"
$crystal = 10000000

Config Portb = Output
Config Portc = Output
Config Portd = Output
Dta Alias Portc.0
Clk Alias Portc.1
Stb Alias Portc.2
Row1 Alias Portb
Row2 Alias Portd

Dim Col As Byte , Dch As Word
Dim Scan As Byte , Scroll As Word
Dim Disp As Byte , Temp1 As Byte , Temp2 As Byte


Main:
For Scroll = 0 To 3088 Step 2                               '*(total line in "dta1" * 16) - 64 = 3264
   For Scan = 0 To 3
   Dta = 1 : Clk = 1 : Clk = 0 : Stb = 1 : Stb = 0
   Dch = 0
      For Col = 0 To 32
      Disp = Dch + Scroll
      Temp1 = Lookup(disp , Dta1) : Toggle Temp1
      Row1 = Temp1
      Incr Dch
      Disp = Dch + Scroll
      Temp2 = Lookup(disp , Dta1) : Toggle Temp2
      Row2 = Temp2
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
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00, ' Code for char 4 line+




       Data &H00 , &H00 , &H00 , &H00 , &HF0 , &H01 , &HF0 , &H37 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char !
       Data &H00 , &H00 , &HF0 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &HF0 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , ' Code For Char "
       Data &H00 , &H04 , &H40 , &H44 , &H40 , &H7F , &HFC , &H3F , &HFC , &H04 , &H40 , &H7E , &HFC , &H7F , &HFC , &H05,
       Data &H40 , &H04 , &H40 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char #
       Data &H20 , &H01 , &HA0 , &H1F , &H60 , &H21 , &H00 , &H22 , &H00 , &H33 , &H00 , &H1F , &H00 , &H0F , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char &H
       Data &H00 , &H00 , &HF0 , &H00 , &H18 , &H01 , &H04 , &H61 , &HC4 , &H79 , &H7C , &H1E , &H88 , &H07 , &HE8 , &H03,
       Data &HF8 , &H00 , &H38 , &H3C , &H0C , &H46 , &H00 , &H62 , &H00 , &H3E , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char %
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char &
       Data &H00 , &H00 , &HF0 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char '
       Data &H80 , &H3F , &H60 , &H40 , &H10 , &H00 , &H08 , &H00 , &H04 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char (
       Data &H04 , &H00 , &H08 , &H00 , &H10 , &H00 , &HE0 , &H40 , &H00 , &H3F , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char )
       Data &H00 , &H00 , &H80 , &H01 , &HB0 , &H01 , &HA0 , &H00 , &HF0 , &H03 , &H6C , &H00 , &HA0 , &H00 , &HB0 , &H01,
       Data &H30 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char *
       Data &H00 , &H02 , &H00 , &H02 , &H00 , &H02 , &H00 , &H02 , &HE0 , &H7F , &H00 , &H02 , &H00 , &H02 , &H00 , &H02,
       Data &H00 , &H02 , &H00 , &H02 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char +
       Data &H00 , &H00 , &H00 , &H60 , &H00 , &H60 , &H00 , &H60 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char ,
       Data &H00 , &H04 , &H00 , &H04 , &H00 , &H04 , &H00 , &H04 , &H00 , &H04 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char -
       Data &H00 , &H00 , &H00 , &H60 , &H00 , &H60 , &H00 , &H60 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char .
       Data &H00 , &H40 , &H00 , &H78 , &H00 , &H3F , &HE0 , &H07 , &HFC , &H00 , &H1C , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char /
       Data &H00 , &H00 , &H00 , &H0F , &H80 , &H11 , &HC0 , &H20 , &H40 , &H20 , &H40 , &H20 , &H40 , &H30 , &H80 , &H18,
       Data &H00 , &H0F , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 0
       Data &H00 , &H00 , &H70 , &H30 , &HF0 , &H78 , &HF0 , &H78 , &H80 , &H79 , &H00 , &H33 , &H00 , &H1E , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 1
       Data &H00 , &H06 , &H30 , &H0C , &H70 , &H1C , &H60 , &H1C , &HC0 , &H38 , &HC0 , &H3D , &H80 , &H67 , &H00 , &H40,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 2
       Data &HC0 , &H00 , &H80 , &H07 , &H00 , &H0C , &HC0 , &H18 , &HE0 , &H31 , &HE0 , &H31 , &HE0 , &H31 , &H60 , &H30,
       Data &HC0 , &H18 , &H80 , &H0F , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 3
       Data &H00 , &H00 , &HC0 , &H39 , &HA0 , &H27 , &H10 , &H43 , &H10 , &H43 , &H10 , &H47 , &HB0 , &H6F , &HE0 , &H3C,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 4
       Data &H00 , &H0F , &HC0 , &H31 , &HE0 , &H20 , &H60 , &H40 , &H70 , &H7E , &HF0 , &H63 , &H90 , &H41 , &H80 , &H41,
       Data &H80 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 5
       Data &H80 , &H01 , &H00 , &H0E , &H30 , &H18 , &HF0 , &H33 , &HE0 , &H67 , &H00 , &H64 , &H00 , &H67 , &H80 , &H33,
       Data &H00 , &H1F , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 6
       Data &H00 , &H00 , &HC0 , &H01 , &H60 , &H02 , &H30 , &H02 , &H10 , &H02 , &H10 , &H02 , &H60 , &H02 , &HC0 , &H7F,
       Data &H00 , &H60 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 7
       Data &H30 , &H00 , &HF0 , &H3F , &H00 , &H41 , &H00 , &H41 , &H00 , &H61 , &H00 , &H32 , &H00 , &H0F , &H00 , &H01,
       Data &H00 , &H01 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 8
       Data &H70 , &H38 , &HF0 , &H66 , &HC0 , &H62 , &H80 , &H03 , &H80 , &H7F , &H80 , &H7B , &H00 , &H23 , &H00 , &H1E,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 9
       Data &H00 , &H00 , &H80 , &H3B , &H80 , &H3B , &H80 , &H3B , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char :
       Data &H00 , &H00 , &H80 , &H33 , &H80 , &H33 , &H80 , &H73 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char ;
       Data &H00 , &H06 , &H00 , &H06 , &H00 , &H0F , &H00 , &H0F , &H80 , &H1F , &H80 , &H19 , &H80 , &H19 , &HC0 , &H30,
       Data &HC0 , &H30 , &H60 , &H60 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char <
       Data &H80 , &H10 , &H80 , &H10 , &H80 , &H10 , &H80 , &H10 , &H80 , &H10 , &H80 , &H10 , &H80 , &H10 , &H80 , &H10,
       Data &H80 , &H10 , &H80 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char =
       Data &H60 , &H60 , &HC0 , &H30 , &HC0 , &H30 , &H80 , &H19 , &H80 , &H19 , &H80 , &H1F , &H00 , &H0F , &H00 , &H0F,
       Data &H00 , &H06 , &H00 , &H06 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char >
       Data &H00 , &H00 , &H60 , &H60 , &HF0 , &H6E , &HF0 , &H7E , &H10 , &H03 , &HE0 , &H01 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char ?
       Data &H00 , &H00 , &H80 , &H3F , &HC0 , &H41 , &H20 , &H00 , &H10 , &H04 , &H98 , &H0D , &HC8 , &H0D , &HC8 , &H1C,
       Data &H48 , &H14 , &H88 , &H23 , &H10 , &H20 , &H30 , &H20 , &H60 , &H18 , &H80 , &H07 , &H00 , &H00 , &H00 , &H00,       ' Code for char @
       Data &H30 , &H00 , &HD0 , &H01 , &H10 , &H06 , &H10 , &H0C , &HD0 , &H19 , &HD0 , &H11 , &HD0 , &H11 , &H90 , &H08,
       Data &H10 , &H0F , &H10 , &H1C , &HF0 , &H7F , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char A
       Data &H13 , &H00 , &H14 , &H04 , &HD4 , &H0D , &HD4 , &H1D , &HF4 , &H1D , &H74 , &H1C , &H54 , &H24 , &H98 , &H63,
       Data &H10 , &H40 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char B
       Data &H10 , &H00 , &HD3 , &H01 , &HF4 , &H07 , &HF4 , &H09 , &H54 , &H0C , &H94 , &H07 , &H94 , &H03 , &H94 , &H7F,
       Data &H98 , &H03 , &H90 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char C
       Data &H10 , &H00 , &HF3 , &H01 , &H14 , &H06 , &H14 , &H18 , &HF4 , &H33 , &H14 , &H24 , &H14 , &H27 , &H94 , &H23,
       Data &H98 , &H11 , &H10 , &H0F , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char D
       Data &H13 , &H00 , &HD4 , &H01 , &HD4 , &H0F , &H14 , &H1E , &H14 , &H38 , &HF4 , &H37 , &H14 , &H34 , &H14 , &H33,
       Data &H98 , &H19 , &H10 , &H0F , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char E
       Data &H70 , &H00 , &H70 , &H03 , &HE0 , &H03 , &HB0 , &H07 , &HD0 , &H04 , &HE0 , &H0C , &HF8 , &H3F , &H00 , &H02,
       Data &H00 , &H06 , &HF8 , &H1F , &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char F
       Data &H00 , &H00 , &H80 , &H07 , &H80 , &H08 , &H00 , &H10 , &H80 , &H13 , &HE0 , &H17 , &H60 , &H1F , &H30 , &H18,
       Data &H10 , &H10 , &HE0 , &H7F , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char G
       Data &H00 , &H00 , &H00 , &H0F , &H00 , &H08 , &H00 , &H10 , &HC3 , &H13 , &HE6 , &H13 , &HB4 , &H13 , &H1C , &H10,
       Data &H38 , &H10 , &HD8 , &H7F , &HF0 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char H
       Data &H40 , &H00 , &H80 , &H03 , &H00 , &H0C , &HE0 , &H19 , &HF0 , &H31 , &HB0 , &H21 , &H10 , &H27 , &H10 , &H37,
       Data &HE0 , &H1F , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char I
       Data &H40 , &H00 , &H80 , &H03 , &H00 , &H0C , &HC3 , &H1B , &HE4 , &H33 , &H24 , &H23 , &HAC , &H23 , &H28 , &H23,
       Data &HC8 , &H1F , &HF0 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char J
       Data &H10 , &H00 , &H10 , &H03 , &H90 , &H07 , &H90 , &H07 , &HD0 , &H0C , &HD0 , &H18 , &HF0 , &H7F , &H50 , &H00,
       Data &H50 , &H0E , &H90 , &H0E , &H10 , &H07 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char K
       Data &HE0 , &H00 , &HE0 , &H03 , &HC0 , &H07 , &H60 , &H07 , &H20 , &H0F , &HC0 , &H0D , &H00 , &H18 , &HFC , &H7F,
       Data &H30 , &H00 , &H30 , &H00 , &H20 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char L
       Data &HF0 , &H01 , &HF0 , &H04 , &HB0 , &H0E , &H90 , &H03 , &H10 , &H00 , &H60 , &H00 , &HBC , &H00 , &HF0 , &H7F,
       Data &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char M
       Data &H10 , &H00 , &H70 , &H00 , &H90 , &H06 , &H90 , &H07 , &H90 , &H05 , &H90 , &H08 , &H10 , &H18 , &HF0 , &H7F,
       Data &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char N
       Data &H90 , &H01 , &H30 , &H0E , &H40 , &H30 , &HC0 , &H27 , &HE0 , &H48 , &HA0 , &H4C , &HE0 , &H47 , &H00 , &H66,
       Data &H00 , &H3C , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char O
       Data &H10 , &H00 , &H10 , &H00 , &HF0 , &H1F , &HD0 , &H20 , &H90 , &H21 , &H90 , &H11 , &H10 , &H09 , &H10 , &H07,
       Data &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char P
       Data &H10 , &H00 , &HF0 , &H03 , &H70 , &H1C , &H90 , &H1E , &H90 , &H3B , &HD0 , &H39 , &H90 , &H2C , &H10 , &H47,
       Data &H10 , &H40 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char Q
       Data &H10 , &H00 , &HD0 , &H07 , &H10 , &H18 , &HF0 , &H11 , &H70 , &H22 , &H70 , &H22 , &HD0 , &H33 , &H90 , &H1E,
       Data &H90 , &H00 , &HD0 , &H3F , &H90 , &H41 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char R
       Data &H10 , &H00 , &H10 , &H01 , &H90 , &H03 , &HD0 , &H07 , &HD0 , &H04 , &HF0 , &H08 , &HF0 , &H3F , &H00 , &H06,
       Data &H00 , &H0C , &HFC , &H3F , &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char S
       Data &H80 , &H07 , &H80 , &H08 , &H00 , &H10 , &H80 , &H13 , &HE0 , &H17 , &H60 , &H17 , &H30 , &H10 , &H30 , &H10,
       Data &HE0 , &H7F , &HC0 , &H18 , &H40 , &H23 , &H20 , &H23 , &H20 , &H27 , &HC0 , &H1D , &H00 , &H00 , &H00 , &H00,       ' Code for char T
       Data &H13 , &H00 , &HF4 , &H1F , &H14 , &H3C , &H14 , &H20 , &H14 , &H30 , &H94 , &H1B , &H98 , &H0F , &H10 , &H07,
       Data &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char U
       Data &H10 , &H00 , &H10 , &H1E , &H17 , &H26 , &H1C , &H27 , &HF0 , &H23 , &HF0 , &H10 , &H90 , &H0F , &H10 , &H00,
       Data &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char V
       Data &H10 , &H00 , &HF0 , &H03 , &H10 , &H0E , &H10 , &H10 , &HF0 , &H23 , &H10 , &H26 , &H10 , &H23 , &H90 , &H31,
       Data &H10 , &H0F , &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char W
       Data &H10 , &H00 , &H10 , &H00 , &HF0 , &H3F , &H10 , &H20 , &H90 , &H33 , &H90 , &H1F , &H10 , &H07 , &H10 , &H00,
       Data &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char X
       Data &HE0 , &H01 , &H30 , &H02 , &H90 , &H03 , &H90 , &H03 , &H20 , &H00 , &H40 , &H00 , &HF8 , &H7F , &H10 , &H00,
       Data &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char Y
       Data &H10 , &H00 , &HF0 , &H00 , &H10 , &H07 , &H10 , &H08 , &H10 , &H10 , &H90 , &H23 , &HD0 , &H23 , &HD0 , &H23,
       Data &H90 , &H10 , &H10 , &H0F , &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char Z
       Data &HFE , &H7F , &H02 , &H00 , &H02 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char [
       Data &H00 , &H00 , &H10 , &H00 , &HF0 , &H7F , &H10 , &H40 , &H10 , &H00 , &HE0 , &H7F , &H00 , &H40 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char BackSlash
       Data &H02 , &H00 , &H02 , &H00 , &HFE , &H7F , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char ]
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char ^
       Data &HE0 , &H00 , &HF0 , &H06 , &HD0 , &H06 , &H10 , &H0F , &H90 , &H0F , &HE0 , &H19 , &H00 , &H30 , &HF8 , &H7F,
       Data &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char _
       Data &H10 , &H00 , &HF0 , &H07 , &H10 , &H0E , &H10 , &H07 , &H90 , &H03 , &H90 , &H01 , &HD0 , &H7F , &H90 , &H03,
       Data &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char `
       Data &H00 , &H02 , &H70 , &H07 , &HB0 , &H07 , &HB0 , &H0D , &HC0 , &H08 , &HE0 , &H18 , &HF0 , &H7F , &H10 , &H00,
       Data &H30 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char a
       Data &H10 , &H00 , &H10 , &H07 , &H90 , &H07 , &H90 , &H07 , &H90 , &H01 , &H10 , &H03 , &H10 , &H0E , &HF0 , &H7F,
       Data &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char b
       Data &HC0 , &H00 , &HE0 , &H00 , &HF0 , &H02 , &H10 , &H07 , &H90 , &H03 , &HF0 , &H01 , &HE0 , &H00 , &HF8 , &H01,
       Data &HF0 , &H7F , &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char c
       Data &H30 , &H00 , &H30 , &H02 , &H70 , &H0F , &HF0 , &H0F , &HD0 , &H0D , &H90 , &H18 , &H10 , &H38 , &HD0 , &H7F,
       Data &H50 , &H06 , &H50 , &H06 , &H90 , &H07 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char d
       Data &H10 , &H00 , &H10 , &H03 , &H90 , &H07 , &H90 , &H07 , &HD0 , &H05 , &HD0 , &H08 , &HD0 , &H18 , &HF0 , &H7F,
       Data &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char e
       Data &H50 , &H00 , &H90 , &H03 , &H10 , &H0C , &HD0 , &H19 , &HD0 , &H33 , &HD0 , &H23 , &H10 , &H23 , &H90 , &H23,
       Data &H90 , &H11 , &H10 , &H0F , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char f
       Data &H10 , &H00 , &H30 , &H00 , &H30 , &H0F , &H70 , &H0F , &HD0 , &H0F , &H10 , &H0F , &H10 , &H18 , &HF0 , &H7F,
       Data &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char g
       Data &H30 , &H00 , &H30 , &H02 , &H30 , &H07 , &HF0 , &H0D , &HD0 , &H0C , &H10 , &H18 , &H10 , &H38 , &HF0 , &H7F,
       Data &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char h
       Data &H10 , &H01 , &H10 , &H03 , &H90 , &H33 , &HD0 , &H35 , &HD0 , &H04 , &HF0 , &H18 , &HF0 , &H7F , &H10 , &H00,
       Data &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char i
       Data &H10 , &H00 , &H90 , &H07 , &HD0 , &H0E , &H50 , &H0E , &H50 , &H0E , &H90 , &H03 , &H50 , &H00 , &H50 , &H00,
       Data &HF0 , &H7F , &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char j
       Data &H10 , &H00 , &H90 , &H03 , &HF0 , &H03 , &HC0 , &H03 , &HE0 , &H03 , &HD0 , &H03 , &HB0 , &H03 , &H40 , &H00,
       Data &HFC , &H7F , &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char k
       Data &H30 , &H00 , &H70 , &H02 , &H70 , &H0F , &HF0 , &H0F , &HD0 , &H0D , &H90 , &H18 , &H10 , &H39 , &HF0 , &H7F,
       Data &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char l
       Data &H10 , &H00 , &H30 , &H06 , &H30 , &H0C , &H30 , &H0E , &HD0 , &H07 , &H90 , &H01 , &H90 , &H00 , &H10 , &H01,
       Data &HF0 , &H7F , &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char m
       Data &H10 , &H00 , &H10 , &H04 , &HD0 , &H0D , &HD0 , &H1D , &HF0 , &H1C , &H50 , &H1C , &H50 , &H36 , &H90 , &H63,
       Data &H10 , &H40 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char n
       Data &H10 , &H00 , &HF0 , &H03 , &H10 , &H0E , &H10 , &H18 , &HF0 , &H71 , &H10 , &H72 , &H10 , &H73 , &H90 , &H33,
       Data &H90 , &H19 , &H10 , &H0F , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char o
       Data &H10 , &H00 , &H10 , &H00 , &HF0 , &H1F , &H10 , &H60 , &H90 , &H73 , &H90 , &H5F , &H10 , &H0F , &H10 , &H00,
       Data &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char p
       Data &H30 , &H00 , &H30 , &H02 , &H30 , &H07 , &HF0 , &H6F , &HD0 , &H6C , &H10 , &H18 , &H10 , &H38 , &HF0 , &H7F,
       Data &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char q
       Data &HC0 , &H01 , &H60 , &H03 , &HF0 , &H06 , &H90 , &H04 , &H90 , &H0C , &H60 , &H0C , &H00 , &H58 , &H00 , &H70,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char r
       Data &HC0 , &H02 , &H60 , &H1D , &H20 , &H39 , &HA0 , &H31 , &HC0 , &H60 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char s
       Data &H00 , &H00 , &HC0 , &H38 , &H60 , &H4D , &H20 , &H45 , &HA0 , &H65 , &HC0 , &H38 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char t
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char u
       Data &H10 , &H00 , &H20 , &H00 , &HF8 , &H7F , &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char v
       Data &H10 , &H00 , &H1E , &H00 , &HF6 , &H7F , &H13 , &H00 , &H11 , &H00 , &H01 , &H00 , &H01 , &H00 , &H02 , &H00,
       Data &H02 , &H00 , &H04 , &H00 , &H08 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char w
       Data &H11 , &H00 , &H13 , &H00 , &H1E , &H00 , &HF8 , &H7F , &H10 , &H00 , &H10 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char x
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char y
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char z
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H06 , &HF8 , &H7F , &H04 , &H00 , &H04 , &H00 , &H04 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char {
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &HC0 , &H7F , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char |
       Data &H00 , &H00 , &H00 , &H00 , &H04 , &H00 , &H04 , &H00 , &H04 , &H00 , &HF8 , &H7F , &H00 , &H06 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char }
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char ~ 189 line+



       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00, ' Code for char
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00, ' Code for char
       Data &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00 , &H00,       ' Code for char 4 line
