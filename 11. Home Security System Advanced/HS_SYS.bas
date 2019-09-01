Device = 16F877A
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_OFF, LVP_OFF, CPD_ON, WRT_OFF, DEBUG_OFF, CP_ON
Xtal 20
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
Declare Hserial_Baud = 56700     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100100 
Declare Hserial_Clear = On
All_Digital = On

Symbol A1 = PORTD.1
Symbol A2 = PORTD.2
Symbol B1 = PORTC.5
Input A1 : Input A2
Output B1

Symbol motor = PORTE.2
Symbol buzz = PORTD.3
Symbol LDR = PORTC.3
Symbol PIR = PORTC.0
Symbol Smoke = PORTC.1
Symbol passMode = PORTD.0
Symbol vibrator = PORTD.7
Input PIR : Input Smoke
Output motor : Output buzz
Input passMode : Input vibrator
Input LDR

Dim check_point As Bit
Dim pos As Byte
Dim vib_count As Byte
Dim td As Byte
Dim rd As Byte
Dim BT_mode As rd.0
Dim BT_ok As rd.1
Clear : Cls

Dim password[8] As Byte
'------------------------
Str password = "@_ABC123"
'------------------------

Include "FP_R305.inc"

Cls
PORTA = 0 : PORTB = 0 : PORTC = 0 
PORTD = 0 : PORTE = 0
Print At 2,1, "Please wait.."
check_point = 0
GoSub gate_lock
DelayMS 10000
GoSub FP_init
GoTo Home

Include "keypad4x4.inc"

main:
  If LDR = 0 Then GoSub action
  If PIR = 0 Then GoSub action
  If Smoke = 1 Then GoSub action
  If vibrator = 1 Then Inc vib_count : DelayMS 200
  If vib_count = 5 Then vib_count = 0 : GoSub action
  If passMode = 0 Then GoSub pass_mode
'  If A1 = 1 And A2 = 1 Then 
'    GoSub door_active
'  ElseIf A1 = 1 Then 
'    GoSub voice_mode
'  EndIf
GoTo main

Home:
  Cls
  Print At 1,1, "HomeSecurity SYS"
  Print At 2,1, "Door Locked."
GoTo main

action:
  Cls
  Print At 1,1, "Sending SMS.."
  buzz = 1 : B1 = 1 
  DelayMS 2000
  buzz = 0 : B1 = 0
GoTo Home

pass_mode:
Cls
Print At 1,1, "Enter pass:"
  For pos = 0 To 7
    GoSub capture_key
    If key_value = "*" Then GoSub FP_mode
    If key_value = password[pos] Then
      Print At 2,pos+1, "*"
    Else
      Print At 2,1, "Wrong Password!"
      DelayMS 2000
      GoSub action
      GoTo Home
    EndIf
  Next
GoSub door_active
GoTo Home

FP_mode:
  get_ID = 0
  Print At 1,1, "Fingerprint mode"
  Print At 2,1, "A:New C:GO D:DLT"
  GoSub capture_key
  If key_value = "A" Then
    Cls
    Print At 1,1, "Enter pass:"
    For pos = 0 To 7
      GoSub capture_key
      If key_value = password[pos] Then
        Print At 2,pos+1, "*"
      Else
        Print At 2,1, "Wrong Password!"
        DelayMS 2000
        GoSub action
        GoTo Home
       EndIf
    Next
    ID_no = 2
    Cls
    Print At 1,1, "Put ur finger.."
    While 1 = 1
      GoSub FP_Enroll
      If FP_error = 1 Then 
        Print At 2,1, "Error."
        DelayMS 1000
        GoTo Home
      Else
        Print At 2,1, "ID Added."
        DelayMS 1000
        GoTo Home
      EndIf
    Wend
  EndIf 
  If key_value = "C" Then
    Cls
    Print At 1,1, "Put ur finger.." 
    While 1 = 1
      GoSub FP_Search
      If FP_error = 1 Then 
        Print At 2,1, "Error."
        DelayMS 1000
        GoTo Home
      Else
        If get_ID = 2 Then
          Print At 2,1, "ID Matched."
          DelayMS 1000
          GoSub door_active
        Else
          Print At 2,1, "ID not Matched."
          DelayMS 1000
          GoSub action
        EndIf
      EndIf
    Wend      
  EndIf
  If key_value = "D" Then
    Cls
    Print At 1,1, "Deleted."
    DelayMS 1000 
    GoSub FP_Delete_ALL
    GoTo Home
  EndIf
  If key_value = "B" Then GoSub Home
GoTo FP_mode
  
voice_mode:
  Cls
  Print At 1,1, "Voice Mode..."
  Print At 2,1, "Say password..."
  While A1 = 1
    If A2 = 1 Then GoSub door_active
  Wend
GoTo Home

door_active:
 Cls
 Print At 1,1, "Door Opened."
 GoSub gate_open
 Print At 1,1, "Lock in 10Sec"
 DelayMS 10000
 GoSub gate_lock
GoTo Home

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
  
