;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal = 20
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000
Declare Hserial_TXSTA = %00100000
Declare Hserial_Clear = On
Cls

Dim MQ2 As Byte
Dim MQ6 As Byte
Dim MQ135 As Byte
Dim DUST As Byte

Symbol sound_in = PORTC.3
Symbol MQ2_in = PORTC.0
Symbol dust_in = PORTC.2

Input sound_in : Input MQ2_in : Input dust_in

'Check_PC:
'  Print At 1,1, "Waiting for PC.."
'  HSerOut ["AT", 10]
'  HSerIn 1000, Check_PC, [Wait("OK")]
'  Cls

main:
  MQ2 = ADIn 0
  DUST = ADIn 1
  MQ6 = ADIn 3
  MQ135 = ADIn 4
  'Print At 1,1,"MQ6:", Dec MQ6, " MQ135:", Dec MQ135,"   "
  Print At 1,1,"Smoke: ", Dec MQ2,"   "
  Print At 2,1,"Dust: ", Dec DUST, "   "
  If sound_in = 0 Then
    Print At 2,1, " Noise Detected "
    DelayMS 1000
  EndIf
  HSerOut [Dec sound_in, 13, 10]
  HSerOut [Dec DUST, 13, 10]
  HSerOut [Dec MQ2, 13, 10]
  HSerOut [Dec MQ6, 13, 10]
  HSerOut [Dec MQ135, 13, 10]
  DelayMS 500 
GoTo main
