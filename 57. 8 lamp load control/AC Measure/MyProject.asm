
_show_value:

;MyProject.c,29 :: 		void show_value(int v){
;MyProject.c,30 :: 		value[0] = v / 1000 + 48;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_show_value_v+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_value_v+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _value+0
;MyProject.c,31 :: 		value[1] = (v % 1000) / 100 + 48;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_show_value_v+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_value_v+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _value+1
;MyProject.c,32 :: 		value[2] = (v % 100) / 10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_show_value_v+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_value_v+1, 0
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
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _value+2
;MyProject.c,33 :: 		value[3] = v % 10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_show_value_v+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_value_v+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _value+3
;MyProject.c,34 :: 		value[4] = 0;
	CLRF       _value+4
;MyProject.c,35 :: 		lcd_out(1,14, value);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _value+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,36 :: 		return;
;MyProject.c,37 :: 		}
L_end_show_value:
	RETURN
; end of _show_value

_show_relay:

;MyProject.c,39 :: 		void show_relay(int v, char r, char c){
;MyProject.c,40 :: 		value[0] = v / 1000 + 48;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_show_relay_v+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_relay_v+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _value+0
;MyProject.c,41 :: 		value[1] = (v % 1000) / 100 + 48;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_show_relay_v+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_relay_v+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _value+1
;MyProject.c,42 :: 		value[2] = (v % 100) / 10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_show_relay_v+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_relay_v+1, 0
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
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _value+2
;MyProject.c,43 :: 		value[3] = v % 10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_show_relay_v+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_relay_v+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _value+3
;MyProject.c,44 :: 		value[4] = 0;
	CLRF       _value+4
;MyProject.c,45 :: 		lcd_out(r,c, value);
	MOVF       FARG_show_relay_r+0, 0
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       FARG_show_relay_c+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _value+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,46 :: 		return;
;MyProject.c,47 :: 		}
L_end_show_relay:
	RETURN
; end of _show_relay

_check_60:

;MyProject.c,49 :: 		int check_60(){
;MyProject.c,51 :: 		if(adc_60 < 5) return amp_60 = 0;
	MOVLW      5
	SUBWF      _adc_60+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_600
	CLRF       _amp_60+0
	CLRF       _amp_60+1
	CLRF       R0+0
	CLRF       R0+1
	GOTO       L_end_check_60
L_check_600:
;MyProject.c,53 :: 		if(adc_60 > 8 && adc_60 < 12){
	MOVF       _adc_60+0, 0
	SUBLW      8
	BTFSC      STATUS+0, 0
	GOTO       L_check_603
	MOVLW      12
	SUBWF      _adc_60+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_603
L__check_6056:
;MyProject.c,54 :: 		amp_60 = 272*1;
	MOVLW      16
	MOVWF      _amp_60+0
	MOVLW      1
	MOVWF      _amp_60+1
;MyProject.c,55 :: 		return amp_60;
	MOVLW      16
	MOVWF      R0+0
	MOVLW      1
	MOVWF      R0+1
	GOTO       L_end_check_60
;MyProject.c,56 :: 		}
L_check_603:
;MyProject.c,57 :: 		else if( adc_60 > 38 && adc_60 < 45){
	MOVF       _adc_60+0, 0
	SUBLW      38
	BTFSC      STATUS+0, 0
	GOTO       L_check_607
	MOVLW      45
	SUBWF      _adc_60+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_607
L__check_6055:
;MyProject.c,58 :: 		amp_60 = 272*2;
	MOVLW      32
	MOVWF      _amp_60+0
	MOVLW      2
	MOVWF      _amp_60+1
;MyProject.c,59 :: 		return amp_60;
	MOVLW      32
	MOVWF      R0+0
	MOVLW      2
	MOVWF      R0+1
	GOTO       L_end_check_60
;MyProject.c,60 :: 		}
L_check_607:
;MyProject.c,61 :: 		else if( adc_60 > 65 && adc_60 < 72){
	MOVF       _adc_60+0, 0
	SUBLW      65
	BTFSC      STATUS+0, 0
	GOTO       L_check_6011
	MOVLW      72
	SUBWF      _adc_60+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_6011
L__check_6054:
;MyProject.c,62 :: 		amp_60 = 272*3;
	MOVLW      48
	MOVWF      _amp_60+0
	MOVLW      3
	MOVWF      _amp_60+1
;MyProject.c,63 :: 		return amp_60;
	MOVLW      48
	MOVWF      R0+0
	MOVLW      3
	MOVWF      R0+1
	GOTO       L_end_check_60
;MyProject.c,64 :: 		}
L_check_6011:
;MyProject.c,65 :: 		else if( adc_60 > 85 && adc_60 < 95){
	MOVF       _adc_60+0, 0
	SUBLW      85
	BTFSC      STATUS+0, 0
	GOTO       L_check_6015
	MOVLW      95
	SUBWF      _adc_60+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_6015
L__check_6053:
;MyProject.c,66 :: 		amp_60 = 272*4;
	MOVLW      64
	MOVWF      _amp_60+0
	MOVLW      4
	MOVWF      _amp_60+1
;MyProject.c,67 :: 		return amp_60;
	MOVLW      64
	MOVWF      R0+0
	MOVLW      4
	MOVWF      R0+1
	GOTO       L_end_check_60
;MyProject.c,68 :: 		}
L_check_6015:
;MyProject.c,69 :: 		}
L_end_check_60:
	RETURN
