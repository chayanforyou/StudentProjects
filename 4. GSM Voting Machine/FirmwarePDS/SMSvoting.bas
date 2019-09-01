'****************************************************************
'*  Name    : GSM_voting.inc                                    *
'*  Author  : Antor Ahmed                                       *
'*  Notice  : Copyright (c) 2016 Antor Ahmed                    *
'*          : All Rights Reserved                               *
'*  Date    : 27-Aug-16                                         *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C73B

'Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 8
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100000 
Declare Hserial_Clear = On  

Dim text[20] As Byte
Dim number[11] As Byte
Dim msg[6] As Byte
Dim flag As Bit
Dim smsflag1 As Bit 
Dim smsflag2 As Bit
Dim smsflag3 As Bit
Dim smsflag4 As Bit

Dim contact1[11] As Byte
Dim contact2[11] As Byte
Dim contact3[11] As Byte
Dim contact4[11] As Byte
Dim contact5[11] As Byte
Dim contact6[11] As Byte
Dim contact7[11] As Byte
Dim contact8[11] As Byte
Dim contact9[11] As Byte
Clear

'---------------------------Voter ID 1
Str contact1 = "01994171591" 
Str contact2 = "01946933355"
Str contact3 = "01875752347"
'---------------------------Voter ID 2
Str contact4 = "01833905966"
Str contact5 = "01833905966"
Str contact6 = "01833905966"
'---------------------------Voter ID 3
Str contact7 = "01833905966"
Str contact8 = "01833905966"
Str contact9 = "01833905966"

Symbol vote = PORTC.4
Input vote

Print $FE, 1
GoSub default
Print At 4,1,"Contacting GSM..."
GoSub GSM_init
Print At 4,1,"GSM Module connected"
DelayMS 1000

Dim a As Byte
Dim b As Byte 
Dim c As Byte 
Dim d As Byte 

flag = 0

main:
Cls
GoSub default
While flag = 0
  smsflag1 = 1 : smsflag2 = 1
  smsflag3 = 1 : smsflag4 = 1
  Print At 2,7, "OFF"
  Print At 2,18, "OFF"
  Print At 3,7, "OFF"
  Print At 3,18, "OFF"
  Print At 4,2,"Voting accept: OFF"
  If vote = 1 Then DelayMS 300 : flag =~ flag
Wend
a = 0 : b = 0 : c = 0 : d = 0
Cls
GoSub default
While flag = 1
  Print At 2,7, Dec a
  Print At 2,18, Dec b
  Print At 3,7, Dec c
  Print At 3,18, Dec d
  Print At 4,2,"Voting accept: ON"
  GoSub Receive_SMS
  If vote = 1 Then DelayMS 300 : flag =~ flag
Wend
GoTo main

check_vote:
If msg[5] = "A" Then 
  Inc a
  GoSub send_accepted
ElseIf msg[5] = "B" Then 
  Inc b
  GoSub send_accepted
ElseIf msg[5] = "C" Then 
  Inc c
  GoSub send_accepted
ElseIf msg[5] = "D" Then 
  Inc d
  GoSub send_accepted
Else
  Str text = "Wrong format SMS."
  GoSub Send_SMS
EndIf
Return

send_accepted:
  Str text = "Your vote accepted."
  GoSub Send_SMS
Return

already_voted:
  Str text = "You already voted."
  GoSub Send_SMS
Return


default:
 Print At 1,1," SMS Voting Machine "
 Print At 2,1,"Can_A:"
 Print At 2,12,"Can_B:"
 Print At 3,1,"Can_C:"
 Print At 3,12,"Can_D:"
Return

GSM_init:
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init,[Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  HSerOut ["AT+CMGF=1", 13, 10]
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
Return

Send_SMS:
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS="]
  DelayMS 200
  HSerOut [34, Str number, 34,13,10]
  DelayMS 200  
  HSerOut [Str text, $1A, 13, 10]
  DelayMS 5000
Return

Receive_SMS:
  Clear number : Clear msg
  HSerIn 1000, over, [Wait("+88"), Str number, Wait(13,10),Str msg]
   Select Case number[9]
     Case contact1[9], contact2[9], contact3[9]
       Select Case number[10]
         Case contact1[10], contact2[10], contact3[10]
           If smsflag1 = 1 Then 
             GoSub check_vote
             smsflag1 = 0
           Else
             GoSub already_voted
           EndIf
        EndSelect  
    EndSelect  
   Select Case number[9]
     Case contact4[9], contact5[9], contact6[9]
       Select Case number[10]
         Case contact4[10], contact5[10], contact6[10]
           If smsflag2 = 1 Then 
             GoSub check_vote
             smsflag2 = 0
           Else
             GoSub already_voted
           EndIf
        EndSelect  
    EndSelect 
    Select Case number[9]
     Case contact7[9], contact8[9], contact9[9]
       Select Case number[10]
         Case contact7[10], contact8[10], contact9[10]
           If smsflag3 = 1 Then 
             GoSub check_vote
             smsflag3 = 0
           Else
             GoSub already_voted
           EndIf
        EndSelect  
    EndSelect 
over:
Return



