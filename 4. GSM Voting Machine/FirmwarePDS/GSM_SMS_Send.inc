'****************************************************************
'*  Name    : GSM_SMS_Send.inc                                  *
'*  Author  : Antor Ahmed                                       *
'*  Notice  : Copyright (c) 2016 Antor Ahmed                    *
'*          : All Rights Reserved                               *
'*  Date    : 27-Aug-16                                         *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************

'GSM_init:
'  HSerOut ["AT", 13, 10]
'  HSerIn 1000, GSM_init,[Wait("OK")]
'  HSerOut ["ATE0", 13, 10]
'  HSerOut ["AT + CMGF = 1", 13, 10]
'  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
'Return

Dim text[30] As Byte
Dim rec_number[11] As Byte

Send_SMS:
  HSerOut ["AT + CMGF = 1", 13, 10]
  HSerOut ["AT + CMGS = "]
  HSerOut [34, Str rec_number, 34,13,10]
  HSerOut [Str text, $1A]
  DelayMS 2000
Return
  
