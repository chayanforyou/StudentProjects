
GoTo main

FP_init:
  Dim RXD[20] As Byte
  'Dim x As Byte
  Dim get_ID As Byte : get_ID = 0
  Dim ID_no As Byte : ID_no = 0
  Dim checksum As Byte 
  Dim FP_error As Bit
  Dim IDs As Byte : IDs = 0
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

