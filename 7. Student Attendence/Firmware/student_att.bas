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
Declare Hserial_Baud = 57600    
Declare Hserial_RCSTA = %10010000
Declare Hserial_TXSTA = %00100100
Declare Hserial_Clear = On

ADCON1 = 7

Symbol ADD = PORTC.0
Symbol Change = PORTC.1
Symbol Check = PORTC.2
Symbol Day_over = PORTC.3
Symbol buzz = PORTC.4
Output buzz : Output PORTA
Input ADD : Input Change 
Input Check : Input Day_over

Dim ID As Byte
Dim ID_0 As Bit
Dim ID_1 As Bit
Dim ID_2 As Bit
Dim ID_3 As Bit
Dim ID_4 As Bit
Dim ID_5 As Bit
Dim ID_6 As Bit
Dim ID_7 As Bit
Dim ID_8 As Bit
Dim ID_9 As Bit
Dim prsnt[10] As Byte
Dim days As Byte
Dim delay As Byte

GoTo main

Include "FP_R305.inc"

main: 
  Clear
  buzz = 0
  PORTA = 0
  Cls
  Print At 2,1,"Please wait.."
  GoSub FP_init
  DelayMS 8500
  days = 1
  GoSub default_LCD
  
start:
  If ADD = 1 Then GoSub delay_200 : GoTo add_ID
  If Day_over = 1 Then 
    GoSub delay_200 
    Inc days
    GoSub clear_id 
    If days > 10 Then GoSub send_SMS 
  EndIf 
  Print At 1,15, Dec days, " "
  If Change = 1 Then GoSub delay_200 : GoTo Present
  If Check = 1 Then GoSub delay_200 : GoTo check_ID
GoTo start 

send_SMS:
  Cls
  days = 1
  Print At 1,1, "Sending SMS.."
  For ID = 0 To 9
    If prsnt[ID] = 0 Then
      Print At 2,1,"ID #:", Dec ID
      PORTA = $0F & (ID + 1)
      DelayMS 5500
    EndIf
  Next
  PORTA = 0
GoSub default_LCD 

clear_id:
  ID_0 = 0 : ID_1 = 0
  ID_2 = 0 : ID_3 = 0
  ID_4 = 0 : ID_5 = 0
  ID_6 = 0 : ID_7 = 0
  ID_8 = 0 : ID_9 = 0
Return

Present:
  Cls
  Print At 1,1,"Put your Finger."
  GoSub FP_Search
  If FP_error = 0 Then
    If get_ID = 0 And ID_0 = 0 Then
      GoSub Present_show
      ID_0 = 1
      GoSub delay_2000
      GoSub default_LCD
    ElseIf get_ID = 1 And ID_1 = 0 Then
      GoSub Present_show
      ID_1 = 1
      GoSub delay_2000
      GoSub default_LCD
    ElseIf get_ID = 2 And ID_2 = 0 Then
      GoSub Present_show
      ID_2 = 1
      GoSub delay_2000
      GoSub default_LCD
    ElseIf get_ID = 3 And ID_3 = 0 Then
      GoSub Present_show
      ID_3 = 1
      GoSub delay_2000
      GoSub default_LCD
    ElseIf get_ID = 4 And ID_4 = 0 Then
      GoSub Present_show
      ID_4 = 1
      GoSub delay_2000
      GoSub default_LCD
    ElseIf get_ID = 5 And ID_5 = 0 Then
      GoSub Present_show
      ID_5 = 1
      GoSub delay_2000
      GoSub default_LCD
    ElseIf get_ID = 6 And ID_6 = 0 Then
      GoSub Present_show
      ID_6 = 1
      GoSub delay_2000
      GoSub default_LCD
    ElseIf get_ID = 7 And ID_7 = 0 Then
      GoSub Present_show
      ID_7 = 1
      GoSub delay_2000
      GoSub default_LCD
    ElseIf get_ID = 8 And ID_8 = 0 Then
      GoSub Present_show
      ID_8 = 1
      GoSub delay_2000
      GoSub default_LCD
    ElseIf get_ID = 9 And ID_9 = 0 Then
      GoSub Present_show
      ID_9 = 1
      GoSub delay_2000
      GoSub default_LCD
    Else
      Cls
      buzz = 1
      Print At 1,1, "Already present."
      GoSub delay_2000
      buzz = 0
      GoSub default_LCD
    EndIf
  Else
    GoSub Error_FP
  EndIf
    
Present_show:
  Cls
  Print At 1,1,"ID #: ", Dec get_ID
  prsnt[get_ID] = prsnt[get_ID] + 1
Return

check_ID:
  Cls
  ID = 0
checking:
  Print At 1,1,"ID #: ", Dec ID, " "
  Print At 2,1,"Present #: ", Dec prsnt[ID], " "
  If Check = 1 Then 
    GoSub delay_200
    Inc ID
    If ID > 9 Then GoSub default_LCD
    GoTo checking
  EndIf
  If Change = 1 Then GoSub delay_200 : GoSub default_LCD
GoTo checking

add_ID:
  Cls
confirm:
  Print At 1,1,"ADD ID #: ", Dec ID
  Print At 2,1,"Confirm..?"
  If Change = 1 Then 
    GoSub delay_200
    Inc ID
    If ID > 9 Then ID = 0
    GoTo confirm
  EndIf
  If ADD = 1 Then GoSub delay_200 : GoSub default_LCD
  If Check = 1 Then GoSub delay_200 : GoTo Adding
GoTo confirm 
Adding:   
  Print At 2,1,"Put your Finger."
  ID_no = ID
  GoSub FP_Enroll
    If FP_error = 0 Then
      Cls
      Print At 1,1,"ADD ID #: ", Dec ID
      Print At 2,1,"Successfull."
    Else
      GoSub Error_FP
    EndIf
  GoSub delay_2000
GoSub default_LCD



Error_FP:
  Cls
  Print At 2,1,"Something Wrong."
  GoSub delay_2000
  GoSub default_LCD

delay_200:
  DelayMS 200
Return

delay_2000:
  DelayMS 2000
Return

default_LCD:
  Cls
  '----------------------------
  Print At 1,1,"S.A System D: "
  Print At 2,1,"ADD  Psnt  Check"
GoTo start
  
  
  
  
