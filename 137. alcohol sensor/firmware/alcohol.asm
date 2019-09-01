
_main:

;alcohol.c,6 :: 		void main() {
;alcohol.c,7 :: 		adcon1 = 0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;alcohol.c,8 :: 		trisa = 0x00; porta = 0x00;
	CLRF       TRISA+0
	CLRF       PORTA+0
;alcohol.c,9 :: 		trisc = 0x08; portc = 0x00;
	MOVLW      8
	MOVWF      TRISC+0
	CLRF       PORTC+0
;alcohol.c,11 :: 		while(1){
L_main0:
;alcohol.c,12 :: 		if(sensor){
	BTFSS      PORTC+0, 3
	GOTO       L_main2
;alcohol.c,13 :: 		motor = 1; buzz = 0;
	BSF        PORTC+0, 4
	BCF        PORTA+0, 1
;alcohol.c,14 :: 		}
	GOTO       L_main3
L_main2:
;alcohol.c,16 :: 		motor = 0; buzz = 1;
	BCF        PORTC+0, 4
	BSF        PORTA+0, 1
;alcohol.c,17 :: 		}
L_main3:
;alcohol.c,18 :: 		}
	GOTO       L_main0
;alcohol.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
