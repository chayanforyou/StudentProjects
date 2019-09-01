Device = 16F73
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF
Xtal = 8
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100100 
Declare Hserial_Clear = On  
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface 4
Cls
On Interrupt GoTo ISR

Symbol INTE = INTCON.4
Symbol INTF = INTCON.1
Symbol INTEDG = OPTION_REG.6
Symbol GIE = OPTION_REG.7

INTF = 0 : INTE = 1 : INTEDG = 1 : GIE = 1

Dim zc As Bit
Dim bright As Word
Dim tmp As Byte
Dim txt[2] As Byte

Symbol light = PORTB.1
Symbol up_key = PORTC.2
Symbol down_key = PORTC.3
Output light : Input PORTB.0

bright = 5220 
Print At 1,1, "AC Cycle Control"
GoSub update

main:
  If up_key = 1 Or txt[0] = "D" Then 
    bright = bright + 100 : DelayMS 200
    If bright > 8500 Then bright = 8500
    GoSub update 
  EndIf
  If down_key = 1 Or txt[0] = "U" Then 
    bright = bright - 100 : DelayMS 200
    If bright < 2000 Then bright = 2000
    GoSub update 
  EndIf
  If txt[0] = "F" Then
    bright = 8500
    GoSub update 
  EndIf
  If txt[0] = "N" Then
    bright = 2000
    GoSub update 
  EndIf  
  
  Clear txt
  HSerIn 1, over, [Str txt]
over:
  If zc = 1 Then 
    DelayUS bright
    light = 1
    DelayUS 20
    light = 0
    zc = 0
  EndIf
GoTo main

update:
  tmp = 100 - ((bright / 65) - 30)
  Print At 2,1, "Bright: ", Dec3 tmp, "%" 
Return

Disable
ISR:
  If INTF = 1 Then
    INTF = 0
    zc = 1
  EndIf
Resume
Enable
