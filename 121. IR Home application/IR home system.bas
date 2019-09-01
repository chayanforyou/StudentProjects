;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F676

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, MCLRE_ON, BOREN_OFF, CP_ON, CPD_ON

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal = 8
All_Digital = On

TRISA = $00 : PORTA = $00
TRISC = $01 : PORTC = $00

Declare Sonyin_Pin = PORTC.0

Symbol OUT1 = PORTA.0
Symbol OUT2 = PORTA.1
Symbol OUT3 = PORTA.2
Symbol OUT4 = PORTC.1
Symbol OUT5 = PORTC.2
Symbol OUT6 = PORTC.3
Symbol OUT7 = PORTC.4
Symbol OUT8 = PORTC.5

Dim SonyIn_Word As Word 
Dim Cmd As SonyIn_Word.LowByte
Dim SonySystem As SonyIn_Word.HighByte


 While 1 = 1
   GoSub Remote_check
   If Cmd = 0 Then GoSub OUT1_action
   If Cmd = 1 Then GoSub OUT2_action
   If Cmd = 2 Then GoSub OUT3_action
   If Cmd = 3 Then GoSub OUT4_action
   If Cmd = 4 Then GoSub OUT5_action
   If Cmd = 5 Then GoSub OUT6_action
   If Cmd = 6 Then GoSub OUT7_action
   If Cmd = 7 Then GoSub OUT8_action
 Wend
 
Remote_check:
  Repeat
    SonyIn_Word = SonyIn
  Until Cmd <> 255
  DelayMS 500 
Return

OUT1_action:
  OUT1 =~ OUT1
  DelayMS 200
Return

OUT2_action:
  OUT2 =~ OUT2
  DelayMS 200
Return

OUT3_action:
  OUT3 =~ OUT3
  DelayMS 200
Return

OUT4_action:
  OUT4 =~ OUT4
  DelayMS 200
Return

OUT5_action:
  OUT5 =~ OUT5
  DelayMS 200
Return

OUT6_action:
  OUT6 =~ OUT6
  DelayMS 200
Return

OUT7_action:
  OUT7 =~ OUT7
  DelayMS 200
Return

OUT8_action:
  OUT8 =~ OUT8
  DelayMS 200
Return