; end of _check_60

_check_100:

;MyProject.c,71 :: 		int check_100(){
;MyProject.c,72 :: 		if(adc_100 < 5) return amp_100 = 0;
	MOVLW      5
	SUBWF      _adc_100+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_10016
	CLRF       _amp_100+0
	CLRF       _amp_100+1
	CLRF       R0+0
	CLRF       R0+1
	GOTO       L_end_check_100
L_check_10016:
;MyProject.c,74 :: 		if(adc_100 > 20 && adc_100 < 30 ){
	MOVF       _adc_100+0, 0
	SUBLW      20
	BTFSC      STATUS+0, 0
	GOTO       L_check_10019
	MOVLW      30
	SUBWF      _adc_100+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_10019
L__check_10060:
;MyProject.c,75 :: 		amp_100 = 450*1;
	MOVLW      194
	MOVWF      _amp_100+0
	MOVLW      1
	MOVWF      _amp_100+1
;MyProject.c,76 :: 		return amp_100;
	MOVLW      194
	MOVWF      R0+0
	MOVLW      1
	MOVWF      R0+1
	GOTO       L_end_check_100
;MyProject.c,77 :: 		}
L_check_10019:
;MyProject.c,78 :: 		else if(adc_100 > 65 && adc_100 < 75){
	MOVF       _adc_100+0, 0
	SUBLW      65
	BTFSC      STATUS+0, 0
	GOTO       L_check_10023
	MOVLW      75
	SUBWF      _adc_100+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_10023
L__check_10059:
;MyProject.c,79 :: 		amp_100 = 450*2;
	MOVLW      132
	MOVWF      _amp_100+0
	MOVLW      3
	MOVWF      _amp_100+1
;MyProject.c,80 :: 		return amp_100;
	MOVLW      132
	MOVWF      R0+0
	MOVLW      3
	MOVWF      R0+1
	GOTO       L_end_check_100
;MyProject.c,81 :: 		}
L_check_10023:
;MyProject.c,82 :: 		else if(adc_100 > 90 && adc_100 < 100){
	MOVF       _adc_100+0, 0
	SUBLW      90
	BTFSC      STATUS+0, 0
	GOTO       L_check_10027
	MOVLW      100
	SUBWF      _adc_100+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_10027
L__check_10058:
;MyProject.c,83 :: 		amp_100 = 450*3;
	MOVLW      70
	MOVWF      _amp_100+0
	MOVLW      5
	MOVWF      _amp_100+1
;MyProject.c,84 :: 		return amp_100;
	MOVLW      70
	MOVWF      R0+0
	MOVLW      5
	MOVWF      R0+1
	GOTO       L_end_check_100
;MyProject.c,85 :: 		}
L_check_10027:
;MyProject.c,86 :: 		else if(adc_100 > 110 && adc_100 < 125){
	MOVF       _adc_100+0, 0
	SUBLW      110
	BTFSC      STATUS+0, 0
	GOTO       L_check_10031
	MOVLW      125
	SUBWF      _adc_100+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_10031
L__check_10057:
;MyProject.c,87 :: 		amp_100 = 450*4;
	MOVLW      8
	MOVWF      _amp_100+0
	MOVLW      7
	MOVWF      _amp_100+1
;MyProject.c,88 :: 		return amp_100;
	MOVLW      8
	MOVWF      R0+0
	MOVLW      7
	MOVWF      R0+1
	GOTO       L_end_check_100
;MyProject.c,89 :: 		}
L_check_10031:
;MyProject.c,90 :: 		}
L_end_check_100:
	RETURN
