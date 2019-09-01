;-------------------------------------------------------------------------------
;*** Added by Fuse Configurator ***
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;*** End of Fuse Configurator Settings ***
;-------------------------------------------------------------------------------
Xtal 20
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4
Declare LCD_Lines 4
Declare Hserial_Baud = 115200     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100100 
Declare Hserial_Clear = On  

Symbol buzz = PORTC.4
Symbol motor_1a = PORTB.1
Symbol motor_1b = PORTB.0
Symbol motor_2a = PORTC.5
Symbol motor_2b = PORTC.0
Symbol m_pwm = PORTC.1

Output motor_1a
Output motor_1b
Output motor_2a
Output motor_2b
Output m_pwm
Output buzz

Dim x_axis As Byte
Dim y_axis As Byte
Dim speed As Word
Dim heart As Byte
Dim temp As Byte
Dim x As Byte
Dim contact[11] As Byte
Dim sms_f As Bit
Clear

Str contact = "01994171591"  'change SMS number

Print $fe,$40,10,21,17,17,17,10,4,0
Print $fe,$48,4,10,10,14,14,31,31,14
Cls

speed = 10000
sms_f = 0

GSM_init:
  Print At 1,1, "Contacting GSM.."
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init,[Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
  DelayMS 1000
  Cls
  Print At 1,1, "GSM OK."
  DelayMS 1000
  Cls


main:
  motor_1a = 0 : motor_1b = 0
  motor_2a = 0 : motor_2b = 0
  
  GoSub read_sensor
  
  If sms_f = 1 And temp > 102 Then GoSub Send_SMS    'Adjust SMS sending
  If sms_f = 1 And heart > 58 Then GoSub Send_SMS    'Adjust SMS sending
  If heart < 58 Or temp < 100 Then sms_f = 1         'Back to normal
  

  Print At 1,1,0,": ",Dec3 heart,"  ",1,": ",Dec3 temp,"  "
  Print At 2,1,"X: ",Dec3 x_axis,"  Y: ", Dec3 y_axis,"  "
  DelayMS 100
 
  '-------------------- CHANGE IF NEEDED  -------------------
  If x_axis < 70 And y_axis < 130 Then GoSub up_left
  If x_axis < 50 And y_axis > 180 Then GoSub up_right
  If x_axis < 20 Then GoSub up
  If x_axis > 250 Then GoSub down
  If y_axis < 110 Then GoSub left
  If y_axis > 200 Then GoSub right
  '----------------------------------------------------------
GoTo main 

up_right:
  For x = 0 To 20
    motor_1a = 0 : motor_1b = 0
    motor_2a = 1 : motor_2b = 0
    GoSub car_speed
  Next

  While 1 = 1
    GoSub read_sensor
    If x_axis > 100 And y_axis > 140 Then GoSub main
    motor_1a = 1 : motor_1b = 0
    motor_2a = 1 : motor_2b = 0
    GoSub car_speed
  Wend
  

up_left:
  For x = 0 To 20
    motor_1a = 1 : motor_1b = 0
    motor_2a = 0 : motor_2b = 0
    GoSub car_speed
  Next

  While 1 = 1
    GoSub read_sensor
    If x_axis > 100 And y_axis < 170 Then GoSub main
    motor_1a = 1 : motor_1b = 0
    motor_2a = 1 : motor_2b = 0
    GoSub car_speed
  Wend


up:
  GoSub read_sensor
  If x_axis > 100 Then GoSub main
  
  motor_1a = 1 : motor_1b = 0
  motor_2a = 1 : motor_2b = 0
  GoSub car_speed
GoTo up

down:
  GoSub read_sensor
  If x_axis < 200 Then GoSub main
  
  motor_1a = 0 : motor_1b = 1
  motor_2a = 0 : motor_2b = 1
  GoSub car_speed
GoTo down

left:
  For x = 0 To 40
    motor_1a = 1 : motor_1b = 0
    motor_2a = 0 : motor_2b = 0
    GoSub car_speed
  Next

  While 1 = 1
    GoSub read_sensor
    If y_axis > 115 Then GoSub main
    motor_1a = 1 : motor_1b = 0
    motor_2a = 1 : motor_2b = 0
    GoSub car_speed
  Wend
  
right:
  For x = 0 To 40
    motor_1a = 0 : motor_1b = 0
    motor_2a = 1 : motor_2b = 0
    GoSub car_speed
  Next

  While 1 = 1
    GoSub read_sensor
    If y_axis < 215 Then GoSub main
    motor_1a = 1 : motor_1b = 0
    motor_2a = 1 : motor_2b = 0
    GoSub car_speed
  Wend

car_speed:
  m_pwm = 1
  DelayUS speed
  m_pwm = 0
  DelayUS 20000 - speed
Return

read_sensor:
  x_axis = ADIn 2
  y_axis = ADIn 3
  heart = ADIn 1               
  temp = ADIn 0                 
  temp = (190 - temp) + 70 
  heart = heart / 5
  If heart > 45 Then 
    heart = heart + 10 
    DelayMS 3000 
  Else 
    heart = 0
  EndIf           
Return

Send_SMS:
  sms_f = 0
  buzz = 1
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS="]
  DelayMS 200
  HSerOut [34, Str contact, 34,13,10]
  DelayMS 200  
  HSerOut ["Heart: ", Dec heart, 13, "Temp: ", Dec temp, $1A, 13, 10]
  DelayMS 5000
  buzz = 0
Return
