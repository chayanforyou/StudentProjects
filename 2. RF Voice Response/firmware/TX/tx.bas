;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal = 8
Declare Rsout_Pin PORTC.4
Declare Rsout_Mode INVERTED
Declare Rsout_Pace 5
Declare Serial_Baud 2400

All_Digital = True
Low PORTC.4

Symbol butt1 = PORTC.0
Symbol butt2 = PORTC.1
Symbol butt3 = PORTC.2
Symbol butt4 = PORTC.3

Symbol light = PORTB.2
Symbol fan = PORTB.1
Symbol AC = PORTB.0
Symbol help = PORTC.7

TRISB = %00000111
TRISC = %11001111
PORTC = 0

Dim dta As Byte
Dim a As dta.0
Dim b As dta.1
Dim c As dta.2
Dim d As dta.3
Dim e As dta.4
Dim flag As Byte
Dim x As flag.0
Dim y As flag.1
Dim z As flag.2

dta = 0 : flag = 0
 
Main:
  If butt1 = 1 Then DelayMS 300 : a = ~a 
  If butt2 = 1 Then DelayMS 300 : b = ~b
  If butt3 = 1 Then DelayMS 300 : c = ~c 
  If butt4 = 1 Then DelayMS 300 : d = ~d 
  If help = 1 Then e = 1
  If help = 0 Then e = 0
  
  If light = 1 And x = 0 Then x =~ x : a = 1
  If light = 0 And x = 1 Then x =~ x : a = 0
  
  If fan = 1 And y = 0 Then y =~ y : b = 1
  If fan = 0 And y = 1 Then y =~ y : b = 0
  
  If AC = 1 And z = 0 Then z =~ z : c = 1
  If AC = 0 And z = 1 Then z =~ z : c = 0
  
  RSOut "Z", Dec dta, "A", 13
GoTo Main 



