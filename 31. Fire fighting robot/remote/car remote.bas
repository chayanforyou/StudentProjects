;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 8
All_Digital = true

Symbol TX_0 = PORTC.3
Symbol TX_1 = PORTC.2
Symbol TX_2 = PORTC.1
Symbol TX_3 = PORTC.0
Output TX_0 : Output TX_1
Output TX_2 : Output TX_3         

Symbol up_key = PORTB.4
Symbol down_key = PORTC.4
Symbol left_key = PORTB.1
Symbol right_key = PORTB.0
Symbol pump_key = PORTC.5
Input up_key : Input down_key
Input left_key : Input right_key
Input pump_key

main:
  If up_key = 1 Then    
    TX_0 = 1 : TX_1 = 0 : TX_2 = 0 : TX_3 = 1
  ElseIf down_key = 1 Then  
    TX_0 = 1 : TX_1 = 0 : TX_2 = 1 : TX_3 = 0
  ElseIf left_key = 1 Then  
    TX_0 = 1 : TX_1 = 0 : TX_2 = 1 : TX_3 = 1
  ElseIf right_key = 1 Then 
    TX_0 = 1 : TX_1 = 1 : TX_2 = 0 : TX_3 = 0
  ElseIf pump_key = 1 Then  
    TX_0 = 1 : TX_1 = 1 : TX_2 = 0 : TX_3 = 1
  Else 
    TX_0 = 0 : TX_1 = 0 : TX_2 = 0 : TX_3 = 0
  EndIf
  'DelayMS 100
GoTo main
