;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F690

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, MCLRE_ON, CP_ON, CPD_ON, BOREN_OFF, IESO_OFF, FCMEN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
ADCON0 = %10000001
ANSEL = %01110111
ANSELH = %00000111
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100000 
Declare Hserial_Clear = On

TRISC.5 = 0 : PORTC.5 = 0

Symbol LASER = PORTC.5
Dim CH[9] As Byte
 CH[0] = 0
 CH[1] = 1
 CH[2] = 2
 CH[3] = 4
 CH[4] = 5
 CH[5] = 6
 CH[6] = 10
 CH[7] = 8
 CH[8] = 9

Dim LDR[9] As Word
Dim LDR_TEMP[9] As Word
Dim x As Byte
Dim y As Byte
Dim rxd As Byte
Dim def As Byte : def = 30
Dim music As Byte

DelayMS 5000

connect_pc:
  HSerOut ["AT", 10]
  HSerIn 1000, connect_pc, [Wait("OK")]

CALIBRATION:
  For x = 0 To 3
    LASER = 1
    For y = 0 To 8
      LDR[y] = ADIn CH[y]
    Next
    DelayMS 1000
    
    LASER = 0
    For y = 0 To 8
      LDR_TEMP[y] = ADIn CH[y]
    Next
    DelayMS 1000   
  Next

MAIN:
  LASER = 1
  rxd = 0
  
  For x = 0 To 8
    LDR_TEMP[x] = ADIn CH[x]
    If LDR_TEMP[x] < LDR[x] Then rxd = x + 1
  Next
  
  SerOut PORTC.4, 16468, [Dec rxd] 
  
  SerIn PORTC.3, 16468, 200, over, [music] 
over: 
  music = music - 48 
  HSerOut [Dec rxd, 10, Dec music, 10] 
  DelayMS 150      
GoTo MAIN

