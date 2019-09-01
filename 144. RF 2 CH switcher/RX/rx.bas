;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal = 8

All_Digital = True 
Declare Rsin_Pin PORTC.4
Declare Rsin_Mode INVERTED
Declare Serial_Baud 2400
Declare Rsin_Timeout 1000
Input PORTC.4

Symbol RLY1 = PORTC.0
Symbol RLY2 = PORTC.1
Symbol LED1 = PORTC.2
Symbol LED2 = PORTC.3
Output RLY1 : Output RLY2
Output LED1 : Output LED2
Clear PORTC

Dim dta As Byte
Dim flag As dta.0
Dim in1 As dta.1
Dim in2 As dta.2
dta = 0

main:
  RSIn {timeout}, Wait("Z"), Dec dta
timeout:
  If flag = 1 Then
    If in1 = 1 Then 
      RLY1 = 1 : LED1 = 1
    Else
      RLY1 = 0 : LED1 = 0
    EndIf
    If in2 = 1 Then 
      RLY2 = 1 : LED2 = 1
    Else
      RLY2 = 0 : LED2 = 0
    EndIf
  Else
    RLY1 = 0 : LED1 = 0
    RLY2 = 0 : LED2 = 0
  EndIf
GoTo main

 

