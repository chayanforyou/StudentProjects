
_main:

;dual.c,14 :: 		void main() {
;dual.c,15 :: 		TRISB = 0x00; PORTB = 0x00;
	CLRF       TRISB+0
	CLRF       PORTB+0
;dual.c,17 :: 		while(1){
L_main0:
;dual.c,18 :: 		col_ds = 1; col_sh = 1; col_sh = 0; col_st = 1; col_st = 0;
	BSF        RB4_bit+0, BitPos(RB4_bit+0)
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
	BSF        RB5_bit+0, BitPos(RB5_bit+0)
	BCF        RB5_bit+0, BitPos(RB5_bit+0)
;dual.c,19 :: 		for(col=0;col<8;col++){
	CLRF       _col+0
L_main2:
	MOVLW      8
	SUBWF      _col+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;dual.c,20 :: 		for(row=0;row<8;row++){
	CLRF       _row+0
L_main5:
	MOVLW      8
	SUBWF      _row+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;dual.c,21 :: 		dta =~ text[col];
	MOVF       _col+0, 0
	ADDLW      _text+0
	MOVWF      R0+0
	MOVLW      hi_addr(_text+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      R0+0
	COMF       R0+0, 0
	MOVWF      R2+0
	MOVF       R2+0, 0
	MOVWF      _dta+0
;dual.c,22 :: 		row_ds = dta >> row;
	MOVF       _row+0, 0
	MOVWF      R1+0
	MOVF       R2+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__main10:
	BTFSC      STATUS+0, 2
	GOTO       L__main11
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__main10
L__main11:
	BTFSC      R0+0, 0
	GOTO       L__main12
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L__main13
L__main12:
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
L__main13:
;dual.c,23 :: 		row_sh = 1; row_sh = 0;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;dual.c,24 :: 		row_st = 1; row_st = 0;
	BSF        RB2_bit+0, BitPos(RB2_bit+0)
	BCF        RB2_bit+0, BitPos(RB2_bit+0)
;dual.c,20 :: 		for(row=0;row<8;row++){
	INCF       _row+0, 1
;dual.c,25 :: 		}
	GOTO       L_main5
L_main6:
;dual.c,26 :: 		col_ds = 0; col_sh = 1; col_sh = 0; col_st = 1; col_st = 0;
	BCF        RB4_bit+0, BitPos(RB4_bit+0)
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
	BSF        RB5_bit+0, BitPos(RB5_bit+0)
	BCF        RB5_bit+0, BitPos(RB5_bit+0)
;dual.c,27 :: 		delay_ms(3);
	MOVLW      10
	MOVWF      R12+0
	MOVLW      188
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
;dual.c,19 :: 		for(col=0;col<8;col++){
	INCF       _col+0, 1
;dual.c,28 :: 		}
	GOTO       L_main2
L_main3:
;dual.c,29 :: 		}
	GOTO       L_main0
;dual.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
