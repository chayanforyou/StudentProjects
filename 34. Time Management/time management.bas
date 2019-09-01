;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C73B

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface 4
Declare Hserial_Baud = 115200     
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100100 
Declare Hserial_Clear = On 
Cls

ADCON1 = 7
TRISA = 0 : PORTA = 0

Symbol rly1 = PORTA.3
Symbol rly2 = PORTA.2
Symbol rly3 = PORTA.1
Symbol rly4 = PORTA.0

Dim x As Byte
Dim temp[3] As Byte
Dim second As Byte
Dim minute As Word
Dim a_sec_r2 As Word
Dim a_sec_r3 As Word
Dim a_sec_r4 As Word
Dim m_sec_r1 As Word
Dim m_sec_r2 As Word
Dim m_sec_r3 As Word
Dim m_sec_r4 As Word
Dim g_sec_r1 As Word
Dim g_sec_r2 As Word
Dim g_sec_r3 As Word
Dim g_sec_r4 As Word
Dim mode As Byte
Dim t_stop As Bit
Dim r1_done As Bit
Dim r2_done As Bit
Dim r3_done As Bit
Dim r4_done As Bit
Dim msg[20] As Byte
Clear

'----------------------------- AUTO MODE 
Dim a_r1_sec As 10
Dim a_r2_sec As 10
Dim a_r3_sec As 10
Dim a_r4_sec As 10
'------------------------------
a_sec_r2 = a_r2_sec + a_r1_sec
a_sec_r3 = a_r3_sec + a_sec_r2
a_sec_r4 = a_r4_sec + a_sec_r3

Print $fe, $48, 0,17,10,4,10,17,0,0   '0
Print $fe, $40, 1,2,20,9,2,20,8,0     '1

Gsm_init:
  Print At 1,1, "Waiting for GSM"
  DelayMS 10000
  Print At 2,1, "."
  HSerOut ["AT", 13, 10]
  HSerIn 1000, Gsm_init, [Wait("OK")]
  Print At 2,2, "."
  HSerOut ["ATE0", 13, 10]
  DelayMS 1000
  Print At 2,3, "."
  HSerOut ["AT+CSDH=1", 13, 10]
  DelayMS 1000
  Print At 2,4, "."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  Print At 2,4, "."
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
  DelayMS 1000
  Print At 2,5, "."
  HSerOut ["AT+CMGD=4", 13, 10]
  DelayMS 1000
  Print At 2,4, "."
  DelayMS 1000
  Cls

Include "keypad4x4.inc"

main:
  Print At 1,1,"Time Management."
  Print At 2,1, Dec2 minute, ":", Dec2 second  
  If second = 60 Then
    second = 0
    Inc minute
  EndIf
  If rly1 = 0 Then Print At 2,7, 1 : Else : Print At 2,7, 0
  If rly2 = 0 Then Print At 2,8, 1 : Else : Print At 2,8, 0
  If rly3 = 0 Then Print At 2,9, 1 : Else : Print At 2,9, 0
  If rly4 = 0 Then Print At 2,10, 1 : Else : Print At 2,10, 0
  If mode = 0 Then
    Print At 2,12, "AUTO "    
    If second = a_r1_sec Then rly1 = 0 : rly2 = 0 : rly3 = 0 : rly4 = 1
    If second = a_sec_r2 Then rly1 = 0 : rly2 = 0 : rly3 = 1 : rly4 = 1
    If second = a_sec_r3 Then rly1 = 0 : rly2 = 1 : rly3 = 1 : rly4 = 1
    If second = a_sec_r4 Then rly1 = 1 : rly2 = 1 : rly3 = 1 : rly4 = 1
    If second = 50 Then rly1 = 0 : rly2 = 0 : rly3 = 0 : rly4 = 0 : second = 0
  ElseIf mode = 1 Then 
    Print At 2,12, "Man. "
    If second = m_sec_r1 Then rly1 = 1
    If second = m_sec_r2 Then rly2 = 1
    If second = m_sec_r3 Then rly3 = 1 
    If second = m_sec_r4 Then 
      rly4 = 1
      DelayMS 2000
      rly1 = 0 : rly2 = 0 : rly3 = 0 : rly4 = 0 : second = 0
    EndIf
  ElseIf mode = 2 Then 
    Print At 2,12, "GSM. "
    If second = g_sec_r1 Then rly1 = 1 
    If second = g_sec_r2 Then rly2 = 1 
    If second = g_sec_r3 Then rly3 = 1 
    If second = g_sec_r4 Then 
      rly4 = 1
      DelayMS 2000
      rly1 = 0 : rly2 = 0 : rly3 = 0 : rly4 = 0 : second = 0
    EndIf
  EndIf
  GoSub capture_key
  If key_value = "A" Then 
    mode = 0
    rly1 = 0 : rly2 = 0 : rly3 = 0 : rly4 = 0
  EndIf                                             
  If key_value = "B" Then 
    mode = 1 
    rly1 = 0 : rly2 = 0 : rly3 = 0 : rly4 = 0
    GoSub manual_set
  EndIf
  If t_stop = 0 Then Inc second 
  GoSub Receive_SMS 
