Device 16F676
Config INTRC_OSC_NOCLKOUT,WDT_OFF,PWRTE_ON,BODEN_OFF,CP_ON,CPD_ON,MCLRE_OFF

ANSEL = $01 : ADCON0 = $83
TRISC = $00 : PORTC = $00

Symbol delay_led = PORTC.0
Symbol low_led = PORTC.1
Symbol normal_led = PORTC.2
Symbol high_led = PORTC.3
Symbol relay = PORTC.4

Dim adc As Word
Dim delay As Word
Dim blink As Word

Dim LEDblink_delay As 1000 
Dim delayTime As 50
  
Dim low_value As 200
Dim high_value As 800
Dim low_TO_normal As 220
Dim high_TO_normal As 780

delay_loop:
normal_led = 0 : relay = 0
low_led = 0 : high_led = 0
For delay = 0 To delayTime
  For blink = 0 To LEDblink_delay  
   delay_led = 1
   DelayMS 1
   GoSub checkADC   'check if Low/high happen.
  Next blink
    For blink = 0 To LEDblink_delay 
   delay_led = 0
   DelayMS 1
   GoSub checkADC   'check if Low/high happen.
  Next blink
Next delay

normal_loop:
delay_led = 0
normal_led = 1 : relay = 1
low_led = 0 : high_led = 0
GoSub checkADC   'check if Low/high happen.
GoTo normal_loop

low_loop:
delay_led = 0
normal_led = 0 : relay = 0
low_led = 1 : high_led = 0
adc = ADIn 0
If adc >= low_TO_normal Then delay_loop
GoTo low_loop

high_loop:
delay_led = 0
normal_led = 0 : relay = 0
low_led = 0 : high_led = 1
adc = ADIn 0
If adc <= high_TO_normal Then delay_loop
GoTo high_loop

checkADC:
adc = ADIn 0
If adc <= low_value Then low_loop
If adc >= high_value Then high_loop
Return
