
_clear_display:

;protector.c,16 :: 		void clear_display(){
;protector.c,17 :: 		digit_1 = 0; digit_2 = 0;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;protector.c,18 :: 		digit_3 = 0; digit_4 = 0;
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;protector.c,19 :: 		digit_5 = 0; digit_6 = 0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
;protector.c,20 :: 		}
L_end_clear_display:
	RETURN
; end of _clear_display

_show_display:

;protector.c,22 :: 		void show_display(char flag, int dta){
;protector.c,24 :: 		digit[0] = dta / 100;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_show_display_dta+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_display_dta+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      show_display_digit_L0+0
;protector.c,25 :: 		digit[1] = (dta % 100) / 10;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_show_display_dta+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_display_dta+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      show_display_digit_L0+1
;protector.c,26 :: 		digit[2] = dta % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_show_display_dta+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_display_dta+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      show_display_digit_L0+2
;protector.c,27 :: 		for(x = 0; x < 3; x++){
	CLRF       show_display_x_L0+0
L_show_display0:
	MOVLW      3
	SUBWF      show_display_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_show_display1
;protector.c,28 :: 		if(flag == 1){
	MOVF       FARG_show_display_flag+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_display3
;protector.c,29 :: 		if(x == 0) digit_1 = 1;
	MOVF       show_display_x_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_display4
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
L_show_display4:
;protector.c,30 :: 		if(x == 1) digit_2 = 1;
	MOVF       show_display_x_L0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_display5
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
L_show_display5:
;protector.c,31 :: 		if(x == 2) digit_3 = 1;
	MOVF       show_display_x_L0+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_show_display6
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
L_show_display6:
;protector.c,32 :: 		}
	GOTO       L_show_display7
L_show_display3:
;protector.c,33 :: 		else if(flag == 2){
	MOVF       FARG_show_display_flag+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_show_display8
;protector.c,34 :: 		if(x == 0) digit_4 = 1;
	MOVF       show_display_x_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_display9
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
L_show_display9:
;protector.c,35 :: 		if(x == 1) digit_5 = 1;
	MOVF       show_display_x_L0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_display10
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
L_show_display10:
;protector.c,36 :: 		if(x == 2) digit_6 = 1;
	MOVF       show_display_x_L0+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_show_display11
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
L_show_display11:
;protector.c,37 :: 		}
L_show_display8:
L_show_display7:
;protector.c,38 :: 		if(dta < 500) PORTB = anode[digit[x]];
	MOVLW      128
	XORWF      FARG_show_display_dta+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_display32
	MOVLW      244
	SUBWF      FARG_show_display_dta+0, 0
L__show_display32:
	BTFSC      STATUS+0, 0
	GOTO       L_show_display12
	MOVF       show_display_x_L0+0, 0
	ADDLW      show_display_digit_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	ADDLW      _anode+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
	GOTO       L_show_display13
L_show_display12:
;protector.c,39 :: 		else PORTB = dly[x];
	MOVF       show_display_x_L0+0, 0
	ADDLW      _dly+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
L_show_display13:
;protector.c,40 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_show_display14:
	DECFSZ     R13+0, 1
	GOTO       L_show_display14
	DECFSZ     R12+0, 1
	GOTO       L_show_display14
	NOP
	NOP
;protector.c,41 :: 		clear_display();
	CALL       _clear_display+0
;protector.c,27 :: 		for(x = 0; x < 3; x++){
	INCF       show_display_x_L0+0, 1
;protector.c,42 :: 		}
	GOTO       L_show_display0
L_show_display1:
;protector.c,43 :: 		}
L_end_show_display:
	RETURN
; end of _show_display

_check_delay_pin:

;protector.c,45 :: 		char check_delay_pin(){
;protector.c,46 :: 		char adc = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
;protector.c,47 :: 		if(adc > 200) return 1;
	MOVF       R0+0, 0
	SUBLW      200
	BTFSC      STATUS+0, 0
	GOTO       L_check_delay_pin15
	MOVLW      1
	MOVWF      R0+0
	GOTO       L_end_check_delay_pin
L_check_delay_pin15:
;protector.c,48 :: 		else return 0;
	CLRF       R0+0
;protector.c,49 :: 		}
L_end_check_delay_pin:
	RETURN
; end of _check_delay_pin

_delay_control:

;protector.c,51 :: 		void delay_control(){
;protector.c,53 :: 		if(check_delay_pin()) delay_s = MAX_delay;
	CALL       _check_delay_pin+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_delay_control17
	MOVLW      44
	MOVWF      delay_control_delay_s_L0+0
	MOVLW      1
	MOVWF      delay_control_delay_s_L0+1
	GOTO       L_delay_control18
L_delay_control17:
;protector.c,54 :: 		else delay_s = MIN_delay;
	MOVLW      30
	MOVWF      delay_control_delay_s_L0+0
	MOVLW      0
	MOVWF      delay_control_delay_s_L0+1
L_delay_control18:
;protector.c,55 :: 		for(x = delay_s; x >= 0; x--){
	MOVF       delay_control_delay_s_L0+0, 0
	MOVWF      delay_control_x_L0+0
	MOVF       delay_control_delay_s_L0+1, 0
	MOVWF      delay_control_x_L0+1
L_delay_control19:
	MOVLW      128
	XORWF      delay_control_x_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay_control35
	MOVLW      0
	SUBWF      delay_control_x_L0+0, 0
L__delay_control35:
	BTFSS      STATUS+0, 0
	GOTO       L_delay_control20
;protector.c,56 :: 		for(y = 0; y < ADJUST; y++){
	CLRF       delay_control_y_L0+0
	CLRF       delay_control_y_L0+1
L_delay_control22:
	MOVLW      128
	XORWF      delay_control_y_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay_control36
	MOVLW      20
	SUBWF      delay_control_y_L0+0, 0
L__delay_control36:
	BTFSC      STATUS+0, 0
	GOTO       L_delay_control23
;protector.c,57 :: 		show_display(1, 500); //dly
	MOVLW      1
	MOVWF      FARG_show_display_flag+0
	MOVLW      244
	MOVWF      FARG_show_display_dta+0
	MOVLW      1
	MOVWF      FARG_show_display_dta+1
	CALL       _show_display+0
;protector.c,58 :: 		show_display(2, x);  //counter
	MOVLW      2
	MOVWF      FARG_show_display_flag+0
	MOVF       delay_control_x_L0+0, 0
	MOVWF      FARG_show_display_dta+0
	MOVF       delay_control_x_L0+1, 0
	MOVWF      FARG_show_display_dta+1
	CALL       _show_display+0
;protector.c,56 :: 		for(y = 0; y < ADJUST; y++){
	INCF       delay_control_y_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       delay_control_y_L0+1, 1
;protector.c,59 :: 		}
	GOTO       L_delay_control22
L_delay_control23:
;protector.c,55 :: 		for(x = delay_s; x >= 0; x--){
	MOVLW      1
	SUBWF      delay_control_x_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       delay_control_x_L0+1, 1
;protector.c,60 :: 		}
	GOTO       L_delay_control19
L_delay_control20:
;protector.c,61 :: 		}
L_end_delay_control:
	RETURN
; end of _delay_control

_main:

;protector.c,63 :: 		void main() {
;protector.c,64 :: 		ADCON1 = 0x04;
	MOVLW      4
	MOVWF      ADCON1+0
;protector.c,65 :: 		TRISA = 0x03;
	MOVLW      3
	MOVWF      TRISA+0
;protector.c,66 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;protector.c,67 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;protector.c,68 :: 		relay = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;protector.c,69 :: 		delay_control();
	CALL       _delay_control+0
;protector.c,71 :: 		while(1){
L_main25:
;protector.c,72 :: 		char x, adc = 0;
	CLRF       main_adc_L1+0
;protector.c,73 :: 		adc = adc_read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      main_adc_L1+0
;protector.c,74 :: 		relay = 1;
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
;protector.c,75 :: 		for(x = 0; x < 200; x++){
	CLRF       main_x_L1+0
L_main27:
	MOVLW      200
	SUBWF      main_x_L1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main28
;protector.c,76 :: 		show_display(1, adc);
	MOVLW      1
	MOVWF      FARG_show_display_flag+0
	MOVF       main_adc_L1+0, 0
	MOVWF      FARG_show_display_dta+0
	CLRF       FARG_show_display_dta+1
	CALL       _show_display+0
;protector.c,77 :: 		show_display(2, 220);
	MOVLW      2
	MOVWF      FARG_show_display_flag+0
	MOVLW      220
	MOVWF      FARG_show_display_dta+0
	CLRF       FARG_show_display_dta+1
	CALL       _show_display+0
;protector.c,75 :: 		for(x = 0; x < 200; x++){
	INCF       main_x_L1+0, 1
;protector.c,78 :: 		}
	GOTO       L_main27
L_main28:
;protector.c,79 :: 		}
	GOTO       L_main25
;protector.c,80 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