GoTo main

Receive_SMS:
  Clear msg
  HSerIn 1000, over, [Wait("+CMT"), Wait(13,10), Str msg]
  g_sec_r1 = (msg[2] - 48) * 100 + (msg[3] - 48) * 10 + (msg[4] - 48)
  g_sec_r2 = (msg[7] - 48) * 100 + (msg[8] - 48) * 10 + (msg[9] - 48)
  g_sec_r3 = (msg[12] - 48) * 100 + (msg[13] - 48) * 10 + (msg[14] - 48)
  g_sec_r4 = (msg[17] - 48) * 100 + (msg[18] - 48) * 10 + (msg[19] - 48)
  PORTA = $ff
  Cls
  Print At 1,1,"R1: ", Dec3 g_sec_r1, "  R2: ", Dec3 g_sec_r2
  Print At 2,1,"R3: ", Dec3 g_sec_r3, "  R4: ", Dec3 g_sec_r4
  DelayMS 2000
  Cls
  second = 0
  g_sec_r2 = g_sec_r2 + g_sec_r1
  g_sec_r3 = g_sec_r3 + g_sec_r2
  g_sec_r4 = g_sec_r4 + g_sec_r3
  mode = 2
  rly1 = 0 : rly2 = 0 : rly3 = 0 : rly4 = 0
over:
Return

manual_set:
  Cls
  Print At 1,1,"Manual Setup:"
  DelayMS 1000
  Print At 2,1,"Relay 1:"
  For x = 0 To 2
    GoSub read_key
    Print At 2,x+10, key_value
    temp[x] = key_value - 48
  Next
  m_sec_r1 = temp[0] * 100 + temp[1] * 10 + temp[2]
  Cls
  Print At 1,1,"Relay 1:", Dec3 m_sec_r1, "sec"
  Print At 2,1,"*:Confirm #:Back"
  While 1 = 1 
    GoSub capture_key
    If key_value = "*" Then GoSub setup2
    If key_value = "#" Then GoSub manual_set
    If key_value = "D" Then Cls : GoSub main  
  Wend
setup2:
  Cls
  Print At 1,1,"Manual Setup:"
  Print At 2,1,"Relay 2:"
  For x = 0 To 2
    GoSub read_key
    Print At 2,x+10, key_value
    temp[x] = key_value - 48
  Next
  m_sec_r2 = temp[0] * 100 + temp[1] * 10 + temp[2]
  Cls
  Print At 1,1,"Relay 2:", Dec3 m_sec_r2, "sec"
  Print At 2,1,"*:Confirm #:Back"
  While 1 = 1 
    GoSub capture_key
    If key_value = "*" Then GoSub setup3
    If key_value = "#" Then GoSub setup2
    If key_value = "D" Then Cls : GoSub main  
  Wend
setup3:
  Cls
  Print At 1,1,"Manual Setup:"
  Print At 2,1,"Relay 3:"
  For x = 0 To 2
    GoSub read_key
    Print At 2,x+10, key_value
    temp[x] = key_value - 48
  Next
  m_sec_r3 = temp[0] * 100 + temp[1] * 10 + temp[2]
  Cls
  Print At 1,1,"Relay 3:", Dec3 m_sec_r3, "sec"
  Print At 2,1,"*:Confirm #:Back"
  While 1 = 1 
    GoSub capture_key
    If key_value = "*" Then GoSub setup4
    If key_value = "#" Then GoSub setup3
    If key_value = "D" Then Cls : GoSub main  
  Wend
setup4:
  Cls
  Print At 1,1,"Manual Setup:"
  Print At 2,1,"Relay 4:"
  For x = 0 To 2
    GoSub read_key
    Print At 2,x+10, key_value
    temp[x] = key_value - 48
  Next
  m_sec_r4 = temp[0] * 100 + temp[1] * 10 + temp[2]
  Cls
  Print At 1,1,"Relay 4:", Dec3 m_sec_r4, "sec"
  Print At 2,1,"*:Confirm #:Back"
  While 1 = 1 
    GoSub capture_key
    If key_value = "*" Then GoSub done
    If key_value = "#" Then GoSub setup4
    If key_value = "D" Then Cls : GoSub main  
  Wend
done:
  Cls
  rly1 = 0 : rly2 = 0 : rly3 = 0 : rly4 = 0 : second = 0
  m_sec_r2 = m_sec_r2 + m_sec_r1
  m_sec_r3 = m_sec_r3 + m_sec_r2
  m_sec_r4 = m_sec_r4 + m_sec_r3
  Print At 2,1,"Done.."
  DelayMS 1000
  Cls
GoSub main 
