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
Declare Hserial_Baud = 56700     
Declare Hserial_RCSTA = %10010000
Declare Hserial_TXSTA = %00100100
Declare Hserial_Clear = On

Symbol A = PORTC.0
Symbol B = PORTC.1
Symbol C = PORTC.2
Symbol buzzer = PORTC.4
Input A : Input B
Input C : Output buzzer
Clear PORTC

Dim vote_A As Byte 
Dim vote_B As Byte 
Dim vote_C As Byte
Dim pass[4] As Byte
Dim temp[4] As Byte
Dim cnt As Byte
Dim voted[100] As Byte

Include "FP_R305.inc"

main:
  GoSub FP_init : Cls
  Print At 1,1, "Please wait..."
  DelayMS 5000
  Cls 
  '-----------------------------------------------------
  pass[0] = 1 : pass[1] = 1 : pass[2] = 1 : pass[3] = 1   'password = 1111
  '-----------------------------------------------------
  vote_A = 0 : vote_B = 0 : vote_C = 0 : Clear voted
  ID_no = 0
  GoSub home
'--------------------------

standby:
  If A = 1 Then DelayMS 300 : GoSub add_people
  If B = 1 Then GoSub show_IDs
  If C = 1 Then DelayMS 300 : GoSub vote_mode
GoTo standby

add_people:
  GoSub check_pass
  Cls
  Print At 1,1, "ADD voter ID"
  Print At 2,1, "ID no: "
  While 1 = 1
    Print At 2,8, Dec2 ID_no
    If A = 1 Then DelayMS 300 : Inc ID_no
    If ID_no = 100 Then ID_no = 0
    If ID_no = 0 And B = 1 Then DelayMS 300 : ID_no = 99
    If B = 1 Then DelayMS 300 : Dec ID_no
    If C = 1 Then GoSub adding  
  Wend
adding:
  Cls
  Print At 1,1, "Put ur finger"
  GoSub FP_Enroll
  If FP_error = 1 Then
    GoSub got_error
  Else
    Cls
    Print At 1,1,"ID no: ", Dec2 ID_no, " ADDED."
    DelayMS 2000
    GoSub home
  EndIf
GoSub home

show_IDs:
  Cls
  Print At 1,1, "Total voter:"
  GoSub FP_total_ID
  If FP_error = 1 Then
    GoSub got_error
  Else
    While 1 = 1
      Print At 1,14, Dec2 IDs
      Print At 2,1, "C: Delete ALL ID"
      If C = 1 Then GoSub deleting
      If A = 1 Then DelayMS 300 : GoSub home
    Wend
  EndIf
Return

deleting:
  GoSub check_pass
  Cls
  Print At 1,1, "Deleting IDs.."
  DelayMS 1000
  GoSub FP_Delete_ALL
  If FP_error = 1 Then
    GoSub got_error
  Else
    Cls
    Print At 1,1, "All deleted."
    DelayMS 1000
    GoSub home
  EndIf
Return

vote_mode:
  Cls
  Print At 1,1, "Vote taking ON"
  Print At 2,1, "A:Vote  B:Result"
  While 1 = 1
    If A = 1 Then GoSub voting
    If B = 1 Then GoSub show_result
    If C = 1 Then DelayMS 300 : GoSub home
  Wend
  
voting:
  Cls
  Print At 1,1, "Put ur finger"
  GoSub FP_Search 
  If FP_error = 1 Then
    Print At 2,1, "ID not found."
    buzzer = 1
    DelayMS 2000
    buzzer = 0
    GoTo vote_mode
  ElseIf FP_error = 0 And voted[get_ID] = 0 Then
    Cls  
    voted[get_ID] = 1
    Print At 1,1, "Voter verified."
    DelayMS 2000
    Cls
    Print At 1,1, "A: Water lily"
    Print At 2,1, "B: Lotus C: Rose"
    While 1 = 1
      If A = 1 Then DelayMS 300 : Inc vote_A : Break 
      If B = 1 Then DelayMS 300 : Inc vote_B : Break
      If C = 1 Then DelayMS 300 : Inc vote_C : Break
    Wend
    Cls
    Print At 1,1, "Vote Successful."
    Print At 2,1, "Thanks.."
    DelayMS 2000
    GoTo vote_mode
  ElseIf FP_error = 0 And voted[get_ID] = 1 Then
    Cls
    Print At 1,1, "Already Voted."
    buzzer = 1
    DelayMS 2000
    buzzer = 0
    GoTo vote_mode
  EndIf
  
show_result:
  Cls
  While 1 = 1
    Print At 1,1, "A: ", Dec vote_A, "   "
    Print At 1,10, "B: ", Dec vote_B
    Print At 2,6, "C: ", Dec vote_C
    If C = 1 Then vote_A = 0 : vote_B = 0 : vote_C = 0 : Clear voted
    If A = 1 Then DelayMS 300 : GoTo vote_mode
   Wend
Return 

check_pass:
  Cls
  Clear temp
  Print At 1,1, "Enter password:"
  For cnt = 0 To 3
    Repeat 
      Print At 2,cnt+1, Dec temp[cnt]
      If A = 1 Then DelayMS 300 : Inc temp[cnt]
      If temp[cnt] > 9 Then temp[cnt] = 0
    Until B = 1
    If temp[cnt] != pass[cnt] Then Cls : GoSub got_error
    DelayMS 300
  Next
Return
  
got_error:
  Print At 2,1, "Error."
  buzzer = 1
  DelayMS 2000 
  buzzer = 0
  GoSub home
Return

home:
  Cls
  Print At 1,1, "FP voting system"
  Print At 2,1, "A:ADD      B:IDs"
GoTo standby
  

