;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal = 20
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface 4
Declare LCD_Lines 2

Symbol motor_a = PORTB.0
Symbol motor_b = PORTB.1
Symbol servo_m = PORTC.4
Symbol motor_pwm = PORTC.3
Symbol led = PORTC.5
Symbol butt = PORTC.2

Input butt : Output led
Output servo_m : Output motor_pwm
TRISB = 0 : PORTB = 0
PORTC = 0

Dim right As Dword 
Dim down As Dword
Dim up As Dword
Dim left As Dword
Dim n_right As Byte 
Dim n_down As Byte
Dim n_up As Byte 
Dim n_left As Byte  
Dim i As Byte 
Dim duty As Word
Dim duty_f As Bit
Dim auto_f As Bit 
Dim rotate As Byte
Dim rotate_f As Bit
Dim vertical As Word
Dim dir As Byte
Clear
led = 1
auto_f = 1
duty = 800
rotate = 0 
dir = 100
Cls
DelayMS 2000

calibration:
  For i = 0 To 50  'servo set to 90
    servo_m = 1
    DelayUS 1300
    servo_m = 0
    DelayUS 17000
  Next
  
  GoSub read_LDR
  n_right = right
  n_left = left
  n_up = up
  n_down = down
  

main:
  If butt = 1 Then 
    led = ~led 
    auto_f = ~auto_f 
    rotate = 0 : dir = 100
    DelayMS 300
    If auto_f = 0 Then duty = 800
    If auto_f = 1 Then GoTo calibration
  EndIf
  
  If auto_f = 1 Then
    GoSub read_LDR
    GoSub data_analize
    GoSub servo_rotation
    GoSub auto_dir
  Else
    GoSub mannual
  EndIf
  DelayMS 100
  
  Print At 1,1,"U: ", Dec3 up, "  D: ", Dec3 down 
  Print At 2,1,"L: ", Dec3 left, "  R: ", Dec3 right 
GoTo main

auto_dir:
  If down > 30 And right > 30 Then
    While dir != 100
      GoSub anti_clockwise
    Wend
  EndIf
  If down > 30 And left > 30 Then
    While dir != 107
      GoSub clockwise
    Wend
  EndIf
  If up > 30 And left > 30 Then
    While dir != 100
      GoSub anti_clockwise
    Wend
  EndIf
  If up > 30 And right > 30 Then
    While dir != 107
      GoSub clockwise
    Wend
  EndIf
Return

mannual:
  If duty > 2200 Then duty_f = 0      ' Change Max rotate
  If duty < 500 Then duty_f = 1       ' Change Min rotate
  If duty_f = 1 Then 
    duty = duty + 10 
  Else
    duty = duty - 10
  EndIf   
  GoSub servo_rotation
  
  If rotate > 60 Then rotate_f = 0
  If rotate = 0 Then rotate_f = 1
  If rotate_f = 1 Then
    Inc rotate
    GoSub clockwise
  Else
    Dec rotate
    GoSub anti_clockwise
  EndIf
Return

read_LDR:
  right = 255 - ADIn 2
  down = 255 - ADIn 0
  up = 255 - ADIn 3
  left = 255 - ADIn 1 
Return

data_analize:
  duty = 1300
  left = left - n_left
  If left < 0 Then left = 0
  right = right - n_right
  If right < 0 Then right = 0
  up = up - n_up
  If up < 0 Then up = 0
  down = down - n_down
  If down < 0 Then down = 0 
  
  If up > down Then 
    duty = duty - (up * 3)
  Else
    duty = duty + (down * 3)
  EndIf
Return

clockwise:
For i = 0 To 4
  motor_a = 0 : motor_b = 1 
  motor_pwm = 1
  DelayMS 5
  motor_pwm = 0
  DelayMS 15
Next
dir = dir + 1
Return

anti_clockwise:
For i = 0 To 4
  motor_a = 1 : motor_b = 0
  motor_pwm = 1
  DelayMS 5
  motor_pwm = 0
  DelayMS 15
Next
dir = dir - 1
Return

servo_rotation:  'MAX 1700-180, MIN 800-0
  For i = 0 To 50
    servo_m = 1
    DelayUS duty
    servo_m = 0
    DelayUS 20000 - duty
  Next
Return
