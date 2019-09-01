
_hardware_init:

;define.h,15 :: 		void hardware_init(){
;define.h,16 :: 		adcon1 = 0x04;
	MOVLW      4
	MOVWF      ADCON1+0
;define.h,17 :: 		trisA = 0x1B; portA = 0x00;
	MOVLW      27
	MOVWF      TRISA+0
	CLRF       PORTA+0
;define.h,18 :: 		trisB = 0x00; portB = 0x00;
	CLRF       TRISB+0
	CLRF       PORTB+0
;define.h,19 :: 		trisC = 0x00; portC = 0x00;
	CLRF       TRISC+0
	CLRF       PORTC+0
;define.h,20 :: 		}
L_end_hardware_init:
	RETURN
; end of _hardware_init

_clear:

;define.h,22 :: 		void clear(){
;define.h,23 :: 		digit_1 = OFF; digit_2 = OFF; digit_3 = OFF;
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;define.h,24 :: 		digit_4 = OFF; digit_5 = OFF; digit_6 = OFF;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;define.h,25 :: 		}
L_end_clear:
	RETURN
; end of _clear

_dash_show:

;define.h,27 :: 		void dash_show(){
;define.h,28 :: 		display = font_a[2];
	MOVLW      192
	MOVWF      PORTB+0
;define.h,29 :: 		digit_4 = ON; delay_ms(1); clear();
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_dash_show0:
	DECFSZ     R13+0, 1
	GOTO       L_dash_show0
	DECFSZ     R12+0, 1
	GOTO       L_dash_show0
	CALL       _clear+0
;define.h,30 :: 		display = font_a[6];
	MOVLW      142
	MOVWF      PORTB+0
;define.h,31 :: 		digit_5 = ON; delay_ms(1); clear();
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_dash_show1:
	DECFSZ     R13+0, 1
	GOTO       L_dash_show1
	DECFSZ     R12+0, 1
	GOTO       L_dash_show1
	CALL       _clear+0
;define.h,32 :: 		display = font_a[6];
	MOVLW      142
	MOVWF      PORTB+0
;define.h,33 :: 		digit_6 = ON; delay_ms(1); clear();
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_dash_show2:
	DECFSZ     R13+0, 1
	GOTO       L_dash_show2
	DECFSZ     R12+0, 1
	GOTO       L_dash_show2
	CALL       _clear+0
;define.h,34 :: 		}
L_end_dash_show:
	RETURN
; end of _dash_show

_segment_byte:

;define.h,36 :: 		void segment_byte(short seg, int value){
;define.h,38 :: 		temp = value / 100;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_segment_byte_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_segment_byte_value+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
;define.h,39 :: 		display = anode[temp];
	MOVLW      0
	MOVWF      R0+1
	MOVLW      _anode+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_anode+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;define.h,40 :: 		if(seg == 0) {digit_1 = ON; delay_ms(1); clear();}
	MOVF       FARG_segment_byte_seg+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_segment_byte3
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_segment_byte4:
	DECFSZ     R13+0, 1
	GOTO       L_segment_byte4
	DECFSZ     R12+0, 1
	GOTO       L_segment_byte4
	CALL       _clear+0
	GOTO       L_segment_byte5
L_segment_byte3:
;define.h,41 :: 		else {digit_4 = ON; delay_ms(1); clear();}
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_segment_byte6:
	DECFSZ     R13+0, 1
	GOTO       L_segment_byte6
	DECFSZ     R12+0, 1
	GOTO       L_segment_byte6
	CALL       _clear+0
L_segment_byte5:
;define.h,42 :: 		temp = (value / 10) % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_segment_byte_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_segment_byte_value+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
;define.h,43 :: 		display = anode[temp];
	MOVLW      0
	MOVWF      R0+1
	MOVLW      _anode+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_anode+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;define.h,44 :: 		if(seg == 0) {digit_2 = ON; delay_ms(1); clear();}
	MOVF       FARG_segment_byte_seg+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_segment_byte7
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_segment_byte8:
	DECFSZ     R13+0, 1
	GOTO       L_segment_byte8
	DECFSZ     R12+0, 1
	GOTO       L_segment_byte8
	CALL       _clear+0
	GOTO       L_segment_byte9
L_segment_byte7:
;define.h,45 :: 		else {digit_5 = ON; delay_ms(1); clear();}
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_segment_byte10:
	DECFSZ     R13+0, 1
	GOTO       L_segment_byte10
	DECFSZ     R12+0, 1
	GOTO       L_segment_byte10
	CALL       _clear+0
L_segment_byte9:
;define.h,46 :: 		temp = value % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_segment_byte_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_segment_byte_value+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
;define.h,47 :: 		display = anode[temp];
	MOVLW      0
	MOVWF      R0+1
	MOVLW      _anode+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_anode+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;define.h,48 :: 		if(seg == 0) {digit_3 = ON; delay_ms(1); clear();}
	MOVF       FARG_segment_byte_seg+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_segment_byte11
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_segment_byte12:
	DECFSZ     R13+0, 1
	GOTO       L_segment_byte12
	DECFSZ     R12+0, 1
	GOTO       L_segment_byte12
	CALL       _clear+0
	GOTO       L_segment_byte13
L_segment_byte11:
;define.h,49 :: 		else {digit_6 = ON; delay_ms(1); clear();}
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_segment_byte14:
	DECFSZ     R13+0, 1
	GOTO       L_segment_byte14
	DECFSZ     R12+0, 1
	GOTO       L_segment_byte14
	CALL       _clear+0
L_segment_byte13:
;define.h,50 :: 		}
L_end_segment_byte:
	RETURN
; end of _segment_byte

_delay:

