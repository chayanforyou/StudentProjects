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
Declare Hserial_Baud = 115200     
Declare Hserial_RCSTA = %10010000
Declare Hserial_TXSTA = %00100100
Declare Hserial_Clear = On
All_Digital = true 

TRISA = %000111
TRISB.0 = 1
TRISC = %10111111

Dim vote_flag As Bit : vote_flag = 0
Dim voted As Bit
Dim new_ID As Byte
Dim can_vote[5] As Byte
Dim voted_flag1 As Bit
Dim voted_flag2 As Bit
Dim voted_flag3 As Bit
Dim voted_flag4 As Bit
Dim voted_flag5 As Bit

Dim Vote_A As Byte
Dim Vote_B As Byte
Dim Vote_C As Byte
Dim Vote_D As Byte
Dim Vote_E As Byte

Symbol can_A = PORTC.0
Symbol can_B = PORTC.1
Symbol can_C = PORTC.2
Symbol can_D = PORTC.3
Symbol can_E = PORTC.4
Symbol vote = PORTC.5
Symbol result = PORTB.0
Symbol ADD = PORTA.0
Symbol Change = PORTA.1
Symbol permission = PORTA.2
Symbol led = PORTA.5

'----------------------------FP_R305
  Dim RXD[20] As Byte
  Dim x As Byte
  Dim get_ID As Byte : get_ID = 0
  Dim ID_no As Byte : ID_no = 0
  Dim checksum As Byte 
  Dim FP_error As Bit
  Dim IDs As Byte : IDs = 0
'-----------------------------------

  Cls
  Print At 3,1,"  Please wait..."
  DelayMS 10000
  Cls

main:
  Clear
  Vote_A = 0 : Vote_B = 0
  Vote_C = 0 : Vote_D = 0
  Vote_E = 0
  GoSub default_lcd

start:
  If permission = 1 Then GoSub Delay_200 : vote_flag = ~vote_flag
  If vote_flag = 0 Then
    Print At 3,1,"Voting currently OFF"
    If vote = 1 Then GoSub Delay_200 : GoSub Menu
    If result = 1 Then GoSub Delay_200 : GoSub show_result
  Else
    Print At 3,1,"  Ready for Voting  "
    If vote = 1 Then GoSub Delay_200 : GoSub voting
  EndIf
  If ADD = 1 Then GoSub Delay_200 : GoSub ADD_ID
  If Change = 1 Then 
    GoSub Delay_200
    GoSub FP_total_ID
      If FP_error = 0 Then
        Cls
        Print At 3,1,"Total IDs: ", Dec (IDs / 2)
        GoSub Delay_2000
        GoSub default_lcd 
      Else
        Cls
        Print At 3,1,"Error."
        GoSub Delay_2000
        GoSub default_lcd 
      EndIf
  EndIf
GoTo start

show_result:
  Cls
  While 1 = 1
    Print At 1,1,"Vote Final Result"
    Print At 2,1,"Can_A: ",Dec Vote_A,"   Can_B: ",Dec Vote_B
    Print At 3,1,"Can_C: ",Dec Vote_C,"   Can_D: ",Dec Vote_D
    Print At 4,1,"Can_E: ",Dec Vote_E
    If result = 1 Then GoSub Delay_200 : GoSub default_lcd 
  Wend
   

