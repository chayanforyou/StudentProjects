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

Dim text[30] As Byte
Dim rec_number[11] As Byte
Dim Ctrl[2] As Byte
Ctrl[0] = 26 : Ctrl[1] = 13
Symbol GSM_OK = PORTC.5
Output GSM_OK : Clear GSM_OK

ADCON1 = 7
Input PORTA

Symbol F0 = PORTA.3
Symbol F1 = PORTA.2
Symbol F2 = PORTA.1
Symbol F3 = PORTA.0

Cls
GoSub GSM_init

main:
Str text = "10days over your child absent."
  If F3 == 0 And F2 == 0 And F1 == 0 And F0 == 1 Then   'id = 0
    Str rec_number = "01994171591"  
    GoSub Send_SMS
  EndIf
  If F3 == 0 And F2 == 0 And F1 == 1 And F0 == 0 Then    'id = 1
    Str rec_number = "01994171591"  
    GoSub Send_SMS
  EndIf
 If F3 == 0 And F2 == 0 And F1 == 1 And F0 == 1 Then    'id = 2
    Str rec_number = "01994171591"  
    GoSub Send_SMS
 EndIf
  If F3 == 0 And F2 == 1 And F1 == 0 And F0 == 0 Then      'id = 3
    Str rec_number = "01994171591"  
    GoSub Send_SMS
  EndIf
  If F3 == 0 And F2 == 1 And F1 == 0 And F0 == 1 Then     'id = 4
    Str rec_number = "01994171591"  
    GoSub Send_SMS
  EndIf
  If F3 == 0 And F2 == 1 And F1 == 1 And F0 == 0 Then     'id = 5
    Str rec_number = "01994171591"  
    GoSub Send_SMS
  EndIf
  If F3 == 0 And F2 == 1 And F1 == 1 And F0 == 1 Then     'id = 6
    Str rec_number = "01994171591"  
    GoSub Send_SMS
  EndIf
  If F3 == 1 And F2 == 0 And F1 == 0 And F0 == 0 Then      'id = 7
    Str rec_number = "01994171591"  
    GoSub Send_SMS
  EndIf
  If F3 == 1 And F2 == 0 And F1 == 0 And F0 == 1 Then       'id = 8
    Str rec_number = "01994171591"  
    GoSub Send_SMS
  EndIf
  If F3 == 1 And F2 == 0 And F1 == 1 And F0 == 0 Then       'id = 9
    Str rec_number = "01994171591"  
    GoSub Send_SMS
  EndIf
GoTo main

GSM_init:
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init,[Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  HSerOut ["AT + CMGF = 1", 13, 10]
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
  GSM_OK = 1
Return

Send_SMS:
  HSerOut ["AT + CMGF = 1", 13, 10]
  DelayMS 200
  HSerOut ["AT + CMGS = ",34,"+88", Str rec_number, 34,13,10]
  DelayMS 200
  HSerOut [Str text]
  DelayMS 200
  HSerOut [Str Ctrl, 10]
  DelayMS 5000
Return
  
  
  
