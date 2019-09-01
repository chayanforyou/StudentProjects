
_main:

;Fire room.c,7 :: 		void main() {
;Fire room.c,8 :: 		Man_Send_Init();
	CALL       _Man_Send_Init+0
;Fire room.c,10 :: 		while(1){
L_main0:
;Fire room.c,11 :: 		Man_send(rf_tx);
	MOVF       _rf_tx+0, 0
	MOVWF      FARG_Man_Send_tr_data+0
	CALL       _Man_Send+0
;Fire room.c,12 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;Fire room.c,13 :: 		rf_tx++;
	INCF       _rf_tx+0, 1
;Fire room.c,14 :: 		if(rf_tx == 10) rf_tx = 0;
	MOVF       _rf_tx+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_main3
	CLRF       _rf_tx+0
L_main3:
;Fire room.c,15 :: 		}
	GOTO       L_main0
;Fire room.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