;define.h,52 :: 		void delay(unsigned int time){
;define.h,54 :: 		rly1 = 0; rly2 = 0; rly3 = 0; rly4 = 0;
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;define.h,55 :: 		for(count=0;count<=time;count++){
	CLRF       delay_count_L0+0
	CLRF       delay_count_L0+1
L_delay15:
	MOVF       delay_count_L0+1, 0
	SUBWF      FARG_delay_time+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay56
	MOVF       delay_count_L0+0, 0
	SUBWF      FARG_delay_time+0, 0
L__delay56:
	BTFSS      STATUS+0, 0
	GOTO       L_delay16
;define.h,56 :: 		for(count2=0;count2<166;count2++){
	CLRF       delay_count2_L0+0
	CLRF       delay_count2_L0+1
L_delay18:
	MOVLW      0
	SUBWF      delay_count2_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay57
	MOVLW      166
	SUBWF      delay_count2_L0+0, 0
L__delay57:
	BTFSC      STATUS+0, 0
	GOTO       L_delay19
;define.h,57 :: 		segment_byte(0, count);
	CLRF       FARG_segment_byte_seg+0
	MOVF       delay_count_L0+0, 0
	MOVWF      FARG_segment_byte_value+0
	MOVF       delay_count_L0+1, 0
	MOVWF      FARG_segment_byte_value+1
	CALL       _segment_byte+0
;define.h,58 :: 		dash_show();
	CALL       _dash_show+0
;define.h,56 :: 		for(count2=0;count2<166;count2++){
	INCF       delay_count2_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       delay_count2_L0+1, 1
;define.h,59 :: 		}
	GOTO       L_delay18
L_delay19:
;define.h,55 :: 		for(count=0;count<=time;count++){
	INCF       delay_count_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       delay_count_L0+1, 1
;define.h,60 :: 		}
	GOTO       L_delay15
L_delay16:
;define.h,61 :: 		}
L_end_delay:
	RETURN
; end of _delay

_check_inADC:

;define.h,63 :: 		void check_inADC(){
;define.h,64 :: 		in_ADC = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _in_ADC+0
	MOVF       R0+1, 0
	MOVWF      _in_ADC+1
;define.h,65 :: 		in_ADC += in_volt_adj;
	MOVF       _in_volt_adj+0, 0
	ADDWF      R0+0, 0
	MOVWF      _in_ADC+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _in_volt_adj+1, 0
	MOVWF      _in_ADC+1
;define.h,66 :: 		}
L_end_check_inADC:
	RETURN
; end of _check_inADC

_Low_volt:

;define.h,68 :: 		void Low_volt(){
;define.h,69 :: 		rly1 = 0; rly2 = 0; rly3 = 0; rly4 = 0;
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;define.h,70 :: 		while(1){
L_Low_volt21:
;define.h,71 :: 		display = font_a[1];                    //L
	MOVLW      199
	MOVWF      PORTB+0
;define.h,72 :: 		digit_1 = ON; delay_ms(1); clear();
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_Low_volt23:
	DECFSZ     R13+0, 1
	GOTO       L_Low_volt23
	DECFSZ     R12+0, 1
	GOTO       L_Low_volt23
	CALL       _clear+0
;define.h,73 :: 		display = font_a[2];                    //O
	MOVLW      192
	MOVWF      PORTB+0
;define.h,74 :: 		digit_2 = ON; delay_ms(1); clear();
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_Low_volt24:
	DECFSZ     R13+0, 1
	GOTO       L_Low_volt24
	DECFSZ     R12+0, 1
	GOTO       L_Low_volt24
	CALL       _clear+0
;define.h,77 :: 		display = font_a[3];                    //b
	MOVLW      193
	MOVWF      PORTB+0
;define.h,78 :: 		digit_3 = ON; delay_ms(1); clear();
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_Low_volt25:
	DECFSZ     R13+0, 1
	GOTO       L_Low_volt25
	DECFSZ     R12+0, 1
	GOTO       L_Low_volt25
	CALL       _clear+0
;define.h,79 :: 		dash_show();                        //OFF
	CALL       _dash_show+0
;define.h,80 :: 		check_inADC();
	CALL       _check_inADC+0
;define.h,81 :: 		if(in_ADC >= Lo_cut + 5)break;
	MOVLW      5
	ADDWF      _Lo_cut+0, 0
	MOVWF      R1+0
	MOVF       _Lo_cut+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R1+1
	MOVLW      128
	XORWF      _in_ADC+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Low_volt60
	MOVF       R1+0, 0
	SUBWF      _in_ADC+0, 0
L__Low_volt60:
	BTFSS      STATUS+0, 0
	GOTO       L_Low_volt26
	GOTO       L_Low_volt22
L_Low_volt26:
;define.h,82 :: 		};
	GOTO       L_Low_volt21
L_Low_volt22:
;define.h,83 :: 		if(!delay_key) delay(min_time);
	BTFSC      RA4_bit+0, BitPos(RA4_bit+0)
	GOTO       L_Low_volt27
	MOVF       _min_time+0, 0
	MOVWF      FARG_delay_time+0
	MOVF       _min_time+1, 0
	MOVWF      FARG_delay_time+1
	CALL       _delay+0
	GOTO       L_Low_volt28
L_Low_volt27:
;define.h,84 :: 		else delay(max_time);
	MOVF       _max_time+0, 0
	MOVWF      FARG_delay_time+0
	MOVF       _max_time+1, 0
	MOVWF      FARG_delay_time+1
	CALL       _delay+0
L_Low_volt28:
;define.h,85 :: 		}
L_end_Low_volt:
	RETURN
; end of _Low_volt

_Hi_volt:

;define.h,87 :: 		void Hi_volt(){
;define.h,88 :: 		rly1 = 0; rly2 = 0; rly3 = 0; rly4 = 0;
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;define.h,89 :: 		while(1){
L_Hi_volt29:
;define.h,90 :: 		display = font_a[4];                    //H
	MOVLW      137
	MOVWF      PORTB+0
;define.h,91 :: 		digit_1 = ON; delay_ms(1); clear();
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_Hi_volt31:
	DECFSZ     R13+0, 1
	GOTO       L_Hi_volt31
	DECFSZ     R12+0, 1
	GOTO       L_Hi_volt31
	CALL       _clear+0
;define.h,92 :: 		display = font_a[5];                    //I
	MOVLW      207
	MOVWF      PORTB+0
;define.h,93 :: 		digit_2 = ON; delay_ms(1); clear();
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_Hi_volt32:
	DECFSZ     R13+0, 1
	GOTO       L_Hi_volt32
	DECFSZ     R12+0, 1
	GOTO       L_Hi_volt32
	CALL       _clear+0
;define.h,96 :: 		display = font_a[3];                    //b
	MOVLW      193
	MOVWF      PORTB+0
;define.h,97 :: 		digit_3 = ON; delay_ms(1); clear();
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_Hi_volt33:
	DECFSZ     R13+0, 1
	GOTO       L_Hi_volt33
	DECFSZ     R12+0, 1
	GOTO       L_Hi_volt33
	CALL       _clear+0
;define.h,98 :: 		dash_show();                        //OFF
	CALL       _dash_show+0
;define.h,99 :: 		check_inADC();
	CALL       _check_inADC+0
;define.h,100 :: 		if(in_ADC <= Hi_cut - 5)break;
	MOVLW      5
	SUBWF      _Hi_cut+0, 0
	MOVWF      R1+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _Hi_cut+1, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _in_ADC+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Hi_volt62
	MOVF       _in_ADC+0, 0
	SUBWF      R1+0, 0
L__Hi_volt62:
	BTFSS      STATUS+0, 0
	GOTO       L_Hi_volt34
	GOTO       L_Hi_volt30
L_Hi_volt34:
;define.h,101 :: 		}
	GOTO       L_Hi_volt29
L_Hi_volt30:
;define.h,102 :: 		if(!delay_key) delay(min_time);
	BTFSC      RA4_bit+0, BitPos(RA4_bit+0)
	GOTO       L_Hi_volt35
	MOVF       _min_time+0, 0
	MOVWF      FARG_delay_time+0
	MOVF       _min_time+1, 0
	MOVWF      FARG_delay_time+1
	CALL       _delay+0
	GOTO       L_Hi_volt36
L_Hi_volt35:
;define.h,103 :: 		else delay(max_time);
	MOVF       _max_time+0, 0
	MOVWF      FARG_delay_time+0
	MOVF       _max_time+1, 0
	MOVWF      FARG_delay_time+1
	CALL       _delay+0
L_Hi_volt36:
;define.h,104 :: 		}
L_end_Hi_volt:
	RETURN
; end of _Hi_volt

_check_AVR:

;define.h,106 :: 		void check_AVR(int avr_ADC){
;define.h,107 :: 		if(avr_ADC >= rly1_cut)rly1 = 1;
	MOVLW      128
	XORWF      FARG_check_AVR_avr_ADC+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _rly1_cut+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_AVR64
	MOVF       _rly1_cut+0, 0
	SUBWF      FARG_check_AVR_avr_ADC+0, 0
L__check_AVR64:
	BTFSS      STATUS+0, 0
	GOTO       L_check_AVR37
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
L_check_AVR37:
;define.h,108 :: 		if(avr_ADC <= rly1_cut - 5)rly1 = 0;
	MOVLW      5
	SUBWF      _rly1_cut+0, 0
	MOVWF      R1+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _rly1_cut+1, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_check_AVR_avr_ADC+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_AVR65
	MOVF       FARG_check_AVR_avr_ADC+0, 0
	SUBWF      R1+0, 0
L__check_AVR65:
	BTFSS      STATUS+0, 0
	GOTO       L_check_AVR38
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
L_check_AVR38:
;define.h,109 :: 		if(avr_ADC >= rly2_cut)rly2 = 1;
	MOVLW      128
	XORWF      FARG_check_AVR_avr_ADC+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _rly2_cut+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_AVR66
	MOVF       _rly2_cut+0, 0
	SUBWF      FARG_check_AVR_avr_ADC+0, 0
L__check_AVR66:
	BTFSS      STATUS+0, 0
	GOTO       L_check_AVR39
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
L_check_AVR39:
;define.h,110 :: 		if(avr_ADC <= rly2_cut - 5)rly2 = 0;
	MOVLW      5
	SUBWF      _rly2_cut+0, 0
	MOVWF      R1+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _rly2_cut+1, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_check_AVR_avr_ADC+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_AVR67
	MOVF       FARG_check_AVR_avr_ADC+0, 0
	SUBWF      R1+0, 0
L__check_AVR67:
	BTFSS      STATUS+0, 0
	GOTO       L_check_AVR40
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
L_check_AVR40:
;define.h,111 :: 		if(avr_ADC >= rly3_cut)rly3 = 1;
	MOVLW      128
	XORWF      FARG_check_AVR_avr_ADC+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _rly3_cut+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_AVR68
	MOVF       _rly3_cut+0, 0
	SUBWF      FARG_check_AVR_avr_ADC+0, 0
L__check_AVR68:
	BTFSS      STATUS+0, 0
	GOTO       L_check_AVR41
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
L_check_AVR41:
;define.h,112 :: 		if(avr_ADC <= rly3_cut - 5)rly3 = 0;
	MOVLW      5
	SUBWF      _rly3_cut+0, 0
	MOVWF      R1+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _rly3_cut+1, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_check_AVR_avr_ADC+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_AVR69
	MOVF       FARG_check_AVR_avr_ADC+0, 0
	SUBWF      R1+0, 0
L__check_AVR69:
	BTFSS      STATUS+0, 0
	GOTO       L_check_AVR42
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
L_check_AVR42:
;define.h,113 :: 		if(avr_ADC >= rly4_cut)rly4 = 1;
	MOVLW      128
	XORWF      FARG_check_AVR_avr_ADC+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _rly4_cut+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_AVR70
	MOVF       _rly4_cut+0, 0
	SUBWF      FARG_check_AVR_avr_ADC+0, 0
L__check_AVR70:
	BTFSS      STATUS+0, 0
	GOTO       L_check_AVR43
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
L_check_AVR43:
;define.h,114 :: 		if(avr_ADC <= rly4_cut - 5)rly4 = 0;
	MOVLW      5
	SUBWF      _rly4_cut+0, 0
	MOVWF      R1+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _rly4_cut+1, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_check_AVR_avr_ADC+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_AVR71
	MOVF       FARG_check_AVR_avr_ADC+0, 0
	SUBWF      R1+0, 0
L__check_AVR71:
	BTFSS      STATUS+0, 0
	GOTO       L_check_AVR44
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
L_check_AVR44:
;define.h,115 :: 		if(avr_ADC <= Lo_cut)Low_volt();
	MOVLW      128
	XORWF      _Lo_cut+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_check_AVR_avr_ADC+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_AVR72
	MOVF       FARG_check_AVR_avr_ADC+0, 0
	SUBWF      _Lo_cut+0, 0
L__check_AVR72:
	BTFSS      STATUS+0, 0
	GOTO       L_check_AVR45
	CALL       _Low_volt+0
L_check_AVR45:
;define.h,116 :: 		if(avr_ADC >= Hi_cut)Hi_volt();
	MOVLW      128
	XORWF      FARG_check_AVR_avr_ADC+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _Hi_cut+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_AVR73
	MOVF       _Hi_cut+0, 0
	SUBWF      FARG_check_AVR_avr_ADC+0, 0
L__check_AVR73:
	BTFSS      STATUS+0, 0
	GOTO       L_check_AVR46
	CALL       _Hi_volt+0
L_check_AVR46:
;define.h,117 :: 		}
L_end_check_AVR:
	RETURN
; end of _check_AVR

_voltmeter:

;define.h,119 :: 		void voltmeter(){
;define.h,120 :: 		check_inADC();
	CALL       _check_inADC+0
;define.h,121 :: 		out_ADC = 220;
	MOVLW      220
	MOVWF      _out_ADC+0
	CLRF       _out_ADC+1
;define.h,122 :: 		segment_byte(0, in_ADC);
	CLRF       FARG_segment_byte_seg+0
	MOVF       _in_ADC+0, 0
	MOVWF      FARG_segment_byte_value+0
	MOVF       _in_ADC+1, 0
	MOVWF      FARG_segment_byte_value+1
	CALL       _segment_byte+0
;define.h,123 :: 		segment_byte(1, out_ADC);
	MOVLW      1
	MOVWF      FARG_segment_byte_seg+0
	MOVF       _out_ADC+0, 0
	MOVWF      FARG_segment_byte_value+0
	MOVF       _out_ADC+1, 0
	MOVWF      FARG_segment_byte_value+1
	CALL       _segment_byte+0
;define.h,124 :: 		check_AVR(in_ADC);
	MOVF       _in_ADC+0, 0
	MOVWF      FARG_check_AVR_avr_ADC+0
	MOVF       _in_ADC+1, 0
	MOVWF      FARG_check_AVR_avr_ADC+1
	CALL       _check_AVR+0
;define.h,125 :: 		}
L_end_voltmeter:
	RETURN
; end of _voltmeter

_defult:

;stabilazer.c,17 :: 		void defult(){
;stabilazer.c,18 :: 		min_time = 30;    // delay time [in second]
	MOVLW      30
	MOVWF      _min_time+0
	MOVLW      0
	MOVWF      _min_time+1
;stabilazer.c,19 :: 		max_time = 300;   // delay time [in second]
	MOVLW      44
	MOVWF      _max_time+0
	MOVLW      1
	MOVWF      _max_time+1
;stabilazer.c,20 :: 		in_volt_adj = 45; // adjust Input Voltage internally
	MOVLW      45
	MOVWF      _in_volt_adj+0
	MOVLW      0
	MOVWF      _in_volt_adj+1
;stabilazer.c,21 :: 		Lo_cut = 150;
	MOVLW      150
	MOVWF      _Lo_cut+0
	CLRF       _Lo_cut+1
;stabilazer.c,22 :: 		rly1_cut = 180;
	MOVLW      180
	MOVWF      _rly1_cut+0
	CLRF       _rly1_cut+1
;stabilazer.c,23 :: 		rly2_cut = 200;
	MOVLW      200
	MOVWF      _rly2_cut+0
	CLRF       _rly2_cut+1
;stabilazer.c,24 :: 		rly3_cut = 240;
	MOVLW      240
	MOVWF      _rly3_cut+0
	CLRF       _rly3_cut+1
;stabilazer.c,25 :: 		rly4_cut = 260;
	MOVLW      4
	MOVWF      _rly4_cut+0
	MOVLW      1
	MOVWF      _rly4_cut+1
;stabilazer.c,26 :: 		Hi_cut = 280;
	MOVLW      24
	MOVWF      _Hi_cut+0
	MOVLW      1
	MOVWF      _Hi_cut+1
;stabilazer.c,27 :: 		}
L_end_defult:
	RETURN
; end of _defult

_main:

;stabilazer.c,29 :: 		void main(){
;stabilazer.c,30 :: 		hardware_init();
	CALL       _hardware_init+0
;stabilazer.c,31 :: 		defult();
	CALL       _defult+0
;stabilazer.c,32 :: 		if(!delay_key) delay(min_time);
	BTFSC      RA4_bit+0, BitPos(RA4_bit+0)
	GOTO       L_main47
	MOVF       _min_time+0, 0
	MOVWF      FARG_delay_time+0
	MOVF       _min_time+1, 0
	MOVWF      FARG_delay_time+1
	CALL       _delay+0
	GOTO       L_main48
L_main47:
;stabilazer.c,33 :: 		else delay(max_time);
	MOVF       _max_time+0, 0
	MOVWF      FARG_delay_time+0
	MOVF       _max_time+1, 0
	MOVWF      FARG_delay_time+1
	CALL       _delay+0
L_main48:
;stabilazer.c,35 :: 		while(1){
L_main49:
;stabilazer.c,36 :: 		voltmeter();
	CALL       _voltmeter+0
;stabilazer.c,37 :: 		}
	GOTO       L_main49
;stabilazer.c,38 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
