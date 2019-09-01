;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
ADCON1 = 7
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 

Symbol k1 = PORTC.0
Symbol k2 = PORTC.1
Symbol k3 = PORTC.2
Symbol k4 = PORTC.3
Symbol k5 = PORTC.4
Symbol k6 = PORTC.5
Symbol k7 = PORTC.6
Symbol k8 = PORTC.7
TRISC = $FF

Cls

Print $FE,$40,0,14,17,17,17,14,0,0
Print $FE,$48,0,14,31,31,31,14,0,0

Print At 1,1, "Music: "

Dim midi As Byte
Dim music_key As Byte
music_key = 1 : midi = 0

main:
   SerIn PORTA.1, 16468, 200, over, [midi] 
over:
   Select Case midi
     Case "0": Print At 2,4, 0, 0, 0, 0, 0, 0, 0, 0, 0 : Break
     Case "1": Print At 2,4, 1 : Break
     Case "2": Print At 2,5, 1 : Break
     Case "3": Print At 2,6, 1 : Break
     Case "4": Print At 2,7, 1 : Break
     Case "5": Print At 2,8, 1 : Break
     Case "6": Print At 2,9, 1 : Break
     Case "7": Print At 2,10, 1 : Break
     Case "8": Print At 2,11, 1 : Break
     Case "9": Print At 2,12, 1 : Break
   End Select

   If k1 = 1 Then music_key = 1 
   If k2 = 1 Then music_key = 2 
   If k3 = 1 Then music_key = 3 
   If k4 = 1 Then music_key = 4
   If k5 = 1 Then music_key = 5
   If k6 = 1 Then music_key = 6 
   If k7 = 1 Then music_key = 7 
   If k8 = 1 Then music_key = 8 
   
   SerOut PORTA.0, 16468, [Dec music_key]
   
   Select Case music_key
     Case 1: Print At 1,8, "Clap   " : Break
     Case 2: Print At 1,8, "Guiter " : Break
     Case 3: Print At 1,8, "Hats   " : Break
     Case 4: Print At 1,8, "Kick   " : Break
     Case 5: Print At 1,8, "Cussion" : Break
     Case 6: Print At 1,8, "Piano  " : Break
     Case 7: Print At 1,8, "Snare  " : Break
     Case 8: Print At 1,8, "Toms   " : Break
  End Select 
  
GoTo main

