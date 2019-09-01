Device = 16F72
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF
Xtal = 20
ADCON1 = 7 

Symbol Motor1_L = PORTB.0
Symbol Motor1_R = PORTB.1
Symbol Motor2_L = PORTB.2
Symbol Motor2_R = PORTB.3
Symbol Motor3_L = PORTB.4
Symbol Motor3_R = PORTB.5
Symbol Motor4_L = PORTB.6
Symbol Motor4_R = PORTB.7
Symbol Motor5_L = PORTC.1
Symbol Motor5_R = PORTC.2

Symbol IR = PORTA.0

Symbol IR_mode = PORTC.3
Symbol open_key = PORTC.4
Symbol close_key = PORTC.5

Output PORTB
TRISC = %11111000
Input IR 

Dim x As Word  
Dim delay As Word

Dim flag As Bit
Dim flag2 As Bit
flag = 0
flag2 = 0

PORTB = 0 : PORTC = 0
DelayMS 2000

While 1 = 1

  If close_key = 1 And flag = 0 Then
    
    GoSub Motor1_close
    DelayMS 3000
    GoSub clear_all
    
    GoSub Motor2_close
    DelayMS 3000
    GoSub clear_all
    
    GoSub Motor3_close
    DelayMS 3000
    GoSub clear_all
    
    GoSub Motor4_close
    DelayMS 3200
    GoSub clear_all
    
    GoSub Motor5_close
    DelayMS 3000
    GoSub clear_all
    
    flag = 1
    
  EndIf
  
  If open_key = 1 And flag = 1 Then
    
    GoSub Motor5_open
    DelayMS 2800
    GoSub clear_all
    
    GoSub Motor4_open
    DelayMS 2800
    GoSub clear_all
    
    GoSub Motor3_open
    DelayMS 2800
    GoSub clear_all
    
    GoSub Motor2_open
    DelayMS 2800
    GoSub clear_all
    
    GoSub Motor1_open
    DelayMS 2500
    GoSub clear_all
    
    flag = 0
    flag2 = 0
    
  EndIf
  
  If open_key = 1 And flag2 = 1 Then
    
    GoSub Motor5_open
    DelayMS 2800
    GoSub clear_all
    
    GoSub Motor4_open
    DelayMS 2800
    GoSub clear_all
    
    GoSub Motor3_open
    DelayMS 2800
    GoSub clear_all
    
    GoSub Motor2_open
    DelayMS 2800
    GoSub clear_all
    
    GoSub Motor1_open
    DelayMS 2500
    GoSub clear_all
    
    flag2 = 0
    
  EndIf
  
  If IR_mode = 1 And flag2 = 0 Then
    If IR = 0 Then
      For x = 0 To 3000
        GoSub Motor5_close
        GoSub Motor4_close
        GoSub Motor3_close
        GoSub Motor2_close
        GoSub Motor1_close      
        DelayMS 1   
      Next
      GoSub clear_all
      flag2 = 1
    EndIf
  EndIf
    
Wend

clear_all:  'clear all 10 bits...
 PORTB = 0  '8 bit
 PORTC.1 = 0 : PORTC.2 = 0
Return

Motor1_close:
  Motor1_L = 1
  Motor1_R = 0
Return

Motor1_open:
  Motor1_L = 0
  Motor1_R = 1
Return

Motor2_close:
  Motor2_L = 1
  Motor2_R = 0
Return

Motor2_open:
  Motor2_L = 0
  Motor2_R = 1
Return

Motor3_close:
  Motor3_L = 1
  Motor3_R = 0
Return

Motor3_open:
  Motor3_L = 0
  Motor3_R = 1
Return

Motor4_close:
  Motor4_L = 1
  Motor4_R = 0
Return

Motor4_open:
  Motor4_L = 0
  Motor4_R = 1
Return

Motor5_close:
  Motor5_L = 1
  Motor5_R = 0
Return

Motor5_open:
  Motor5_L = 0
  Motor5_R = 1
Return
 

