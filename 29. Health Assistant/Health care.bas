'****************************************************************
'  Name    : UNTITLED.BAS                                      
'  Author  : [select VIEW...EDITOR OPTIONS]                    
'  Notice  : Copyright (c) 2017 [select VIEW...EDITOR OPTIONS] 
'          : All Rights Reserved                               
'  Date    : 8/4/2017                                          
'  Version : 1.0                                               
'  Notes   :                                                   
'          :                                                   
'****************************************************************
Device = 16F73
Xtal 20
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF
Declare LCD_DTPin = PORTB.4 
Declare LCD_RSPin = PORTB.3
Declare LCD_ENPin = PORTB.2
Declare LCD_Interface = 4
Declare LCD_Lines = 2
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100000 
Declare Hserial_Clear = On  

ADCON1 =  $4
Symbol buzz PORTC.4
Symbol mode PORTC.0
Symbol up_h PORTC.1
Symbol up_t PORTC.2
Symbol up_f PORTC.3
Symbol down_f PORTA.2
Symbol down_t PORTA.4
Symbol down_h PORTA.5
Output buzz : Input mode
Input up_h : Input down_h
Input up_t : Input down_t
Input up_f : Input down_f

Dim force As Byte   
Dim temp As Byte    
Dim heart As Byte
Dim nforce As Byte   
Dim ntemp As Byte    
Dim nheart As Byte 
Clear

buzz = 0

auto:
  GoSub check_temp
  GoSub check_heart
  GoSub check_pressure
  GoSub warning
  
  Print At 1,1, "Pressure:", Dec force, " BPM  "
  Print At 2,1, Dec temp, 223, "F "
  Print At 2,9, Dec heart," mmHg  "
  HSerOut ["P ", Dec3 force, 13, 10]
  HSerOut ["T ", Dec3 temp, 13, 10]
  HSerOut ["H ", Dec3 heart, 13, 10]
  
  nheart = heart
  ntemp = temp
  nforce = force
  
  If mode = 1 Then 
    Cls
    Print At 1,1, "Manual..." 
    buzz = 1 
    DelayMS 300
    buzz = 0 
    GoSub manual
  EndIf 
GoTo auto

manual:
  Print At 1,1, "Pressure:", Dec nforce, " BPM  "
  Print At 2,1, Dec ntemp, 223, "F "
  Print At 2,9, Dec nheart," mmHg  "
  HSerOut ["P ", Dec3 nforce, 13, 10]
  HSerOut ["T ", Dec3 ntemp, 13, 10]
  HSerOut ["H ", Dec3 nheart, 13, 10]
  
  If up_f = 1 Then DelayMS 300 : Inc nforce
  If down_f = 1 Then DelayMS 300 : Dec nforce
  If nforce = 0 Then nforce = 1
  If up_t = 1 Then DelayMS 300 : Inc ntemp
  If down_t = 1 Then DelayMS 300 : Dec ntemp
  If ntemp < 50 Then ntemp = 50
  If ntemp > 120 Then ntemp = 120
  If up_h = 1 Then DelayMS 300 : Inc nheart
  If down_h = 1 Then DelayMS 300 : Dec nheart
  If nheart < 50 Then nheart = 50
  If nheart > 120 Then nheart = 120
  
  heart = nheart
  temp = ntemp
  force = nforce
  GoSub warning
  
  If mode = 1 Then 
    Cls 
    Print At 1,1, "Auto..."
    buzz = 1 
    DelayMS 300
    buzz = 0 
    GoSub auto
  EndIf
GoTo manual

check_temp:
  temp = ADIn 1
  'temp = (190 - temp) + 70
  temp = (130 - temp) + 75
  'If temp < 85 Then temp = 0
Return

check_heart:
  heart = ADIn 0
 
  heart = heart / 5
  If heart > 40 Then
    heart =  heart + 6
    DelayMS  1000
  Else
    heart = 0
  EndIf
Return

check_pressure:
  force = ADIn 3
  force = force / 2
Return

warning:
  If force > 80 Then GoSub Alarm
  If temp > 110 Then GoSub Alarm
  If heart > 60 Then Alarm
Return

Alarm:
  buzz = 1
  DelayMS 200
  buzz = 0
  DelayMS 500
Return
