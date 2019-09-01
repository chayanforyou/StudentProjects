;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4
Declare LCD_Lines 4
ADCON1 = $04

Symbol fire = PORTA.5
Symbol noise = PORTA.2
Symbol buzz = PORTC.4
Symbol color_S0 = PORTC.1
Symbol color_S1 = PORTC.0
Symbol color_S2 = PORTC.5
Symbol color_S3 = PORTC.2
Symbol color_out = PORTC.3
Symbol color_sw = PORTB.0
Input color_sw
Output color_S0 : Output color_S1
Output color_S2 : Output color_S3
Input color_out : Input noise
Output buzz : Input fire

Dim smoke As Byte
Dim RED As Byte
Dim BLUE As Byte
Dim GREEN As Byte
Dim freq As Word

Clear : Cls

color_S0 = 1
color_S1 = 0

Print $fe, $40, 0,17,10,4,10,17,0,0   '0
Print $fe, $48, 1,2,20,9,2,20,8,0     '1
Print $fe, $50, 1,3,5,9,9,11,27,24    'noise
Print $fe, $58, 4,4,10,10,17,17,17,14 'Fire
Print $fe, $60, 9,18,9,18,9,0,29,29   'Smoke


main:
  smoke = ADIn 0
  If color_sw = 1 Then 
    GoSub color_sense
  Else
    Print At 1,1, "Color: NONE "
  EndIf
  Print At 2,1, "Smoke: ", Dec3 smoke
  Print At 1,14, 3, ":"
  Print At 2,14, 2, ":"

  If fire = 0 Then
    Print At 1,16, 1
  Else
    Print At 1,16, 0
  EndIf
  If noise = 0 Then
    Print At 2,16, 1
  Else
    Print At 2,16, 0
  EndIf
  GoSub alarm
GoTo main

alarm:
  If smoke > 100 Then
    buzz = 1
    DelayMS 1000
    buzz = 0
  EndIf
  If noise = 0 Then
    buzz = 1
    DelayMS 1000
    buzz = 0
  EndIf
  If fire = 0 Then
    buzz = 1
    DelayMS 1000
    buzz = 0
  EndIf
Return

color_sense:
  color_S2 = 0
  color_S3 = 0
  freq = PulseIn color_out, Low
  GREEN = (freq * 255) / 50
  DelayMS 100
  color_S2 = 1
  color_S3 = 1
  freq = PulseIn color_out, Low
  RED = (freq * 255) / 50
  DelayMS 100
  color_S2 = 0
  color_S3 = 1
  freq = PulseIn color_out, Low
  BLUE = (freq * 255) / 50
  DelayMS 100
  
  If RED > BLUE And RED > GREEN Then Print At 1,1, "Color: RED  "
  If BLUE > RED And BLUE > GREEN Then Print At 1,1, "Color: BLUE "
  If GREEN > RED And GREEN > BLUE Then Print At 1,1, "Color: GREEN"
  DelayMS 1000
Return