voting:
  Cls 
  Print At 2,1,"Voting Allowed."
  
  While vote_flag = 1
    If permission = 1 Then GoSub Delay_200 : vote_flag = ~vote_flag
    Print At 3,1,"Press again for vote"
      While vote = 1
        Cls
        Print At 3,1,"Put Your Finger - 1"
        GoSub FP_Search
        If FP_error = 0 Then
          Cls
          If get_ID = 0 And voted_flag1 = 0 Then 
            GoSub sub3
              If FP_error = 0 And get_ID = 1 Then
                GoSub sub1 
              Else
                GoSub sub2
              EndIf
          ElseIf get_ID = 2 And voted_flag2 = 0 Then
            GoSub sub3
              If FP_error = 0 And get_ID = 3 Then
                GoSub sub1 
              Else
                GoSub sub2
              EndIf
          ElseIf get_ID = 4 And voted_flag3 = 0 Then 
            GoSub sub3
              If FP_error = 0 And get_ID = 5 Then
                GoSub sub1 
              Else
                GoSub sub2
              EndIf
          ElseIf get_ID = 6 And voted_flag4 = 0 Then 
            GoSub sub3
              If FP_error = 0 And get_ID = 7 Then
                GoSub sub1 
              Else
                GoSub sub2
              EndIf
          ElseIf get_ID = 8 And voted_flag5 = 0 Then 
            GoSub sub3
              If FP_error = 0 And get_ID = 9 Then
                GoSub sub1 
              Else
                GoSub sub2 
              EndIf
          Else           
            GoSub sub4
          EndIf
        Else
          Cls
          Print At 3,1,"Error."
          GoSub Delay_2000
          GoSub default_lcd
        EndIf 
      Wend
  Wend
  
sub1:
  Print At 3,1,"Press your Candidate"
  GoSub select_vote
  
sub2:
  led = 1
  Print At 3,1,"You r not registered"  
  GoSub Delay_2000
  led = 0
  GoSub default_lcd 
  
sub3:
  Print At 3,1,"Put Your Finger - 2"
  GoSub Delay_2000
  GoSub FP_Search
Return

sub4: 
  led = 1
  Print At 3,1,"You already voted."
  GoSub Delay_2000
  led = 0
  GoSub default_lcd  
  
select_vote:
  voted = 0
  Repeat
    If can_A = 1 Then 
      GoSub Delay_200 : Inc Vote_A : voted = 1
    ElseIf can_B = 1 Then 
      GoSub Delay_200 : Inc Vote_B : voted = 1
    ElseIf can_C = 1 Then 
      GoSub Delay_200 : Inc Vote_C : voted = 1
    ElseIf can_D = 1 Then 
      GoSub Delay_200 : Inc Vote_D : voted = 1
    ElseIf can_E = 1 Then 
      GoSub Delay_200 : Inc Vote_E : voted = 1
    EndIf
  Until voted = 1
  Cls
  Print At 3,1,"Vote Granted."  
  If get_ID = 1 Then voted_flag1 = 1  
  If get_ID = 3 Then voted_flag2 = 1  
  If get_ID = 5 Then voted_flag3 = 1 
  If get_ID = 7 Then voted_flag4 = 1
  If get_ID = 9 Then voted_flag5 = 1   
  GoSub Delay_2000
  GoSub default_lcd 

Menu:
 Cls
 Print At 2,1,"1. Delete All IDs??"
 Print At 3,1,"2. Delete All Vote?"
 While 1 = 1
    If vote = 1 Then GoSub Delay_200 : GoSub default_lcd
    If result = 1 Then 
      GoSub Delay_200
      Clear
      Vote_A = 0 : Vote_B = 0
      Vote_C = 0 : Vote_D = 0
      Vote_E = 0 

      Print At 3,1,"All Vote cleared."
      GoSub default_lcd
    EndIf
    If permission = 1 Then 
      led = 1
      GoSub Delay_200
      led = 0
      GoSub FP_Delete_ALL
      If FP_error = 0 Then
        Cls
        Print At 3,1,"All Deleted."
        led = 1
        GoSub Delay_2000
        led = 0
        GoSub default_lcd 
      Else
        Cls
        Print At 3,1,"Error."
        GoSub Delay_2000
        GoSub default_lcd
      EndIf 
    EndIf 
 Wend

ADD_ID:
  Cls
  Print At 2,1,"Enter ID #:"
  ID_no = 100
