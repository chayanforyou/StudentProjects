'****************************************************************
'*  Name    : GSM_init.inc                                       *
'*  Author  : Antor Ahmed                                       *
'*  Notice  : Copyright (c) 2016 Antor Ahmed                    *
'*          : All Rights Reserved                               *
'*  Date    : 27-Aug-16                                         *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************

GSM_init:
Dim receiver[11] As Byte
Dim number[11] As Byte
Dim msg[8] As Byte  
Dim ctrl[2] As Byte
Dim x As Byte
ctrl[0] = 26 : ctrl[1] = 13
Clear msg

  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init,[Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  HSerOut ["AT+CMGF=1", 13, 10]
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
Return

Send_SMS:
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS=",34, Str receiver, 34,13,10]
  DelayMS 200
  HSerOut ["Someone trying to enter your room."]
  DelayMS 200
  HSerOut [Str ctrl]
  DelayMS 5000
Return

Receive_SMS:
  HSerIn 1000, over,[Wait("+88"), Str number, Wait(13,10),Str msg]
  For x = 0 To 7
     If msg[x] != password[x] Then Break
     If msg[7] = password[7] Then
        gsm_out = 1
        DelayMS 3000
        gsm_out = 0
     EndIf
   Next
over:
Return
  
