'****************************************************************
'*  Name    : Water level indicator.inc                         *
'*  Author  : Antor Ahmed                                       *
'*  Notice  : Copyright (c) 2016 Antor Ahmed                    *
'*          : All Rights Reserved                               *
'*  Date    : 27-Aug-16                                         *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 8
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100000 
Declare Hserial_Clear = On
All_Digital = true  

Dim text[20] As Byte
Dim number[11] As Byte
Dim dly As Word

Symbol led = PORTA.1
Symbol lvl_1 = PORTC.0
Symbol lvl_2 = PORTC.1
Symbol lvl_3 = PORTC.2
Symbol lvl_4 = PORTC.3
Symbol motor_L = PORTC.4  
Symbol motor_H = PORTC.5

Output led : Low led
TRISC = %10001111 : PORTC = 0

Clear : Cls
'------------------------------
Str number = "01720054584"     'change this number
'------------------------------
Print At 1,1, "Connecting GSM.."
GoSub GSM_init
Cls

main:
  motor_L = 0 : motor_H = 0
  GoSub title_lcd 
  If lvl_1 != 1 Then
   GoSub sending
   Str text = "Water level too LOW."
   GoSub Send_SMS : Cls
   GoSub motor
     While lvl_1 != 1
       motor_L = 0 : motor_H = 0
       GoSub title_lcd
       Print At 2,8,"Too LOW"
       If lvl_1 = 1 Then Break
       If lvl_2 != 1 Then
         GoSub sending
         Str text = "Water level LOW."
         GoSub Send_SMS : Cls
           While lvl_2 != 1
             GoSub title_lcd
             Print At 2,8,"LOW    "
             If lvl_2 = 1 Then Break
             If lvl_3 != 1 Then
               GoSub sending
               Str text = "Water level Middle."
               GoSub Send_SMS : Cls 
                 While lvl_3 != 1
                   GoSub title_lcd
                   Print At 2,8,"Middle "
                   If lvl_3 = 1 Then Break
                      If lvl_3 != 1 Then
                        GoSub sending
                        Str text = "Water level High."
                        GoSub Send_SMS : Cls
                          While lvl_4 != 1
                            GoSub title_lcd
                            Print At 2,8,"High   "
                            If lvl_4 = 1 Then Break
                          Wend
                      EndIf
                 Wend
             EndIf
           Wend
       EndIf
     Wend
  EndIf        
GoTo main

motor:
  Print At 1,1, "Water report SYS"
  For dly = 0 To 9
    Print At 2,1, "Motor: Clockwise"
    motor_L = 1 : motor_H = 0
    DelayMS 1000
  Next
  For dly = 0 To 9
    Print At 2,1, "Motor: Anti-Clk "
    motor_L = 0 : motor_H = 1
    DelayMS 1000
  Next
  Cls
Return
  

sending:
  Cls
  Clear text
  Print At 1,1, "Sending SMS..."
Return

title_lcd:
  Print At 1,1, "Water report SYS"
  Print At 2,1,"Level: "
  If lvl_1 = 1 And lvl_2 = 1 And lvl_3 = 1 And lvl_4 = 1 Then 
    Print At 2,8,"None   " 
  EndIf
Return

GSM_init:
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init,[Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  HSerOut ["AT+CMGF=1", 13, 10]
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
Return

Send_SMS:
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS="]
  DelayMS 200
  HSerOut [34, Str number, 34,13,10]
  DelayMS 200  
  HSerOut [Str text, $1A, 13, 10]
  DelayMS 5000
Return
