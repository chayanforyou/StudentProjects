
_main:

;fire car.c,18 :: 		void main() {
;fire car.c,19 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;fire car.c,20 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;fire car.c,21 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;fire car.c,22 :: 		Man_Receive_Init();
	CALL       _Man_Receive_Init+0
;fire car.c,24 :: 		while(1){
L_main0:
;fire car.c,25 :: 		lcd_out(1,1,"RF signal: ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_fire_32car+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;fire car.c,26 :: 		rf_rx = Man_Receive(&err);
	MOVLW      _err+0
	MOVWF      FARG_Man_Receive_error+0
	CALL       _Man_Receive+0
	MOVF       R0+0, 0
	MOVWF      _rf_rx+0
;fire car.c,27 :: 		if(err);
	MOVF       _err+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main2
	GOTO       L_main3
L_main2:
;fire car.c,29 :: 		if(rf_rx >= 0 && rf_rx < 10) lcd_chr(2,rf_rx, rf_rx + 48);
	MOVLW      0
	SUBWF      _rf_rx+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main6
	MOVLW      10
	SUBWF      _rf_rx+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main6
L__main7:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _rf_rx+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	ADDWF      _rf_rx+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_main6:
;fire car.c,30 :: 		}
L_main3:
;fire car.c,31 :: 		}
	GOTO       L_main0
;fire car.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
