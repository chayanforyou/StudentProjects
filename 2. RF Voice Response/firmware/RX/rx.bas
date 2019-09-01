;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C72
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal = 8 
Declare LCD_DTPin = PORTB.4
Declare LCD_RSPin = PORTB.2
Declare LCD_ENPin = PORTB.3
Declare LCD_Interface = 4        
Declare Rsin_Pin PORTC.5
Declare Rsin_Mode INVERTED
Declare Serial_Baud 2400
Declare Rsin_Timeout 1000

Symbol buzz = PORTC.4

TRISC = %00100000
PORTC = 0

Cls
Print At 1,1, "RF/Voice respons"
Print At 2,1, "Please wait.."
buzz = 0
DelayMS 2000
Cls

Dim dta As Byte
Dim a As dta.0
Dim b As dta.1
Dim c As dta.2
Dim d As dta.3
Dim e As dta.4
Clear dta
 
Main: 
  If a = 1 Then
    PORTC.0 = 1 
    Print At 1,1, "OUT1: 1"
  Else
    PORTC.0 = 0
    Print At 1,1, "OUT1: 0"
  EndIf  
  If b = 1 Then
    PORTC.1 = 1 
    Print At 2,1, "OUT2: 1"
  Else
    PORTC.1 = 0
    Print At 2,1, "OUT2: 0"
  EndIf
  If c = 1 Then
    PORTC.2 = 1 
    Print At 1,10, "OUT3: 1"
  Else
    PORTC.2 = 0
    Print At 1,10, "OUT3: 0"
  EndIf
  If d = 1 Then
    PORTC.3 = 1 
    Print At 2,10, "OUT4: 1"
  Else
    PORTC.3 = 0
    Print At 2,10, "OUT4: 0"
  EndIf
  If e = 1 Then
    PORTC.4 = 1 
    DelayMS 3000
    PORTC.4 = 0
    e = 0
  EndIf
  RSIn {Time_Out}, Wait("Z"), Dec dta
  DelayMS 300
Time_Out:
GoTo Main 
