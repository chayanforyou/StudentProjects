;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal = 20
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4
Cls

Dim adc As Byte                     
Dim CO2 As Word

normal:
  Print At 1,1,"Please wait.." 
  Print At 2,1,"System working.."
  DelayMS 5000
  Cls
  DelayMS 1000

main:
  adc = ADIn 0
  CO2 = 280 + adc
  Print At 1,4, "CO2 value:"
  Print At 2,6, Dec CO2, " PPM  "
  DelayMS 150
GoTo main
