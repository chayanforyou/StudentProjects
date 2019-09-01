;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C73B

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20  
Declare Hserial_Baud = 9600
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100000 
Declare Hserial_Clear = On 

Symbol butt = PORTC.1 
Symbol relay = PORTC.2
Input butt : Output relay

Dim num[11] As Byte
Dim number[10] As Byte
Dim message[80] As Byte
Dim x As Byte

Dim lock[4] As Byte
Dim unlock[6] As Byte

Str lock = "LOCK"
Str unlock = "UNLOCK"  

Cls
Clear PORTC : High relay 

GSM_init:
  DelayMS 10000
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init, [Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CPBF=\"A\"", 13, 10]
  HSerIn [Wait("+88"), Str number]

While 1 = 1
  GoSub SMS_read 
  GoSub CALL_receive
  If butt = 0 Then GoSub CALL_contact
Wend

CALL_contact:
  HSerOut ["ATD+88",Str number, 13, 10]
  DelayMS 5000
Return

CALL_receive: 
  HSerIn 50, over1, [Wait("RING")]
  HSerOut ["ATA", 13, 10]
  HSerIn [Wait("OK")]
over1:
Return

SMS_read:
  x = 0
  Clear num
  Clear message
  HSerIn 500, over2, [Wait("+88"), Str num, Wait(13, 10)]
    While message[x - 1] != 13
      HSerIn [message[x]]
      Inc x
    Wend
  message[x - 1] = 0
  GoSub SMS_action
over2:
Return

SMS_action:
  For x = 0 To 3
    If message[x] != lock[x] Then Break
    Low relay
  Next 
  For x = 0 To 5
    If message[x] != unlock[x] Then Break
    High relay
  Next  
Return
