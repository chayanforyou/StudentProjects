Device = 16F73
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF
Xtal = 20
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100000 
Declare Hserial_Clear = On  
ADCON1 = 7

Symbol BT_sw = PORTA.2
Symbol A1 = PORTB.6
Symbol A2 = PORTB.7
Symbol B1 = PORTB.5
Symbol GSM_in = PORTC.5
Symbol GSM_out = PORTC.4
Input GSM_in : Output GSM_out
Output A1 : Output A2
Input BT_sw : Input B1
PORTB = 0 : PORTC = 0

Dim pass[9] As Byte
Dim time As Byte

main:
  A1 = 0 : A2 = 0
  If BT_sw = 0 Then A1 = 1 : GoSub get_voice
  If GSM_in = 0 Then A1 = 1 : A2 = 1 : DelayMS 2000 
  If B1 = 1 Then 
    GSM_out = 1
  Else
    GSM_out = 0
  EndIf 
GoTo main

get_voice:
  For time = 0 To 15
    HSerIn 1000, timeout, [Wait("*"), Str pass]
  timeout:
    If pass[0] = "O" And pass[8] = "r" Then 'Open door
      A2 = 1
      DelayMS 2000
      GoTo main
    EndIf
  Next
  A1 = 0 : A2 = 0
  Clear pass
Return

