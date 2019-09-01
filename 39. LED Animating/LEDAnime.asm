
_leds:

;LEDAnime.c,6 :: 		void leds(unsigned long led){
;LEDAnime.c,7 :: 		PORTB = led;
	MOVF       FARG_leds_led+0, 0
	MOVWF      PORTB+0
;LEDAnime.c,8 :: 		PORTC = led >> 8;
	MOVF       FARG_leds_led+1, 0
	MOVWF      R0+0
	MOVF       FARG_leds_led+2, 0
	MOVWF      R0+1
	MOVF       FARG_leds_led+3, 0
	MOVWF      R0+2
	CLRF       R0+3
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;LEDAnime.c,9 :: 		PORTA = led >> 16;
	MOVF       FARG_leds_led+2, 0
	MOVWF      R0+0
	MOVF       FARG_leds_led+3, 0
	MOVWF      R0+1
	CLRF       R0+2
	CLRF       R0+3
	MOVF       R0+0, 0
	MOVWF      PORTA+0
;LEDAnime.c,10 :: 		}
L_end_leds:
	RETURN
; end of _leds

_blink:

;LEDAnime.c,12 :: 		void blink(int num){
;LEDAnime.c,14 :: 		long led = 0;
	CLRF       blink_led_L0+0
	CLRF       blink_led_L0+1
	CLRF       blink_led_L0+2
	CLRF       blink_led_L0+3
;LEDAnime.c,15 :: 		for(x = 0; x < num; x++){
	CLRF       blink_x_L0+0
	CLRF       blink_x_L0+1
L_blink0:
	MOVLW      128
	XORWF      blink_x_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_blink_num+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__blink24
	MOVF       FARG_blink_num+0, 0
	SUBWF      blink_x_L0+0, 0
L__blink24:
	BTFSC      STATUS+0, 0
	GOTO       L_blink1
;LEDAnime.c,16 :: 		led = ~led;
	COMF       blink_led_L0+0, 0
	MOVWF      R0+0
	COMF       blink_led_L0+1, 0
	MOVWF      R0+1
	COMF       blink_led_L0+2, 0
	MOVWF      R0+2
	COMF       blink_led_L0+3, 0
	MOVWF      R0+3
	MOVF       R0+0, 0
	MOVWF      blink_led_L0+0
	MOVF       R0+1, 0
	MOVWF      blink_led_L0+1
	MOVF       R0+2, 0
	MOVWF      blink_led_L0+2
	MOVF       R0+3, 0
	MOVWF      blink_led_L0+3
;LEDAnime.c,17 :: 		leds(led);
	MOVF       R0+0, 0
	MOVWF      FARG_leds_led+0
	MOVF       R0+1, 0
	MOVWF      FARG_leds_led+1
	MOVF       R0+2, 0
	MOVWF      FARG_leds_led+2
	MOVF       R0+3, 0
	MOVWF      FARG_leds_led+3
	CALL       _leds+0
;LEDAnime.c,18 :: 		delay_ms(speed_1);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_blink3:
	DECFSZ     R13+0, 1
	GOTO       L_blink3
	DECFSZ     R12+0, 1
	GOTO       L_blink3
	DECFSZ     R11+0, 1
	GOTO       L_blink3
	NOP
;LEDAnime.c,15 :: 		for(x = 0; x < num; x++){
	INCF       blink_x_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       blink_x_L0+1, 1
;LEDAnime.c,19 :: 		}
	GOTO       L_blink0
L_blink1:
;LEDAnime.c,20 :: 		leds(0);
	CLRF       FARG_leds_led+0
	CLRF       FARG_leds_led+1
	CLRF       FARG_leds_led+2
	CLRF       FARG_leds_led+3
	CALL       _leds+0
;LEDAnime.c,21 :: 		}
L_end_blink:
	RETURN
; end of _blink

_right2left:

;LEDAnime.c,23 :: 		void right2left(){
;LEDAnime.c,25 :: 		unsigned long led, old_led = 0;
	CLRF       right2left_old_led_L0+0
	CLRF       right2left_old_led_L0+1
	CLRF       right2left_old_led_L0+2
	CLRF       right2left_old_led_L0+3
;LEDAnime.c,26 :: 		for(x = 0; x < 20; x++){
	CLRF       right2left_x_L0+0
	CLRF       right2left_x_L0+1
L_right2left4:
	MOVLW      128
	XORWF      right2left_x_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__right2left26
	MOVLW      20
	SUBWF      right2left_x_L0+0, 0
L__right2left26:
	BTFSC      STATUS+0, 0
	GOTO       L_right2left5
;LEDAnime.c,27 :: 		led = (524288 >> x) + old_led;
	MOVF       right2left_x_L0+0, 0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      8
	MOVWF      R0+2
	MOVLW      0
	MOVWF      R0+3
	MOVF       R4+0, 0
L__right2left27:
	BTFSC      STATUS+0, 2
	GOTO       L__right2left28
	RRF        R0+3, 1
	RRF        R0+2, 1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+3, 7
	BTFSC      R0+3, 6
	BSF        R0+3, 7
	ADDLW      255
	GOTO       L__right2left27
L__right2left28:
	MOVF       right2left_old_led_L0+0, 0
	ADDWF      R0+0, 1
	MOVF       right2left_old_led_L0+1, 0
	BTFSC      STATUS+0, 0
	INCFSZ     right2left_old_led_L0+1, 0
	ADDWF      R0+1, 1
	MOVF       right2left_old_led_L0+2, 0
	BTFSC      STATUS+0, 0
	INCFSZ     right2left_old_led_L0+2, 0
	ADDWF      R0+2, 1
	MOVF       right2left_old_led_L0+3, 0
	BTFSC      STATUS+0, 0
	INCFSZ     right2left_old_led_L0+3, 0
	ADDWF      R0+3, 1
	MOVF       R0+0, 0
	MOVWF      right2left_led_L0+0
	MOVF       R0+1, 0
	MOVWF      right2left_led_L0+1
	MOVF       R0+2, 0
	MOVWF      right2left_led_L0+2
	MOVF       R0+3, 0
	MOVWF      right2left_led_L0+3
;LEDAnime.c,28 :: 		leds(led);
	MOVF       R0+0, 0
	MOVWF      FARG_leds_led+0
	MOVF       R0+1, 0
	MOVWF      FARG_leds_led+1
	MOVF       R0+2, 0
	MOVWF      FARG_leds_led+2
	MOVF       R0+3, 0
	MOVWF      FARG_leds_led+3
	CALL       _leds+0
;LEDAnime.c,29 :: 		delay_ms(speed_2);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_right2left7:
	DECFSZ     R13+0, 1
	GOTO       L_right2left7
	DECFSZ     R12+0, 1
	GOTO       L_right2left7
	DECFSZ     R11+0, 1
	GOTO       L_right2left7
	NOP
	NOP
;LEDAnime.c,30 :: 		old_led = led;
	MOVF       right2left_led_L0+0, 0
	MOVWF      right2left_old_led_L0+0
	MOVF       right2left_led_L0+1, 0
	MOVWF      right2left_old_led_L0+1
	MOVF       right2left_led_L0+2, 0
	MOVWF      right2left_old_led_L0+2
	MOVF       right2left_led_L0+3, 0
	MOVWF      right2left_old_led_L0+3
;LEDAnime.c,26 :: 		for(x = 0; x < 20; x++){
	INCF       right2left_x_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       right2left_x_L0+1, 1
;LEDAnime.c,31 :: 		}
	GOTO       L_right2left4
L_right2left5:
;LEDAnime.c,32 :: 		leds(0);
	CLRF       FARG_leds_led+0
	CLRF       FARG_leds_led+1
	CLRF       FARG_leds_led+2
	CLRF       FARG_leds_led+3
	CALL       _leds+0
;LEDAnime.c,33 :: 		}
L_end_right2left:
	RETURN
; end of _right2left

_left2right:

;LEDAnime.c,35 :: 		void left2right(){
;LEDAnime.c,37 :: 		unsigned long led, old_led = 0;
	CLRF       left2right_old_led_L0+0
	CLRF       left2right_old_led_L0+1
	CLRF       left2right_old_led_L0+2
	CLRF       left2right_old_led_L0+3
;LEDAnime.c,38 :: 		for(x = 0; x < 20; x++){
	CLRF       left2right_x_L0+0
	CLRF       left2right_x_L0+1
L_left2right8:
	MOVLW      128
	XORWF      left2right_x_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__left2right30
	MOVLW      20
	SUBWF      left2right_x_L0+0, 0
L__left2right30:
	BTFSC      STATUS+0, 0
	GOTO       L_left2right9
;LEDAnime.c,39 :: 		led = (1 << x) + old_led;
	MOVF       left2right_x_L0+0, 0
	MOVWF      R2+0
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__left2right31:
	BTFSC      STATUS+0, 2
	GOTO       L__left2right32
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__left2right31
L__left2right32:
	MOVLW      0
	BTFSC      R0+1, 7
	MOVLW      255
	MOVWF      R0+2
	MOVWF      R0+3
	MOVF       left2right_old_led_L0+0, 0
	ADDWF      R0+0, 1
	MOVF       left2right_old_led_L0+1, 0
	BTFSC      STATUS+0, 0
	INCFSZ     left2right_old_led_L0+1, 0
	ADDWF      R0+1, 1
	MOVF       left2right_old_led_L0+2, 0
	BTFSC      STATUS+0, 0
	INCFSZ     left2right_old_led_L0+2, 0
	ADDWF      R0+2, 1
	MOVF       left2right_old_led_L0+3, 0
	BTFSC      STATUS+0, 0
	INCFSZ     left2right_old_led_L0+3, 0
	ADDWF      R0+3, 1
	MOVF       R0+0, 0
	MOVWF      left2right_led_L0+0
	MOVF       R0+1, 0
	MOVWF      left2right_led_L0+1
	MOVF       R0+2, 0
	MOVWF      left2right_led_L0+2
	MOVF       R0+3, 0
	MOVWF      left2right_led_L0+3
;LEDAnime.c,40 :: 		leds(led);
	MOVF       R0+0, 0
	MOVWF      FARG_leds_led+0
	MOVF       R0+1, 0
	MOVWF      FARG_leds_led+1
	MOVF       R0+2, 0
	MOVWF      FARG_leds_led+2
	MOVF       R0+3, 0
	MOVWF      FARG_leds_led+3
	CALL       _leds+0
;LEDAnime.c,41 :: 		delay_ms(speed_2);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_left2right11:
	DECFSZ     R13+0, 1
	GOTO       L_left2right11
	DECFSZ     R12+0, 1
	GOTO       L_left2right11
	DECFSZ     R11+0, 1
	GOTO       L_left2right11
	NOP
	NOP
;LEDAnime.c,42 :: 		old_led = led;
	MOVF       left2right_led_L0+0, 0
	MOVWF      left2right_old_led_L0+0
	MOVF       left2right_led_L0+1, 0
	MOVWF      left2right_old_led_L0+1
	MOVF       left2right_led_L0+2, 0
	MOVWF      left2right_old_led_L0+2
	MOVF       left2right_led_L0+3, 0
	MOVWF      left2right_old_led_L0+3
;LEDAnime.c,38 :: 		for(x = 0; x < 20; x++){
	INCF       left2right_x_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       left2right_x_L0+1, 1
;LEDAnime.c,43 :: 		}
	GOTO       L_left2right8
L_left2right9:
;LEDAnime.c,44 :: 		leds(0);
	CLRF       FARG_leds_led+0
	CLRF       FARG_leds_led+1
	CLRF       FARG_leds_led+2
	CLRF       FARG_leds_led+3
	CALL       _leds+0
;LEDAnime.c,45 :: 		}
L_end_left2right:
	RETURN
; end of _left2right

_right2left_2:

;LEDAnime.c,47 :: 		void right2left_2(){
;LEDAnime.c,49 :: 		for(x = 0; x < 20; x++){
	CLRF       right2left_2_x_L0+0
	CLRF       right2left_2_x_L0+1
L_right2left_212:
	MOVLW      128
	XORWF      right2left_2_x_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__right2left_234
	MOVLW      20
	SUBWF      right2left_2_x_L0+0, 0
L__right2left_234:
	BTFSC      STATUS+0, 0
	GOTO       L_right2left_213
;LEDAnime.c,50 :: 		leds(524288 >> x);
	MOVF       right2left_2_x_L0+0, 0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      FARG_leds_led+0
	MOVLW      0
	MOVWF      FARG_leds_led+1
	MOVLW      8
	MOVWF      FARG_leds_led+2
	MOVLW      0
	MOVWF      FARG_leds_led+3
	MOVF       R0+0, 0
L__right2left_235:
	BTFSC      STATUS+0, 2
	GOTO       L__right2left_236
	RRF        FARG_leds_led+3, 1
	RRF        FARG_leds_led+2, 1
	RRF        FARG_leds_led+1, 1
	RRF        FARG_leds_led+0, 1
	BCF        FARG_leds_led+3, 7
	BTFSC      FARG_leds_led+3, 6
	BSF        FARG_leds_led+3, 7
	ADDLW      255
	GOTO       L__right2left_235
L__right2left_236:
	CALL       _leds+0
;LEDAnime.c,51 :: 		delay_ms(speed_2);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_right2left_215:
	DECFSZ     R13+0, 1
	GOTO       L_right2left_215
	DECFSZ     R12+0, 1
	GOTO       L_right2left_215
	DECFSZ     R11+0, 1
	GOTO       L_right2left_215
	NOP
	NOP
;LEDAnime.c,49 :: 		for(x = 0; x < 20; x++){
	INCF       right2left_2_x_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       right2left_2_x_L0+1, 1
;LEDAnime.c,52 :: 		}
	GOTO       L_right2left_212
L_right2left_213:
;LEDAnime.c,53 :: 		leds(0);
	CLRF       FARG_leds_led+0
	CLRF       FARG_leds_led+1
	CLRF       FARG_leds_led+2
	CLRF       FARG_leds_led+3
	CALL       _leds+0
;LEDAnime.c,54 :: 		}
L_end_right2left_2:
	RETURN
; end of _right2left_2

_left2right_2:

;LEDAnime.c,56 :: 		void left2right_2(){
;LEDAnime.c,58 :: 		for(x = 0; x < 20; x++){
	CLRF       left2right_2_x_L0+0
	CLRF       left2right_2_x_L0+1
L_left2right_216:
	MOVLW      128
	XORWF      left2right_2_x_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__left2right_238
	MOVLW      20
	SUBWF      left2right_2_x_L0+0, 0
L__left2right_238:
	BTFSC      STATUS+0, 0
	GOTO       L_left2right_217
;LEDAnime.c,59 :: 		leds(1 << x);
	MOVF       left2right_2_x_L0+0, 0
	MOVWF      R0+0
	MOVLW      1
	MOVWF      FARG_leds_led+0
	MOVLW      0
	MOVWF      FARG_leds_led+1
	MOVF       R0+0, 0
L__left2right_239:
	BTFSC      STATUS+0, 2
	GOTO       L__left2right_240
	RLF        FARG_leds_led+0, 1
	RLF        FARG_leds_led+1, 1
	BCF        FARG_leds_led+0, 0
	ADDLW      255
	GOTO       L__left2right_239
L__left2right_240:
	MOVLW      0
	BTFSC      FARG_leds_led+1, 7
	MOVLW      255
	MOVWF      FARG_leds_led+2
	MOVWF      FARG_leds_led+3
	CALL       _leds+0
;LEDAnime.c,60 :: 		delay_ms(speed_2);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_left2right_219:
	DECFSZ     R13+0, 1
	GOTO       L_left2right_219
	DECFSZ     R12+0, 1
	GOTO       L_left2right_219
	DECFSZ     R11+0, 1
	GOTO       L_left2right_219
	NOP
	NOP
;LEDAnime.c,58 :: 		for(x = 0; x < 20; x++){
	INCF       left2right_2_x_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       left2right_2_x_L0+1, 1
;LEDAnime.c,61 :: 		}
	GOTO       L_left2right_216
L_left2right_217:
;LEDAnime.c,62 :: 		leds(0);
	CLRF       FARG_leds_led+0
	CLRF       FARG_leds_led+1
	CLRF       FARG_leds_led+2
	CLRF       FARG_leds_led+3
	CALL       _leds+0
;LEDAnime.c,63 :: 		}
L_end_left2right_2:
	RETURN
; end of _left2right_2

_main:

;LEDAnime.c,65 :: 		void main() {
;LEDAnime.c,66 :: 		ADCON1 = 7;
	MOVLW      7
	MOVWF      ADCON1+0
;LEDAnime.c,67 :: 		TRISA = 0x00;
	CLRF       TRISA+0
;LEDAnime.c,68 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;LEDAnime.c,69 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;LEDAnime.c,71 :: 		while(1){
L_main20:
;LEDAnime.c,72 :: 		blink(10);
	MOVLW      10
	MOVWF      FARG_blink_num+0
	MOVLW      0
	MOVWF      FARG_blink_num+1
	CALL       _blink+0
;LEDAnime.c,73 :: 		right2left();
	CALL       _right2left+0
;LEDAnime.c,74 :: 		blink(5);
	MOVLW      5
	MOVWF      FARG_blink_num+0
	MOVLW      0
	MOVWF      FARG_blink_num+1
	CALL       _blink+0
;LEDAnime.c,75 :: 		left2right();
	CALL       _left2right+0
;LEDAnime.c,76 :: 		blink(5);
	MOVLW      5
	MOVWF      FARG_blink_num+0
	MOVLW      0
	MOVWF      FARG_blink_num+1
	CALL       _blink+0
;LEDAnime.c,77 :: 		right2left_2();
	CALL       _right2left_2+0
;LEDAnime.c,78 :: 		blink(5);
	MOVLW      5
	MOVWF      FARG_blink_num+0
	MOVLW      0
	MOVWF      FARG_blink_num+1
	CALL       _blink+0
;LEDAnime.c,79 :: 		left2right_2();
	CALL       _left2right_2+0
;LEDAnime.c,80 :: 		blink(5);
	MOVLW      5
	MOVWF      FARG_blink_num+0
	MOVLW      0
	MOVWF      FARG_blink_num+1
	CALL       _blink+0
;LEDAnime.c,81 :: 		}
	GOTO       L_main20
;LEDAnime.c,82 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
