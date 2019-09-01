Device = 16F877A
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_OFF, LVP_OFF, CPD_OFF, WRT_OFF, DEBUG_OFF, CP_ON
Xtal 20
Declare Hserial_Baud = 9600
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100100 
Declare Hserial_Clear = On

Symbol butt_1 = PORTA.0
Symbol butt_2 = PORTA.1
Symbol butt_3 = PORTA.2
Symbol butt_4 = PORTA.3
Symbol butt_5 = PORTA.4
Symbol butt_6 = PORTA.5
Symbol butt_7 = PORTE.0
Symbol butt_8 = PORTE.1
Symbol butt_9 = PORTE.2
Symbol butt_10 = PORTC.0
Symbol butt_11 = PORTC.1
Symbol butt_12 = PORTC.2
Symbol butt_13 = PORTC.3
Symbol butt_14 = PORTD.0
Symbol butt_15 = PORTD.1
Symbol butt_16 = PORTD.2
Symbol butt_17 = PORTD.3
Symbol butt_18 = PORTC.4
Symbol butt_19 = PORTC.5
Symbol butt_20 = PORTD.4
Symbol butt_21 = PORTD.5
Symbol butt_22 = PORTD.6
Symbol butt_23 = PORTD.7
Symbol butt_24 = PORTB.0
Symbol butt_25 = PORTB.1
Symbol butt_26 = PORTB.2
Symbol butt_27 = PORTB.3
Symbol butt_28 = PORTB.4
Symbol butt_29 = PORTB.5
Symbol butt_30 = PORTB.6

ADCON1 = 7
TRISA = $ff
TRISB = $ff
TRISD = $ff
TRISC = $bf

Dim cmd As Byte
cmd = 0

DelayMS 2000
HSerOut ["0", 10]

main:
  If butt_1 = 1 Then HSerOut ["1", 10] : DelayMS 500
  If butt_2 = 1 Then HSerOut ["2", 10] : DelayMS 500
  If butt_3 = 1 Then HSerOut ["3", 10] : DelayMS 500
  If butt_4 = 1 Then HSerOut ["4", 10] : DelayMS 500
  If butt_5 = 1 Then HSerOut ["5", 10] : DelayMS 500
  If butt_6 = 1 Then HSerOut ["6", 10] : DelayMS 500
  If butt_7 = 1 Then HSerOut ["7", 10] : DelayMS 500
  If butt_8 = 1 Then HSerOut ["8", 10] : DelayMS 500
  If butt_9 = 1 Then HSerOut ["9", 10] : DelayMS 500
  If butt_10 = 1 Then HSerOut ["10", 10] : DelayMS 500
  If butt_11 = 1 Then HSerOut ["11", 10] : DelayMS 500
  If butt_12 = 1 Then HSerOut ["12", 10] : DelayMS 500
  If butt_13 = 1 Then HSerOut ["13", 10] : DelayMS 500
  If butt_14 = 1 Then HSerOut ["14", 10] : DelayMS 500
  If butt_15 = 1 Then HSerOut ["15", 10] : DelayMS 500
  If butt_16 = 1 Then HSerOut ["16", 10] : DelayMS 500
  If butt_17 = 1 Then HSerOut ["17", 10] : DelayMS 500
  If butt_18 = 1 Then HSerOut ["18", 10] : DelayMS 500
  If butt_19 = 1 Then HSerOut ["19", 10] : DelayMS 500
  If butt_20 = 1 Then HSerOut ["20", 10] : DelayMS 500
  If butt_21 = 1 Then HSerOut ["21", 10] : DelayMS 500
  If butt_22 = 1 Then HSerOut ["22", 10] : DelayMS 500
  If butt_23 = 1 Then HSerOut ["23", 10] : DelayMS 500
  If butt_24 = 1 Then HSerOut ["24", 10] : DelayMS 500
  If butt_25 = 1 Then HSerOut ["25", 10] : DelayMS 500
  If butt_26 = 1 Then HSerOut ["26", 10] : DelayMS 500
  If butt_27 = 1 Then HSerOut ["27", 10] : DelayMS 500
  If butt_28 = 1 Then HSerOut ["28", 10] : DelayMS 500
  If butt_29 = 1 Then HSerOut ["29", 10] : DelayMS 500
  If butt_30 = 1 Then HSerOut ["30", 10] : DelayMS 500
GoTo main