Repeat
  If can_A = 1 Then 
    GoSub Delay_200 : ID_no = 0 : new_ID = 1
  ElseIf can_B = 1 Then
    GoSub Delay_200 : ID_no = 2 : new_ID = 2
  ElseIf can_C = 1 Then
    GoSub Delay_200 : ID_no = 4 : new_ID = 3
  ElseIf can_D = 1 Then
    GoSub Delay_200 : ID_no = 6 : new_ID = 4
  ElseIf can_E = 1 Then
    GoSub Delay_200 : ID_no = 8 : new_ID = 5
  EndIf
  If Change = 1 Then GoSub Delay_200 : GoSub default_lcd
Until ID_no < 10
  Print At 2,1,"Adding ID # ", Dec new_ID
  Print At 3,1,"Put Your Finger 1."
  GoSub FP_Enroll
  If FP_error = 1 Then
    GoSub ErrorFP
    Return
  Else
    Print At 3,1,"ID # 0",Dec new_ID, " Added. F-1"
    GoSub Delay_2000
  EndIf
  Print At 3,1,"Put Your Finger 2."
  ID_no = ID_no + 1
  GoSub FP_Enroll
  If FP_error = 1 Then
    GoSub ErrorFP
  Else
    Print At 3,1,"ID # 0",Dec new_ID, " Added. F-2" 
    GoSub Delay_2000
    GoSub default_lcd
  EndIf
Return

ErrorFP:
   Print At 3,1,"Something Wrong..." 
   led = 1
   GoSub Delay_2000
   led = 0
  Clear
@ clrf PCLATH
@ Goto 0


default_lcd:
 Print $fe, 1
 Print At 1,1," FP. Voting Machine "
 Print At 2,1,"Total Candidate: 005"
 Print At 4,1,"ADD    IDs    Voting"
GoTo start
  
Delay_200:
 DelayMS 200
Return 

Delay_2000:
 DelayMS 2000
Return 

FP_Enroll:
 FP_error = 0
    HSerOut [$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
    HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
  If RXD[9] != 0 Then FP_Enroll
    HSerOut [$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $01 , $00 , $08]
    HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
  If RXD[9] != 0 Then FP_error = 1 : Return
Recheck:
    HSerOut [$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
    HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
  If RXD[9] != 0 Then Recheck
    HSerOut [$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $02 , $00 , $09]
    HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
  If RXD[9] != 0 Then FP_error = 1 : Return
    HSerOut [$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $05 , $00 , $09]
    HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
  If RXD[9] != 0 Then FP_error = 1 : Return
  checksum = 15 + ID_no
    HSerOut [$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $06 , $06 , $02 , $00, ID_no, $00, checksum]
    HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
  If RXD[9] != 0 Then FP_error = 1 : Return
Return

FP_Search:
FP_error = 0
    HSerOut [$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
    HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
  If RXD[9] != 0 Then FP_Search
    HSerOut [$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $01 , $00 , $08]
    HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
  If RXD[9] != 0 Then FP_error = 1 : Return
    HSerOut [$ef, $01, $ff, $ff, $ff, $ff, $01, $00, $08, $1b, $01, $00, $00, $03, $e9, $01, $11]
    HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11],RXD[12],RXD[13],RXD[14],RXD[15]]
  If RXD[9] != 0 Then FP_error = 1 : Return
  get_ID = RXD[11]
Return

FP_Delete_ID:
FP_error = 0
  checksum = 21 + ID_no
   HSerOut [$ef, $01, $ff, $ff, $ff, $ff, $01, $00, $07, $0c, $00, ID_no, $00, $01, $00, checksum]
   HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
  If RXD[9] != 0 Then FP_error = 1 : Return
Return

FP_Delete_ALL:
FP_error = 0
   HSerOut [$ef, $01, $ff, $ff, $ff, $ff, $01, $00, $03, $0d, $00, $11]
   HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
  If RXD[9] != 0 Then FP_error = 1 : Return
Return

FP_total_ID:
FP_error = 0
   HSerOut [$ef, $01, $ff, $ff, $ff, $ff, $01, $00, $03, $1d, $00, $21]
   HSerIn [RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11],RXD[12],RXD[13]]
  If RXD[9] != 0 Then FP_error = 1 : Return
  IDs = RXD[11]
Return


  
  
  
  
