Device = 16F73
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF
Xtal = 20

Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100000 
Declare Hserial_Clear = On

Symbol GSM_in = PORTC.3
Symbol GSM_out = PORTC.2
Input GSM_in : Output GSM_out

Dim password[8] As Byte
'-------------------------
Str password = "@_ABC123"
'-------------------------

PORTC = 0
GoTo main
Include "GSM_init.inc"

main:
  GoSub GSM_init
'---------------------------
Str receiver = "01720054584"
'---------------------------
  
While 1 = 1
  If GSM_in = 0 Then GoSub Send_SMS
  GoSub Receive_SMS
Wend
