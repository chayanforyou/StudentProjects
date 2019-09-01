;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F676

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, MCLRE_ON, BOREN_OFF, CP_ON, CPD_ON

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal = 20
ANSEL = 0
Declare Sonyin_Pin = PORTC.0
Input PORTC.0
On Interrupt GoTo timer

Symbol TMR1IF = PIR1.0
Symbol TMR1IE = PIE1.0
Symbol Relay = PORTA.2
Symbol Led = PORTC.1
Output Relay : Output Led

Dim IR As Word
Dim cnt As Byte
Dim mask As Byte
Dim time As Word
Dim temp As Word  
Dim cmd As IR.LowByte
Dim system_flag As Bit
Dim pause_flag As Bit
Dim timer_flag As Bit
Clear 

start: 
T1CON = $31
TMR1IF = 0
TMR1H = $0B
TMR1L = $DC
TMR1IE = 1
INTCON = $C0
cnt = 0
temp = 0
timer_flag = 0 

While 1 = 1 
  GoSub check_IR                        
  If system_flag = 1 Then 
    GoSub duty 
  Else
    Relay = 0
    Led = 0
  EndIf
Wend

check_IR:
  cmd = 255
  IR = SonyIn      
  If cmd = 0 Then system_flag = 1 : DelayMS 500
  If cmd = 2 Then system_flag = 0 : DelayMS 500
  If cmd = 6 Then pause_flag = 1 : DelayMS 500
  If cmd = 8 Then pause_flag = 0 : DelayMS 500
  If cmd = 9 Then DelayMS 300 : GoSub reset_sys
Return  

duty:
  Led = 1

  time = 34                       
  Relay = 1
  GoSub delay
  
  time = 100                      
  Relay = 0
  GoSub delay
  
  time = 130                     
  Relay = 1
  GoSub delay
  
  time = 81                       
  Relay = 0
  GoSub delay
  
  time = 54                     
  Relay = 1
  GoSub delay
  
  time = 40                      
  Relay = 0
  GoSub delay
Return 

delay:
  mask = time * 0.242  'for mesuring time
  time = time - mask
  timer_flag = 1
  While temp != time
    GoSub check_IR 
    If system_flag = 0 Then Break
    If pause_flag = 1 Then GoSub hold
  Wend
  cnt = 0
  temp = 0
  timer_flag = 0
Return

reset_sys:
  Relay = 0
  cnt = 0
  temp = 0
  timer_flag = 0
  For cnt = 0 To 5
    Led = ~Led
    DelayMS 200
  Next
  cmd = 255
GoTo start
  

hold:
  Repeat
    timer_flag = 0
    Led = 1
    Relay = 0
    DelayMS 100
    Led = 0
    DelayMS 100
    GoSub check_IR
  Until pause_flag = 0
  Led = 1
Return

Disable
  timer:
    If TMR1IF = 1 Then
      TMR1IF = 0
      TMR1H = $0B
      TMR1L = $DC
      If timer_flag = 1 Then Inc cnt
      If cnt = 10 Then cnt = 0 : Inc temp      
    EndIf
  Enable
Resume




