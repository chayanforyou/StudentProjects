'****************************************************************
'*  Name    : GSM_SMS_Receive.inc                               *
'*  Author  : Antor Ahmed                                       *
'*  Notice  : Copyright (c) 2016 Antor Ahmed                    *
'*          : All Rights Reserved                               *
'*  Date    : 27-Aug-16                                         *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************

Dim number[11] As Byte
Dim msg[6] As Byte 


Receive_SMS:
  HSerIn 1000, over,[Wait("+88"), Str number, Wait(13,10),Str msg]
over:
Return

GSM_init:
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init,[Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  HSerOut ["AT + CMGF = 1", 13, 10]
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
Return
