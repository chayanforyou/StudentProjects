Device = 16C72
Xtal 20
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF
Declare LCD_DTPin = PORTB.4 
Declare LCD_RSPin = PORTB.2
Declare LCD_ENPin = PORTB.3
Declare LCD_Interface = 4
Cls

All_Digital = true
TRISA = $FF

Symbol d0 = PORTA.2
Symbol d1 = PORTA.3
Symbol d2 = PORTA.1
Symbol d3 = PORTA.5

main:
  Print At 1,1, "Hello"
GoTo main

