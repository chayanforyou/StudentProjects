Device = 16F876
Xtal = 20
ADCON1 = %10000000
Config HS_OSC,WDT_OFF,PWRTE_OFF,BODEN_OFF,_
       LVP_OFF,CP_ALL,CPD_ON,DEBUG_OFF '16f876A
On Interrupt GoTo ZeroCross
TRISB = $01 : PORTB = $00
TRISC = $01 : PORTC = $00 
Print 254,64,6,9,9,6,0,0,0,0

Declare LCD_DTPin PORTB.4
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare Hserial_Baud = 9600 
Declare Hserial_RCSTA = $90 
Declare Hserial_TXSTA = $20
Declare Hserial_Clear = On 

Symbol PIR = PORTC.0 : Input PIR
Symbol line1 = PORTC.2
Symbol line2 = PORTC.3 
Symbol SimTX = PORTC.4
Symbol SimRX = PORTC.5

Symbol GIE = INTCON.7
Symbol PEIE = INTCON.6
Symbol INTE = INTCON.4
Symbol INTF = INTCON.1
Symbol INTEDG = OPTION_REG.6

GIE = 1 : PEIE = 1 : INTE = 1 : INTF = 0 : INTEDG = 0

Dim flag As Bit : flag = 0
Dim fan_f As Bit : fan_f = 0
Dim Cnt As Byte
Dim nCnt As Byte
Dim To_cnt As Byte
Dim nTo_cnt As Byte
Dim adc As Word
Dim tempe As Byte
Dim ctrl[2] As Byte
ctrl[0] = 26
ctrl[1] = 13

Cls
line1 = 1 : line2 = 1
Print At 1,1, " Installizing.. "
DelayMS 6000

sys_Active:
line1 = 1 : line2 = 1 : fan_f = 0
Print At 1,1, "System Activated"
GoSub Temp_Show 
If PIR = 0 Then GoSub detected
GoTo sys_Active

Temp_Show:
adc = ADIn 0
tempe = (adc * 0.4887) - 3
Print At 2,1, "   Temp: ",Dec tempe
Print At 2,12,0,"C   "
Cnt = tempe / 3.5 : To_cnt = 10
Return

detected:
line1 = 0 : fan_f = 1
GoSub SMS
Print At 1,1, "Human Detected!!"
Repeat
 GoSub Temp_Show
 If fan_f = 1 Then GoSub FAN_regulation
Until PIR = 1                         
Return   

SMS:
Print At 1,1, "SMS Sending....."
Print At 2,1, "  To:", CStr SMSnumber
HSerOut ["AT+CMGF=1",13]
DelayMS 200
HSerOut ["AT + CMGS = ",34,"+88",CStr SMSnumber,34,13]
DelayMS 200
HSerOut ["Someone Entered into your Home. Temperature: ",_
         Dec tempe, " Degree Celsius", 13]
DelayMS 200
HSerOut [Str ctrl]
DelayMS 5000
Return

FAN_regulation:
  If flag = 1 Then
    If nCnt > 0 Then
     line2 = 1
     DelayUS 250
     line2 = 0
     Dec nCnt
    Else
     line2 = 1
    EndIf
    Dec nTo_cnt
    If nTo_cnt == 0 Then
     nTo_cnt = To_cnt
     nCnt = Cnt
    EndIf
  flag = 0
  EndIf
Return

SMSnumber: 
CData "01876683255",0

Disable
ZeroCross:
If INTF == 1 Then
 flag = 1
 INTF = 0
EndIf
Resume
Enable
