;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 8

Symbol TX_0 = PORTC.7
Symbol TX_1 = PORTC.6
Symbol TX_2 = PORTC.5
Symbol TX_3 = PORTC.4
Symbol flame = PORTC.1
Output TX_0 : Output TX_1 
Output TX_2 : Output TX_3
Input flame

Dim smoke As Byte 
Clear

Main: 
  TX_0 = 0
  TX_1 = 1    
  smoke = ADIn 0
  If smoke > 127 Then 
    TX_2 = 1
  Else
    TX_2 = 0
  EndIf
  If flame = 0 Then
    TX_3 = 1
  Else
    TX_3 = 0
  EndIf
GoTo Main

