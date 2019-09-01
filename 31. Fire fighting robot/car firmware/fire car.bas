;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 8
All_Digital = true
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface 4
Declare LCD_Lines 2

Symbol rx_0 = PORTA.0
Symbol rx_1 = PORTA.1
Symbol rx_2 = PORTA.2
Symbol rx_3 = PORTA.3
Input rx_0 : Input rx_1
Input rx_2 : Input rx_3

Symbol IR_path = PORTC.5
Symbol IR_fire = PORTC.6
Symbol motorL_2 = PORTC.0
Symbol motorL_1 = PORTC.1
Symbol motorR_2 = PORTC.2
Symbol motorR_1 = PORTC.3
Symbol motor_PWM = PORTC.7
Symbol pump = PORTB.0
Output motorL_1 : Output motorL_2
Output motorR_1 : Output motorR_2
Output motor_PWM : Output pump
Input IR_fire : Input IR_path

Dim speed As Word 
Dim smoke As Bit
Dim flame As Bit
Dim cmd As Byte
Clear
Cls

Main:
  speed = 10000
  GoSub RF_receive
  If smoke = 0 Then 
    Print At 1,1,"No Smoke"
  Else
    Print At 1,1,"-SMOKE!-"
    GoSub auto_bot
  EndIf
  If flame = 0 Then 
    Print At 2,1,"No Fire"
  Else
    Print At 2,1,"-FIRE!-"
    GoSub auto_bot
  EndIf
  
  Print At 1,10,"RF cmd:"
  If cmd = 0 Then 
    Print At 2,11,"NONE "
    motorL_1 = 0 : motorL_2 = 0
    motorR_1 = 0 : motorR_2 = 0
    pump = 0
  EndIf
  If cmd = 1 Then 
    Print At 2,11,"UP   "
    motorL_1 = 1 : motorL_2 = 0
    motorR_1 = 1 : motorR_2 = 0
    GoSub car_speed
  EndIf
  If cmd = 2 Then 
    Print At 2,11,"DOWN "
    motorL_1 = 0 : motorL_2 = 1
    motorR_1 = 0 : motorR_2 = 1
    GoSub car_speed
  EndIf
  If cmd = 3 Then 
    Print At 2,11,"LEFT "
    motorL_1 = 0 : motorL_2 = 0
    motorR_1 = 1 : motorR_2 = 0
    GoSub car_speed
  EndIf
  If cmd = 4 Then 
    Print At 2,11,"RIGHT"
    motorL_1 = 1 : motorL_2 = 0
    motorR_1 = 0 : motorR_2 = 0
    GoSub car_speed
  EndIf
  If cmd = 5 Then 
    Print At 2,11,"PUMP "
    pump = 1
   EndIf 
GoTo Main

auto_bot:
 speed = 5000
 While IR_path = 1
   motorL_1 = 1 : motorL_2 = 0
   motorR_1 = 0 : motorR_2 = 0
   GoSub car_speed
   GoSub RF_receive
 Wend
 speed = 10000
 DelayMS 1000
 While IR_fire = 1
   motorL_1 = 1 : motorL_2 = 0
   motorR_1 = 1 : motorR_2 = 0
   GoSub car_speed
   GoSub RF_receive
 Wend
 While IR_fire = 0
   motorL_1 = 0 : motorL_2 = 0
   motorR_1 = 0 : motorR_2 = 0
   pump = 1
   GoSub RF_receive
 Wend
 pump = 0
 While smoke = 1 Or flame = 1
   GoSub RF_receive
 Wend
GoTo auto_bot
 
 
 

RF_receive:
  cmd = 0
  If rx_0 = 0 And rx_1 = 1 Then
    If rx_2 = 1 Then 
      smoke = 1
    Else
      smoke = 0
    EndIf
    If rx_3 = 1 Then
      flame = 1
    Else
      flame = 0
    EndIf
  EndIf
  If rx_0 = 0 And rx_1 = 0 And rx_2 = 0 And rx_3 = 0 Then cmd = 0
  If rx_0 = 1 And rx_1 = 0 And rx_2 = 0 And rx_3 = 1 Then cmd = 1
  If rx_0 = 1 And rx_1 = 0 And rx_2 = 1 And rx_3 = 0 Then cmd = 2
  If rx_0 = 1 And rx_1 = 0 And rx_2 = 1 And rx_3 = 1 Then cmd = 3
  If rx_0 = 1 And rx_1 = 1 And rx_2 = 0 And rx_3 = 0 Then cmd = 4
  If rx_0 = 1 And rx_1 = 1 And rx_2 = 0 And rx_3 = 1 Then cmd = 5 
Return

car_speed:
  motor_PWM = 1
  DelayUS speed
  motor_PWM = 0
  DelayUS 20000 - speed
Return

