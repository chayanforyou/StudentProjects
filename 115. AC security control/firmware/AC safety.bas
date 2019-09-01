Device = 16C72
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF
Xtal 8
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface 4 
Cls

Symbol Relay = PORTC.0
Symbol Buzz = PORTC.1
Symbol up = PORTC.2
Symbol down = PORTC.3
Input up : Input down
Output Relay : Output Buzz

Dim adc As Byte
Dim signal As Byte
Dim ac_volt As Byte
Dim time As Byte
Dim cnt As Byte
Clear

ac_volt = 220

Restart:
Cls
Relay = 0 : Buzz = 0
Print At 1,1, "Please wait.."
DelayMS 5000
Cls

main:
  Relay = 0 : Buzz = 0
  GoSub check_load
  If signal = 0 Then
    Print At 2,1, "  Load: ----  "
  Else
    Print At 2,1, "Load: ", Dec2 signal, " Watt "
  EndIf  
  If up = 1 Then Inc ac_volt
  If down = 1 Then Dec ac_volt
  If ac_volt >= 230 Then GoSub high_volt
  If ac_volt <= 190 Then GoSub low_volt
  If signal = 45 Then GoSub overload
GoTo main

high_volt: 
  Relay = 1
  GoSub check_load
  Print At 2,1, "-High Voltage-"
  If up = 1 Then Inc ac_volt
  If down = 1 Then Dec ac_volt
  If ac_volt < 230 Then GoSub Restart
  Buzz = ~Buzz
GoTo high_volt 

low_volt:
  Relay = 1
  GoSub check_load
  Print At 2,1, "-Low Voltage- "
  If up = 1 Then Inc ac_volt
  If down = 1 Then Dec ac_volt
  If ac_volt > 190 Then GoSub Restart
  Buzz = ~Buzz
GoTo low_volt

overload:
  Cls
  Print At 1,1, "!!OVER-LOAD!!"
  For cnt = 0 To 10
    Buzz = ~Buzz
    DelayMS 100
  Next
  Relay = 1
  Buzz = 0
  Print At 2,1, "press any key..."
  While 1 = 1
    If up = 1 Then GoSub Restart
    If down = 1 Then GoSub Restart
  Wend

check_load:
  Print At 1,1, "AC Volt: ",Dec3 ac_volt, "v"
  GoSub get_sense
Return

get_sense:
  adc = ADIn 0
  
  If adc > 160 Then signal = 0
  If adc >= 145 And adc <= 150 Then signal = 15
  If adc >= 130 And adc <= 140 Then signal = 30
  If adc < 125 Then signal = 45
  DelayMS 500
Return

