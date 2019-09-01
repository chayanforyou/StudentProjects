;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000
Declare Hserial_TXSTA = %00100000
Declare Hserial_Clear = On
Declare Rsin_Pin PORTB.0
Declare Rsin_Mode_INVERTED
Declare Serial_Baud 2400
Declare Rsin_Timeout 1000

Dim rec_number[11] As Byte
Symbol GSM_OK = PORTC.4
Output GSM_OK : Clear GSM_OK

TRISB = %00000001
Clear PORTB

Dim dta As Byte
Dim F0 As dta.0
Dim F1 As dta.1
Dim F2 As dta.2
Dim F3 As dta.3
dta = 0

Cls
GoSub GSM_init

main:
 RSIn {timeout}, Wait("Z"), Dec dta
  If F3 = 0 And F2 = 0 And F1 = 0 And F0 = 1 Then   'id = 0
    Str rec_number = "01708339608"  
    GoSub Send_SMS
  EndIf
  If F3 = 0 And F2 = 0 And F1 = 1 And F0 = 0 Then    'id = 1
    Str rec_number = "01708339608"  
    GoSub Send_SMS
  EndIf
 If F3 = 0 And F2 = 0 And F1 = 1 And F0 = 1 Then    'id = 2
    Str rec_number = "01708339608"  
    GoSub Send_SMS
 EndIf
  If F3 = 0 And F2 = 1 And F1 = 0 And F0 = 0 Then      'id = 3
    Str rec_number = "01708339608"  
    GoSub Send_SMS
  EndIf
  If F3 = 0 And F2 = 1 And F1 = 0 And F0 = 1 Then     'id = 4
    Str rec_number = "01708339608"  
    GoSub Send_SMS
  EndIf
  If F3 = 0 And F2 = 1 And F1 = 1 And F0 = 0 Then     'id = 5
    Str rec_number = "01708339608"  
    GoSub Send_SMS
  EndIf
  If F3 = 0 And F2 = 1 And F1 = 1 And F0 = 1 Then     'id = 6
    Str rec_number = "01708339608"  
    GoSub Send_SMS
  EndIf
  If F3 = 1 And F2 = 0 And F1 = 0 And F0 = 0 Then      'id = 7
    Str rec_number = "01708339608"  
    GoSub Send_SMS
  EndIf
  If F3 = 1 And F2 = 0 And F1 = 0 And F0 = 1 Then       'id = 8
    Str rec_number = "01708339608"  
    GoSub Send_SMS
  EndIf
  If F3 = 1 And F2 = 0 And F1 = 1 And F0 = 0 Then       'id = 9
    Str rec_number = "01708339608"  
    GoSub Send_SMS
  EndIf
timeout:
GoTo main

GSM_init:
  GSM_OK = 1
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init,[Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  HSerOut ["AT + CMGF = 1", 13, 10]
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
  GSM_OK = 0
Return

Send_SMS:
  GSM_OK = 1
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS=",34, Str rec_number, 34,13,10]
  DelayMS 200  
  HSerOut ["10days arrived your child not present in school.", $1A, 13, 10]
  DelayMS 5000
  GSM_OK = 0
Return
  
  
  
