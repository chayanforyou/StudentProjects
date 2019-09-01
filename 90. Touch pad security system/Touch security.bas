;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
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

Symbol pad_clk = PORTC.0
Symbol pad_dta = PORTC.1
Symbol motor = PORTC.2
Symbol buzz = PORTC.3
Output pad_clk : Input pad_dta
Output motor : Output buzz
Clear PORTC : High pad_clk

Dim pos As Byte
Dim x As Byte
Dim y As Byte
Dim t_key As Byte
Dim key As Byte
Dim password[4] As Byte
Dim checker[10] As Byte
Dim contact[11] As Byte
Dim matched As Bit
Clear : Cls

Str contact = "01715852205"  'change SMS number
Str password = "1234"  'change password

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
  
home:
  Print At 1,1, "IndustrySecurity"
  Print At 2,1, "Press >> to open"
  DelayMS 1000

main:
  GoSub get_key
  If key = "D" Then GoSub enter_pass
  DelayMS 300
GoTo main

enter_pass:
  Cls
  Print At 1,1, "enter password:"
  DelayMS 2000
  For y = 0 To 3
    key = 0
    While key = 0
      GoSub get_key
      If key = "D" Then GoSub home
      If key = "C" Then GoSub checking
    Wend
    checker[y] = key
    Print At 2, y+1, key
    DelayMS 500 
  Next
  Repeat
    GoSub get_key
  Until key = "C"
checking:
  For y = 0 To 3
    matched = 1
    If checker[y] != password[y] Then 
      matched = 0
      GoSub Send_SMS
    EndIf
  Next
  Cls
  Print At 1,1, "Password matched"
  Print At 2,1, "Gate unlocked."
  GoSub gate_open
  DelayMS 5000
  GoSub Send_SMS
Return

get_key:
  key = 0
  t_key = 0
  pad_clk = 1
  For x = 1 To 16
    pad_clk = 0 
    If pad_dta = 0 Then t_key = x 
    pad_clk = 1
  Next
  Select t_key
    Case 1 : key = "1" : Break
    Case 2 : key = "2" : Break
    Case 3 : key = "3" : Break
    Case 4 : key = "4" : Break
    Case 5 : key = "5" : Break
    Case 6 : key = "6" : Break
    Case 7 : key = "7" : Break
    Case 8 : key = "8" : Break
    Case 9 : key = "9" : Break
    Case 10 : key = "0" : Break
    Case 11 : key = "A" : Break
    Case 12 : key = "B" : Break
    Case 14 : key = "C" : Break
    Case 15 : key = "D" : Break
    Case Else : key = 0
  EndSelect
  DelayMS 100
Return

Send_SMS:
  Cls
  If matched = 0 Then buzz = 1
  Print At 1,1, "Sending SMS.."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS="]
  DelayMS 200
  HSerOut [34, Str contact, 34,13,10]
  DelayMS 200
  If matched = 1 Then  
    HSerOut ["Access granted.", $1A, 13, 10]
  Else
    HSerOut ["Someone trying to open the door.", $1A, 13, 10]
  EndIf
  DelayMS 5000
  buzz = 0
  GoSub gate_lock
  Cls
GoSub home

gate_lock:
  For pos = 0 To 50  '0 degree
     motor = 1
     DelayUS 800
     motor = 0
     DelayUS 19200
  Next
Return

gate_open:
  For pos = 0 To 50  '180 degree
     motor = 1
     DelayUS 2000
     motor = 0
     DelayUS 18000
  Next
Return

