Device = 16F876A
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_OFF, LVP_OFF, CPD_OFF, WRT_OFF, DEBUG_OFF, CP_ON
Xtal 8
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface 4 
Cls
On Interrupt GoTo update

Symbol TMR2IE = PIE1.1
Symbol TMR2IF = PIR1.1

ADCON1 = $84
T2CON = $26
PR2 = 250
TMR2IE = 1
INTCON = $C0

Symbol buzzer = PORTC.6
Symbol up_key = PORTB.1
Symbol set_key = PORTB.0
Symbol down_key = PORTC.7
Symbol tmp1_rly = PORTC.0
Symbol tmp2_rly = PORTC.1
Symbol hum1_rly = PORTC.2
Symbol hum2_rly = PORTC.3
Symbol tmr_rly1 = PORTC.4
Symbol tmr_rly2 = PORTC.5
Output buzzer : Input up_key
Input set_key : Input down_key
Output tmp1_rly : Output tmp2_rly
Output hum1_rly : Output hum2_rly
Output tmr_rly1 : Output tmr_rly2

Dim tmp1 As Word
Dim tmp2 As Word

Dim tmp1_alart_l As Byte
Dim tmp2_alart_l As Byte
Dim hum1_alart_l As Byte
Dim hum2_alart_l As Byte
Dim mm As Word
Dim ss As Byte

Dim cnt As Byte : cnt = 0
Dim t_flag As Byte 
Dim sec_f As Bit
Dim alarm_f As Bit

tmp1_alart_l = ERead 0
tmp2_alart_l = ERead 1
hum1_alart_l = ERead 2
hum2_alart_l = ERead 3
mm = ERead 4
ss = ERead 6
t_flag = ERead 7

tmr_rly1 = 1
tmr_rly2 = 0

Clear PORTC
DelayMS 1000

Include "DHT11.inc"

main:
  tmp1 = ADIn 0
  tmp1 = (tmp1 * 0.004887) * 100
  
  tmp2 = ADIn 1
  tmp2 = (tmp2 * 0.004887) * 100
  
  GoSub read_DHT11_1
  GoSub read_DHT11_2
  
  If tmp1 != tmp1_alart_l Then
    tmp1_rly = 1
    alarm_f = 1
  Else
    tmp1_rly = 0
    alarm_f = 0
  EndIf
  
  If alarm_f = 1 Then
    buzzer = 1
  Else
    buzzer = 0
  EndIf
  
  Print At 1,1, Dec3 tmp1, 223, "C" 
  Print At 2,1, Dec3 tmp2, 223, "C"
  
  Print At 1,7, Dec3 humidity1, "%" 
  Print At 1,13, Dec3 humidity2, "%"
  
  Print At 2,11, Dec3 mm, ":", Dec2 ss
  
  If set_key = 1 Then GoSub setup 
  
  If t_flag = 1 And sec_f = 1 Then
    If ss = 0 Then ss = 60 : Dec mm
    Dec ss
    sec_f = 0  
    If mm = 0 And ss = 0 Then
      mm = ERead 4
      ss = ERead 6
      tmr_rly1 = ~tmr_rly1
      tmr_rly2 = ~tmr_rly2
    EndIf
  EndIf 
GoTo main

setup:
  mm = ERead 4
  ss = ERead 6
  Cls
  DelayMS 1000
  
  Print At 1,1, "Timer setup:"
  While set_key = 0
    Print At 2,1, Dec3 mm, ":", Dec2 ss, "  MM"
    
    If up_key = 1 Then Inc mm
    If mm > 900 Then mm = 0
    If down_key = 1 Then Dec mm
    
    DelayMS 200
  Wend
  EWrite 4, [mm]
  DelayMS 500
  
  While set_key = 0
    Print At 2,1, Dec3 mm, ":", Dec2 ss, "  SS"
    
    If up_key = 1 Then Inc ss
    If ss > 59 Then ss = 0
    If down_key = 1 Then Dec ss
    
    DelayMS 200
  Wend
  EWrite 6, [ss]
  DelayMS 500
  
  While set_key = 0
    Print At 2,1, Dec3 mm, ":", Dec2 ss, "  SS"
    
    If t_flag = 1 Then 
      Print At 2,13, "ON "
    Else
      Print At 2,13, "OFF"
    EndIf
    
    If up_key = 1 Then
      If t_flag = 1 Then 
        t_flag = 0
      Else
        t_flag = 1
      EndIf  
    EndIf
    
    DelayMS 200
  Wend
  EWrite 7, [t_flag]
  DelayMS 500
  Cls
  
  Print At 1,1, "Temp 1 Setup:"
  While set_key = 0
    Print At 2,1, Dec3 tmp1_alart_l, 223, "C" 
    
    If up_key = 1 Then Inc tmp1_alart_l
    If tmp1_alart_l > 100 Then tmp1_alart_l = 0
    If down_key = 1 Then Dec tmp1_alart_l
    
    DelayMS 200
  Wend
  EWrite 0, [tmp1_alart_l]
  DelayMS 500
  
  Print At 1,1, "Temp 2 Setup:"
  While set_key = 0
    Print At 2,1, Dec3 tmp2_alart_l, 223, "C" 
    
    If up_key = 1 Then Inc tmp2_alart_l
    If tmp2_alart_l > 100 Then tmp2_alart_l = 0
    If down_key = 1 Then Dec tmp2_alart_l
    
    DelayMS 200
  Wend
  EWrite 1, [tmp2_alart_l]
  DelayMS 500
  Cls
  
  Print At 1,1, "Humidity1 Setup:"
  While set_key = 0
    Print At 2,1, Dec3 hum1_alart_l, "%" 
    
    If up_key = 1 Then Inc hum1_alart_l
    If hum1_alart_l > 100 Then hum1_alart_l = 0
    If down_key = 1 Then Dec hum1_alart_l
    
    DelayMS 200
  Wend
  EWrite 2, [hum1_alart_l]
  DelayMS 500
  
  Print At 1,1, "Humidity2 Setup:"
  While set_key = 0
    Print At 2,1, Dec3 hum2_alart_l, "%" 
    
    If up_key = 1 Then Inc hum2_alart_l
    If hum2_alart_l > 100 Then hum2_alart_l = 0
    If down_key = 1 Then Dec hum2_alart_l
    
    DelayMS 200
  Wend
  EWrite 3, [hum2_alart_l]
  DelayMS 500
  Cls
Return

Disable
update:
  If TMR2IF = 1 Then
    TMR2IF = 0
    If t_flag = 1 Then
      Inc cnt
      If cnt = 10 Then cnt = 0 : sec_f = 1
    EndIf
  EndIf
Enable
Resume  
