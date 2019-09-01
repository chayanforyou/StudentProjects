;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal = 8

Declare Rsout_Pin PORTC.4
Declare Rsout_Mode INVERTED
Declare Rsout_Pace 5
Declare Serial_Baud 2400
All_Digital = True
Output PORTC.4

Symbol sw1 = PORTC.0
Symbol sw2 = PORTC.1
Input sw1 : Input sw2
Clear PORTC

Dim dta As Byte
Dim flag As dta.0
Dim out1 As dta.1
Dim out2 As dta.2
dta = 0

main:
  flag = 1
  RSOut "Z", Dec dta, "A", 13
  If sw1 = 1 Then DelayMS 300 : out1 = ~out1
  If sw2 = 1 Then DelayMS 300 : out2 = ~out2
GoTo main
 
