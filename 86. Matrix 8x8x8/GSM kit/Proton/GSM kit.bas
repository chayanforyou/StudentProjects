;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F876

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_All, BOREN_OFF, LVP_OFF, CPD_ON, WRT_OFF, DEBUG_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100000 
Declare Hserial_Clear = On 

Dim number[11] As Byte
Dim checkpoint As Byte
Dim msg[80] As Byte
Dim rxd As Byte
Dim x As Byte

DelayMS 1000

checkpoint = 0 : x = 0

Gsm_init:
  HSerOut ["AT", 13, 10]
  HSerIn 1000, Gsm_init, [Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  DelayMS 500
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 500
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
  DelayMS 500
  HSerOut ["AT+CMGD=1,4", 13, 10]
  DelayMS 500
  Cls
  
main:
  GoSub RECEIVE_SMS
GoTo main
  
RECEIVE_SMS:
  rxd = HRSIn , {100, over}
  If rxd = "+" Then checkpoint = 1
  If rxd = "8" And checkpoint = 1 Then checkpoint = 2
  If rxd = "8" And checkpoint = 2 Then checkpoint = 3
  
  If rxd = 13 And checkpoint = 3 Then checkpoint = 4
  If rxd = 10 And checkpoint = 4 Then checkpoint = 5
  
  If rxd != 10 And checkpoint = 4 Then checkpoint = 6
  
  If checkpoint = 6 Then
    msg[x] = rxd
    Inc x
    If rxd = 13 Then
      msg[x - 1] = $FF
      checkpoint = 0
      x = 0
      HSerOut [Str msg]
    EndIf
  EndIf 

over: 
Return
  

