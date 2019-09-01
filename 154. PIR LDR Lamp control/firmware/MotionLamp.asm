
_main:

;MotionLamp.c,9 :: 		void main() {
;MotionLamp.c,10 :: 		ADFM_bit = 1;
	BSF        ADFM_bit+0, BitPos(ADFM_bit+0)
;MotionLamp.c,11 :: 		ANSEL = 4;
	MOVLW      4
	MOVWF      ANSEL+0
;MotionLamp.c,12 :: 		CMCON = 7;
	MOVLW      7
	MOVWF      CMCON+0
;MotionLamp.c,13 :: 		TRISIO = 0b00000110;
	MOVLW      6
	MOVWF      TRISIO+0
;MotionLamp.c,14 :: 		GPIO = 0;
	CLRF       GPIO+0
;MotionLamp.c,15 :: 		enableFlag = 0;
	BCF        _enableFlag+0, BitPos(_enableFlag+0)
;MotionLamp.c,17 :: 		while(1){
L_main0:
;MotionLamp.c,18 :: 		lamp = ~lamp;
	MOVLW
	XORWF      GP4_bit+0, 1
;MotionLamp.c,19 :: 		led = ~led;
	MOVLW
	XORWF      GP0_bit+0, 1
;MotionLamp.c,20 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;MotionLamp.c,21 :: 		}
	GOTO       L_main0
;MotionLamp.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