; end of _check_100

_main:

;MyProject.c,92 :: 		void main() {
;MyProject.c,93 :: 		TRISC = 0;
	CLRF       TRISC+0
;MyProject.c,94 :: 		PORTC = 255;
	MOVLW      255
	MOVWF      PORTC+0
;MyProject.c,95 :: 		lcd_init();
	CALL       _Lcd_Init+0
;MyProject.c,96 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,97 :: 		lcd_out(1,1, "AC:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,98 :: 		lcd_out(1,8,"V");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,99 :: 		lcd_out(1,11,"I:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,100 :: 		lcd_out(1,19,"mA");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      19
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,101 :: 		lcd_out(2,1,"R1: HIGH");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,102 :: 		lcd_out(2,11,"R4:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,103 :: 		lcd_out(3,1,"R2:");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,104 :: 		lcd_out(3,11,"R5:");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,105 :: 		lcd_out(4,1,"R3:");
	MOVLW      4
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,107 :: 		while(1){
L_main32:
;MyProject.c,108 :: 		adc_60 = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc_60+0
;MyProject.c,109 :: 		adc_100 = adc_read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc_100+0
;MyProject.c,119 :: 		voltage = 219 - (value[3] - 48);
	MOVLW      48
	SUBWF      _value+3, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	SUBLW      219
	MOVWF      FLOC__main+0
	MOVF       FLOC__main+0, 0
	MOVWF      _voltage+0
;MyProject.c,120 :: 		volt[0] = voltage / 100 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _volt+0
;MyProject.c,121 :: 		volt[1] = (voltage % 100) / 10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _volt+1
;MyProject.c,122 :: 		volt[2] = voltage % 10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _volt+2
;MyProject.c,123 :: 		volt[3] = 0;
	CLRF       _volt+3
;MyProject.c,124 :: 		lcd_out(1,5, volt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _volt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,125 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main34:
	DECFSZ     R13+0, 1
	GOTO       L_main34
	DECFSZ     R12+0, 1
	GOTO       L_main34
	DECFSZ     R11+0, 1
	GOTO       L_main34
	NOP
	NOP
;MyProject.c,127 :: 		check_60();
	CALL       _check_60+0
;MyProject.c,128 :: 		check_100();
	CALL       _check_100+0
;MyProject.c,129 :: 		amp = amp_100 + amp_60;
	MOVF       _amp_60+0, 0
	ADDWF      _amp_100+0, 0
	MOVWF      R0+0
	MOVF       _amp_100+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _amp_60+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _amp+0
	MOVF       R0+1, 0
	MOVWF      _amp+1
;MyProject.c,130 :: 		show_value(amp);
	MOVF       R0+0, 0
	MOVWF      FARG_show_value_v+0
	MOVF       R0+1, 0
	MOVWF      FARG_show_value_v+1
	CALL       _show_value+0
;MyProject.c,132 :: 		if( amp > 1100 && amp < 1600){
	MOVLW      128
	XORLW      4
	MOVWF      R0+0
	MOVLW      128
	XORWF      _amp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main69
	MOVF       _amp+0, 0
	SUBLW      76
L__main69:
	BTFSC      STATUS+0, 0
	GOTO       L_main37
	MOVLW      128
	XORWF      _amp+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      6
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main70
	MOVLW      64
	SUBWF      _amp+0, 0
L__main70:
	BTFSC      STATUS+0, 0
	GOTO       L_main37
L__main63:
;MyProject.c,133 :: 		if(relay2 == 1) show_relay(amp,3,5);
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_main38
	MOVF       _amp+0, 0
	MOVWF      FARG_show_relay_v+0
	MOVF       _amp+1, 0
	MOVWF      FARG_show_relay_v+1
	MOVLW      3
	MOVWF      FARG_show_relay_r+0
	MOVLW      5
	MOVWF      FARG_show_relay_c+0
	CALL       _show_relay+0
L_main38:
;MyProject.c,134 :: 		relay2 = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
;MyProject.c,135 :: 		}
	GOTO       L_main39
L_main37:
;MyProject.c,137 :: 		relay2 = 1;
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
;MyProject.c,138 :: 		lcd_out(3,5,"HIGH");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,139 :: 		}
L_main39:
;MyProject.c,141 :: 		if( amp > 1600 && amp < 2100){
	MOVLW      128
	XORLW      6
	MOVWF      R0+0
	MOVLW      128
	XORWF      _amp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main71
	MOVF       _amp+0, 0
	SUBLW      64
L__main71:
	BTFSC      STATUS+0, 0
	GOTO       L_main42
	MOVLW      128
	XORWF      _amp+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      8
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main72
	MOVLW      52
	SUBWF      _amp+0, 0
L__main72:
	BTFSC      STATUS+0, 0
	GOTO       L_main42
L__main62:
;MyProject.c,142 :: 		if(relay3 == 1) show_relay(amp,4,5);
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_main43
	MOVF       _amp+0, 0
	MOVWF      FARG_show_relay_v+0
	MOVF       _amp+1, 0
	MOVWF      FARG_show_relay_v+1
	MOVLW      4
	MOVWF      FARG_show_relay_r+0
	MOVLW      5
	MOVWF      FARG_show_relay_c+0
	CALL       _show_relay+0
L_main43:
;MyProject.c,143 :: 		relay3 = 0;
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;MyProject.c,144 :: 		}
	GOTO       L_main44
L_main42:
;MyProject.c,146 :: 		relay3 = 1;
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
;MyProject.c,147 :: 		lcd_out(4,5,"HIGH");
	MOVLW      4
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,148 :: 		}
L_main44:
;MyProject.c,150 :: 		if( amp > 2100 && amp < 2800){
	MOVLW      128
	XORLW      8
	MOVWF      R0+0
	MOVLW      128
	XORWF      _amp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main73
	MOVF       _amp+0, 0
	SUBLW      52
L__main73:
	BTFSC      STATUS+0, 0
	GOTO       L_main47
	MOVLW      128
	XORWF      _amp+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      10
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main74
	MOVLW      240
	SUBWF      _amp+0, 0
L__main74:
	BTFSC      STATUS+0, 0
	GOTO       L_main47
L__main61:
;MyProject.c,151 :: 		if(relay4 == 1) show_relay(amp,2,15);
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_main48
	MOVF       _amp+0, 0
	MOVWF      FARG_show_relay_v+0
	MOVF       _amp+1, 0
	MOVWF      FARG_show_relay_v+1
	MOVLW      2
	MOVWF      FARG_show_relay_r+0
	MOVLW      15
	MOVWF      FARG_show_relay_c+0
	CALL       _show_relay+0
L_main48:
;MyProject.c,152 :: 		relay4 = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;MyProject.c,153 :: 		}
	GOTO       L_main49
L_main47:
;MyProject.c,155 :: 		relay4 = 1;
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
;MyProject.c,156 :: 		lcd_out(2,15,"HIGH");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,157 :: 		}
L_main49:
;MyProject.c,159 :: 		if( amp > 2800){
	MOVLW      128
	XORLW      10
	MOVWF      R0+0
	MOVLW      128
	XORWF      _amp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main75
	MOVF       _amp+0, 0
	SUBLW      240
L__main75:
	BTFSC      STATUS+0, 0
	GOTO       L_main50
;MyProject.c,160 :: 		if(relay5 == 1) show_relay(amp,3,15);
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_main51
	MOVF       _amp+0, 0
	MOVWF      FARG_show_relay_v+0
	MOVF       _amp+1, 0
	MOVWF      FARG_show_relay_v+1
	MOVLW      3
	MOVWF      FARG_show_relay_r+0
	MOVLW      15
	MOVWF      FARG_show_relay_c+0
	CALL       _show_relay+0
L_main51:
;MyProject.c,161 :: 		relay5 = 0;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
;MyProject.c,162 :: 		}
	GOTO       L_main52
L_main50:
;MyProject.c,164 :: 		relay5 = 1;
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
;MyProject.c,165 :: 		lcd_out(3,15,"HIGH");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,166 :: 		}
L_main52:
;MyProject.c,168 :: 		}
	GOTO       L_main32
;MyProject.c,169 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
