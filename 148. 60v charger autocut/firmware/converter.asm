
_clear_display:

;converter.c,15 :: 		void clear_display(){
;converter.c,16 :: 		digit_1 = 0; digit_2 = 0; digit_3 = 0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
;converter.c,17 :: 		}
L_end_clear_display:
	RETURN
; end of _clear_display

_segment:

;converter.c,19 :: 		void segment(int dta){
;converter.c,21 :: 		digit[0] = dta / 100;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_segment_dta+0, 0
	MOVWF      R0+0
	MOVF       FARG_segment_dta+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      segment_digit_L0+0
;converter.c,22 :: 		digit[1] = (dta % 100) / 10;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_segment_dta+0, 0
	MOVWF      R0+0
	MOVF       FARG_segment_dta+1, 0
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
	MOVWF      segment_digit_L0+1
;converter.c,23 :: 		digit[2] = dta % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_segment_dta+0, 0
	MOVWF      R0+0
	MOVF       FARG_segment_dta+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      segment_digit_L0+2
;converter.c,24 :: 		for(x = 0; x < 3; x++){
	CLRF       segment_x_L0+0
L_segment0:
	MOVLW      3
	SUBWF      segment_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_segment1
;converter.c,25 :: 		if(x == 0) digit_1 = 1;
	MOVF       segment_x_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_segment3
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
L_segment3:
;converter.c,26 :: 		if(x == 1) digit_2 = 1;
	MOVF       segment_x_L0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_segment4
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
L_segment4:
;converter.c,27 :: 		if(x == 2) digit_3 = 1;
	MOVF       segment_x_L0+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_segment5
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
L_segment5:
;converter.c,28 :: 		PORTB = anode[digit[x]];
	MOVF       segment_x_L0+0, 0
	ADDLW      segment_digit_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	ADDLW      _anode+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;converter.c,29 :: 		delay_ms(1);
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_segment6:
	DECFSZ     R13+0, 1
	GOTO       L_segment6
	DECFSZ     R12+0, 1
	GOTO       L_segment6
;converter.c,30 :: 		clear_display();
	CALL       _clear_display+0
;converter.c,24 :: 		for(x = 0; x < 3; x++){
	INCF       segment_x_L0+0, 1
;converter.c,31 :: 		}
	GOTO       L_segment0
L_segment1:
;converter.c,32 :: 		digit_2 = 1;
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
;converter.c,33 :: 		PORTB = 127;
	MOVLW      127
	MOVWF      PORTB+0
;converter.c,34 :: 		delay_ms(1);
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_segment7:
	DECFSZ     R13+0, 1
	GOTO       L_segment7
	DECFSZ     R12+0, 1
	GOTO       L_segment7
;converter.c,35 :: 		clear_display();
	CALL       _clear_display+0
;converter.c,36 :: 		}
L_end_segment:
	RETURN
; end of _segment

_show_full:

;converter.c,38 :: 		void show_full(){
;converter.c,40 :: 		digit[0] = 142;
	MOVLW      142
	MOVWF      show_full_digit_L0+0
;converter.c,41 :: 		digit[1] = 193;
	MOVLW      193
	MOVWF      show_full_digit_L0+1
;converter.c,42 :: 		digit[2] = 199;
	MOVLW      199
	MOVWF      show_full_digit_L0+2
;converter.c,43 :: 		clear_display();
	CALL       _clear_display+0
;converter.c,44 :: 		for(x = 0; x < 3; x++){
	CLRF       show_full_x_L0+0
L_show_full8:
	MOVLW      3
	SUBWF      show_full_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_show_full9
;converter.c,45 :: 		if(x == 0) digit_1 = 1;
	MOVF       show_full_x_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_full11
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
L_show_full11:
;converter.c,46 :: 		if(x == 1) digit_2 = 1;
	MOVF       show_full_x_L0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_full12
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
L_show_full12:
;converter.c,47 :: 		if(x == 2) digit_3 = 1;
	MOVF       show_full_x_L0+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_show_full13
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
L_show_full13:
;converter.c,48 :: 		PORTB = digit[x];
	MOVF       show_full_x_L0+0, 0
	ADDLW      show_full_digit_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;converter.c,49 :: 		delay_ms(1);
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_show_full14:
	DECFSZ     R13+0, 1
	GOTO       L_show_full14
	DECFSZ     R12+0, 1
	GOTO       L_show_full14
;converter.c,50 :: 		clear_display();
	CALL       _clear_display+0
;converter.c,44 :: 		for(x = 0; x < 3; x++){
	INCF       show_full_x_L0+0, 1
;converter.c,51 :: 		}
	GOTO       L_show_full8
L_show_full9:
;converter.c,52 :: 		}
L_end_show_full:
	RETURN
; end of _show_full

_read_adc:

;converter.c,54 :: 		void read_adc(){
;converter.c,55 :: 		in_adc = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _in_adc+0
	MOVF       R0+1, 0
	MOVWF      _in_adc+1
;converter.c,56 :: 		out_adc = adc_read(2);
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _out_adc+0
;converter.c,57 :: 		temp_adc = adc_read(4);
	MOVLW      4
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp_adc+0
;converter.c,58 :: 		in_adc = (in_adc * 0.407) * 10;
	MOVF       _in_adc+0, 0
	MOVWF      R0+0
	MOVF       _in_adc+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVLW      78
	MOVWF      R4+0
	MOVLW      98
	MOVWF      R4+1
	MOVLW      80
	MOVWF      R4+2
	MOVLW      125
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      _in_adc+0
	MOVF       R0+1, 0
	MOVWF      _in_adc+1
;converter.c,59 :: 		}
L_end_read_adc:
	RETURN
; end of _read_adc

_system:

;converter.c,61 :: 		void system(){
;converter.c,62 :: 		read_Adc();
	CALL       _read_adc+0
;converter.c,63 :: 		if(mode == 1){mode_f =~ mode_f; delay_ms(300);}
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_system15
	MOVLW
	XORWF      _mode_f+0, 1
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_system16:
	DECFSZ     R13+0, 1
	GOTO       L_system16
	DECFSZ     R12+0, 1
	GOTO       L_system16
	DECFSZ     R11+0, 1
	GOTO       L_system16
	NOP
	NOP
L_system15:
;converter.c,64 :: 		if(in_adc > 576) {output = 1; output_f = 1;}        //576 = 57.6v
	MOVLW      128
	XORLW      2
	MOVWF      R0+0
	MOVLW      128
	XORWF      _in_adc+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__system44
	MOVF       _in_adc+0, 0
	SUBLW      64
L__system44:
	BTFSC      STATUS+0, 0
	GOTO       L_system17
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
	BSF        _output_f+0, BitPos(_output_f+0)
L_system17:
;converter.c,65 :: 		if(in_adc < 490) {output = 0; output_f = 0;}        //490 = 49.0v
	MOVLW      128
	XORWF      _in_adc+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__system45
	MOVLW      234
	SUBWF      _in_adc+0, 0
L__system45:
	BTFSC      STATUS+0, 0
	GOTO       L_system18
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
	BCF        _output_f+0, BitPos(_output_f+0)
L_system18:
;converter.c,66 :: 		if(output_f) time = 500;                            //interchange delay
	BTFSS      _output_f+0, BitPos(_output_f+0)
	GOTO       L_system19
	MOVLW      244
	MOVWF      _time+0
	MOVLW      1
	MOVWF      _time+1
	GOTO       L_system20
L_system19:
;converter.c,67 :: 		else time = 100;
	MOVLW      100
	MOVWF      _time+0
	MOVLW      0
	MOVWF      _time+1
L_system20:
;converter.c,68 :: 		if(temp_adc > 150) fan = 1;                         //adjust fan ON
	MOVF       _temp_adc+0, 0
	SUBLW      150
	BTFSC      STATUS+0, 0
	GOTO       L_system21
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
L_system21:
;converter.c,69 :: 		if(temp_adc < 50) fan = 0;                          //adjust fan OFF
	MOVLW      50
	SUBWF      _temp_adc+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_system22
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
L_system22:
;converter.c,70 :: 		}
L_end_system:
	RETURN
; end of _system

_main:

;converter.c,72 :: 		void main() {
;converter.c,73 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;converter.c,74 :: 		TRISC = 0x80;
	MOVLW      128
	MOVWF      TRISC+0
;converter.c,75 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;converter.c,76 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;converter.c,77 :: 		mode_f = 0;
	BCF        _mode_f+0, BitPos(_mode_f+0)
;converter.c,79 :: 		while(1){
L_main23:
;converter.c,80 :: 		while(mode_f == 0){
L_main25:
	BTFSC      _mode_f+0, BitPos(_mode_f+0)
	GOTO       L_main26
;converter.c,81 :: 		system();
	CALL       _system+0
;converter.c,82 :: 		status = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
;converter.c,83 :: 		for(delay = 0; delay < time; delay++) segment(in_adc);
	CLRF       _delay+0
	CLRF       _delay+1
L_main27:
	MOVLW      128
	XORWF      _delay+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _time+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main47
	MOVF       _time+0, 0
	SUBWF      _delay+0, 0
L__main47:
	BTFSC      STATUS+0, 0
	GOTO       L_main28
	MOVF       _in_adc+0, 0
	MOVWF      FARG_segment_dta+0
	MOVF       _in_adc+1, 0
	MOVWF      FARG_segment_dta+1
	CALL       _segment+0
	INCF       _delay+0, 1
	BTFSC      STATUS+0, 2
	INCF       _delay+1, 1
	GOTO       L_main27
L_main28:
;converter.c,84 :: 		if(output_f) for(delay = 0; delay < time; delay++) show_full();
	BTFSS      _output_f+0, BitPos(_output_f+0)
	GOTO       L_main30
	CLRF       _delay+0
	CLRF       _delay+1
L_main31:
	MOVLW      128
	XORWF      _delay+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _time+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main48
	MOVF       _time+0, 0
	SUBWF      _delay+0, 0
L__main48:
	BTFSC      STATUS+0, 0
	GOTO       L_main32
	CALL       _show_full+0
	INCF       _delay+0, 1
	BTFSC      STATUS+0, 2
	INCF       _delay+1, 1
	GOTO       L_main31
L_main32:
L_main30:
;converter.c,85 :: 		}
	GOTO       L_main25
L_main26:
;converter.c,86 :: 		while(mode_f == 1){
L_main34:
	BTFSS      _mode_f+0, BitPos(_mode_f+0)
	GOTO       L_main35
;converter.c,87 :: 		system();
	CALL       _system+0
;converter.c,88 :: 		status = 1;
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
;converter.c,89 :: 		for(delay = 0; delay < 100; delay++) segment(out_adc);
	CLRF       _delay+0
	CLRF       _delay+1
L_main36:
	MOVLW      128
	XORWF      _delay+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main49
	MOVLW      100
	SUBWF      _delay+0, 0
L__main49:
	BTFSC      STATUS+0, 0
	GOTO       L_main37
	MOVF       _out_adc+0, 0
	MOVWF      FARG_segment_dta+0
	CLRF       FARG_segment_dta+1
	CALL       _segment+0
	INCF       _delay+0, 1
	BTFSC      STATUS+0, 2
	INCF       _delay+1, 1
	GOTO       L_main36
L_main37:
;converter.c,90 :: 		}
	GOTO       L_main34
L_main35:
;converter.c,91 :: 		}
	GOTO       L_main23
;converter.c,92 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
