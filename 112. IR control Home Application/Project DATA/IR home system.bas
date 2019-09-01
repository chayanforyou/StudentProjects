Device = 16C72
Xtal = 10
Config HS_OSC,WDT_OFF,PWRTE_OFF,BODEN_OFF,CP_ALL
TRISB = $01 : TRISC = $00
PORTB = $00 : PORTC = $00
On Interrupt GoTo ZeroCross

Declare Sonyin_Pin = PORTC.4
Declare LCD_DTPin PORTB.4
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3

Symbol Fan = PORTC.0
Symbol TV = PORTC.1
Symbol L1 = PORTC.2
Symbol L2 = PORTC.3

Symbol GIE = INTCON.7
Symbol PEIE = INTCON.6
Symbol INTE = INTCON.4
Symbol INTF = INTCON.1
Symbol INTEDG = OPTION_REG.6

GIE = 1 : PEIE = 1 : INTE = 1 : INTF = 0 : INTEDG = 0

Dim flag As Bit : flag = 0
Dim fan_f As Bit : fan_f = 0
Dim SonyIn_Word As Word 
Dim Cmd As SonyIn_Word.LowByte
Dim SonySystem As SonyIn_Word.HighByte
Dim Cnt As Byte
Dim nCnt As Byte
Dim To_cnt As Byte
Dim nTo_cnt As Byte
Dim temp As Byte

nCnt = Cnt : nTo_cnt = To_cnt

Cls

Sys_OFF:
Fan = 1 : TV = 1 : L1 = 1 : L2 = 1 : fan_f = 0
Print At 1,1, "IRremote control"
Print At 2,1, " Sys_Dectivated "
DelayMS 500
 While 1 = 1
     Repeat
       SonyIn_Word = SonyIn 
     Until Cmd <> 255 
     If Cmd = 21 Then GoTo Sys_ON
 Wend
GoTo Sys_OFF

Sys_ON:
Cls : fan_f = 0
Print At 1,1, "Sys_Activating.."
Print At 2,1, "Please Wait...  "
DelayMS 500
 While 1 = 1
 GoSub Remote_check
   If Cmd = 21 Then GoTo Sys_OFF
   If Cmd = 56 Then GoSub TV_action
   If Cmd = 116 Then GoSub L1_action
   If Cmd = 117 Then GoSub L2_action
   If Cmd >= 0 And Cmd <= 8 Then GoSub Fan_speed
   If Cmd = 9 Then 
     Fan = 0
     fan_f = 0
   EndIf
 Wend
GoTo Sys_ON

TV_action:
TV =~ TV
DelayMS 200
Return

L1_action:
L1 =~ L1
DelayMS 200
Return

L2_action:
L2 =~ L2
DelayMS 200
Return

Fan_speed:
fan_f = 1
temp = Cmd + 2
Cnt = temp : To_cnt = 10
DelayMS 100
Return

Remote_check:
Repeat
  SonyIn_Word = SonyIn 
  If fan_f = 1 Then 
    GoSub FAN_regulation
    Print At 1,1, "Fan: ", Dec (Cnt * 10), "%  " 
  Else
    Fan = 0
    Print At 1,1, "Fan Off   "
  EndIf
  If TV = 1 Then
    Print At 1,11, "TV Off"
  Else
    Print At 1,11, "TV On "
  EndIf
  If L1 = 1 Then
    Print At 2,1, "L1 Off    "
  Else
    Print At 2,1, "L1 On     "
  EndIf
  If L2 = 1 Then
    Print At 2,11, "L2 Off"
  Else
    Print At 2,11, "L2 On "
  EndIf
Until Cmd <> 255 
Return

FAN_regulation:
  If flag = 1 Then
    If nCnt > 0 Then
     Fan = 0
     DelayUS 250
     Fan = 1
     Dec nCnt
    Else
     Fan = 0
    EndIf
    Dec nTo_cnt
    If nTo_cnt == 0 Then
     nTo_cnt = To_cnt
     nCnt = Cnt
    EndIf
  flag = 0
  EndIf
Return

Disable
ZeroCross:
If INTF == 1 Then
 flag = 1
 INTF = 0
EndIf
Resume
Enable
