;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
Declare Hserial_Baud = 57600             '-|
Declare Hserial_RCSTA = %10010000        ' |
Declare Hserial_TXSTA = %00100100        ' | GSM interface with UART
Declare Hserial_Clear = On               '-|

Symbol rly_1 = PORTC.0
Symbol rly_2 = PORTC.1
Symbol rly_3 = PORTC.2
Symbol rly_4 = PORTC.3
Symbol led = PORTC.5
Symbol GSM_pwr = PORTB.6

Output rly_1 : Output rly_2 : Output GSM_pwr
Output rly_3 : Output rly_4 : Output led

Dim msg[2] As Byte  'SMS text receive buffer
Dim number[11] As Byte  'SMS number buffer
Dim admin[11] As Byte
Dim flag_1 As Bit
Dim flag_2 As Bit
Dim flag_3 As Bit
Dim flag_4 As Bit

Clear PORTB : Clear PORTC
GoSub GSM_init  'call gsm_init for setup gsm module

main: 'endless loop
 led = 1 : DelayMS 500 
 led = 0 : DelayMS 500
 led = 1 : DelayMS 500 
 led = 0 : DelayMS 500
 led = 1 : DelayMS 500 
 led = 0 : DelayMS 500
 
'----------------------------------------- 
 Str admin = "01755682294"  'admin number
'-----------------------------------------
 
 flag_1 = 1 : flag_2 = 1 : flag_3 = 1 : flag_4 = 1 
 
 While 1 = 1
  If flag_1 = 1 Then
    rly_1 = 1
  Else
    rly_1 = 0
  EndIf
  If flag_2 = 1 Then
    rly_2 = 1
  Else
    rly_2 = 0
  EndIf
  If flag_3 = 1 Then
    rly_3 = 1
  Else
    rly_3 = 0
  EndIf
  If flag_4 = 1 Then
    rly_4 = 1
  Else
    rly_4 = 0
  EndIf
  GoSub Receive_SMS
 Wend
GoTo main

GSM_init:
  led = 1
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init,[Wait("OK")]  'If OK found then continue
  led = 0
Return

Receive_SMS:
  Str number = "" 'clear number buffer
  Str msg = ""    'clear msg buffer
  HSerIn 1000, over, [Wait("+88"), Str number, Wait(13,10),Str msg]  'read SMS if received, and store number and msg
  If number[9] = admin[9] And number[10] = admin[10] Then     'check admin number
    If msg[0] = "L" And msg[1] = "1" Then flag_1 = ~flag_1   'toggle bit
    If msg[0] = "L" And msg[1] = "2" Then flag_2 = ~flag_2   'toggle bit
    If msg[0] = "L" And msg[1] = "3" Then flag_3 = ~flag_3   'toggle bit
    If msg[0] = "L" And msg[1] = "4" Then flag_4 = ~flag_4   'toggle bit
    led = 1 : DelayMS 500 : led = 0
  EndIf
over:
Return



