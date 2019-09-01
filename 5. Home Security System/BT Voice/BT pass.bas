Device = 16F73
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF
Xtal = 10
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100000 
Declare Hserial_Clear = On  

Symbol v_active = PORTC.0
Symbol v_mode = PORTC.4
Symbol v_ok = PORTC.5
Output v_mode : Output v_ok
Input v_active

Dim pass[15] As Byte
Dim x As Byte

Str pass = ""

Clear

main:
  v_ok = 0 : v_mode = 0
  If v_active = 1 Then DelayMS 300 : GoSub voice_mode
GoTo main

voice_mode:
  v_mode = 1 
  For x = 0 To 30
    HSerIn 1000, timeout, [Wait("*"), Str pass]
timeout:
    If pass[0] = "O" And pass[8] = "r" Then
      v_ok = 1
      DelayMS 5000
      Str pass = ""
      GoTo main
    Else
      v_ok = 0
    EndIf
  Next
  Str pass = ""
Return

