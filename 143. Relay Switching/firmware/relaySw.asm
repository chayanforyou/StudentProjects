
_delay_10s:

;relaySw.c,11 :: 		void delay_10s(){
;relaySw.c,12 :: 		for(delay=0;delay<100;delay++){
	CLRF       _delay+0
	CLRF       _delay+1
L_delay_10s0:
	MOVLW      128
	XORWF      _delay+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay_10s18
	MOVLW      100
	SUBWF      _delay+0, 0
L__delay_10s18:
	BTFSC      STATUS+0, 0
	GOTO       L_delay_10s1
;relaySw.c,13 :: 		if(!mode)break;
	BTFSC      PORTC+0, 3
	GOTO       L_delay_10s3
	GOTO       L_delay_10s1
L_delay_10s3:
;relaySw.c,14 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_delay_10s4:
	DECFSZ     R13+0, 1
	GOTO       L_delay_10s4
	DECFSZ     R12+0, 1
	GOTO       L_delay_10s4
	DECFSZ     R11+0, 1
	GOTO       L_delay_10s4
	NOP
	NOP
;relaySw.c,12 :: 		for(delay=0;delay<100;delay++){
	INCF       _delay+0, 1
	BTFSC      STATUS+0, 2
	INCF       _delay+1, 1
;relaySw.c,15 :: 		}
	GOTO       L_delay_10s0
L_delay_10s1:
;relaySw.c,16 :: 		}
L_end_delay_10s:
	RETURN
; end of _delay_10s

_main:

;relaySw.c,18 :: 		void main() {
;relaySw.c,19 :: 		trisb = 0x00; portb = 0x00;
	CLRF       TRISB+0
	CLRF       PORTB+0
;relaySw.c,20 :: 		trisc = 0x0F; portc = 0x00;
	MOVLW      15
	MOVWF      TRISC+0
	CLRF       PORTC+0
;relaySw.c,22 :: 		while(1){
L_main5:
;relaySw.c,23 :: 		while(!mode){
L_main7:
	BTFSC      PORTC+0, 3
	GOTO       L_main8
;relaySw.c,24 :: 		if(butt1){rly1 = 1;}
	BTFSS      PORTC+0, 0
	GOTO       L_main9
	BSF        PORTB+0, 0
	GOTO       L_main10
L_main9:
;relaySw.c,25 :: 		else{rly1 = 0;}
	BCF        PORTB+0, 0
L_main10:
;relaySw.c,26 :: 		if(butt2){rly2 = 1;}
	BTFSS      PORTC+0, 1
	GOTO       L_main11
	BSF        PORTB+0, 1
	GOTO       L_main12
L_main11:
;relaySw.c,27 :: 		else{rly2 = 0;}
	BCF        PORTB+0, 1
L_main12:
;relaySw.c,28 :: 		if(butt3){rly3 = 1;}
	BTFSS      PORTC+0, 2
	GOTO       L_main13
	BSF        PORTB+0, 2
	GOTO       L_main14
L_main13:
;relaySw.c,29 :: 		else{rly3 = 0;}
	BCF        PORTB+0, 2
L_main14:
;relaySw.c,30 :: 		}
	GOTO       L_main7
L_main8:
;relaySw.c,31 :: 		while(mode){
L_main15:
	BTFSS      PORTC+0, 3
	GOTO       L_main16
;relaySw.c,32 :: 		delay_10s();
	CALL       _delay_10s+0
;relaySw.c,33 :: 		rly1 = 1; rly2 = 0; rly3 = 0;
	BSF        PORTB+0, 0
	BCF        PORTB+0, 1
	BCF        PORTB+0, 2
;relaySw.c,34 :: 		delay_10s();
	CALL       _delay_10s+0
;relaySw.c,35 :: 		rly1 = 0; rly2 = 1; rly3 = 0;
	BCF        PORTB+0, 0
	BSF        PORTB+0, 1
	BCF        PORTB+0, 2
;relaySw.c,36 :: 		delay_10s();
	CALL       _delay_10s+0
;relaySw.c,37 :: 		rly1 = 0; rly2 = 0; rly3 = 1;
	BCF        PORTB+0, 0
	BCF        PORTB+0, 1
	BSF        PORTB+0, 2
;relaySw.c,38 :: 		}
	GOTO       L_main15
L_main16:
;relaySw.c,39 :: 		}
	GOTO       L_main5
;relaySw.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
