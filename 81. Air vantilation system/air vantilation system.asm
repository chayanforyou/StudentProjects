
_main:

;air vantilation system.c,19 :: 		void main(){
;air vantilation system.c,20 :: 		trisC0_bit = 1;
	BSF        TRISC0_bit+0, BitPos(TRISC0_bit+0)
;air vantilation system.c,21 :: 		trisC3_bit = 0;
	BCF        TRISC3_bit+0, BitPos(TRISC3_bit+0)
;air vantilation system.c,22 :: 		lcd_init();
	CALL       _Lcd_Init+0
;air vantilation system.c,23 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;air vantilation system.c,25 :: 		lcd_out(1,1,"SensorValue: ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_air_32vantilation_32system+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;air vantilation system.c,26 :: 		lcd_out(2,1,"Motor: ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_air_32vantilation_32system+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;air vantilation system.c,28 :: 		while(1){
L_main0:
;air vantilation system.c,29 :: 		adc_value = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       FLOC__main+0, 0
	MOVWF      _adc_value+0
	MOVF       FLOC__main+1, 0
	MOVWF      _adc_value+1
;air vantilation system.c,30 :: 		txt[0] = (adc_value / 100) + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _txt+0
;air vantilation system.c,31 :: 		txt[1] = ((adc_value % 100) / 10) + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
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
	MOVWF      _txt+1
;air vantilation system.c,32 :: 		txt[2] = (adc_value % 10) + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _txt+2
;air vantilation system.c,33 :: 		lcd_out(1,14, txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;air vantilation system.c,34 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;air vantilation system.c,36 :: 		if(adc_value >= 15){
	MOVLW      128
	XORWF      _adc_value+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVLW      15
	SUBWF      _adc_value+0, 0
L__main6:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;air vantilation system.c,37 :: 		motor = 1;
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
;air vantilation system.c,38 :: 		lcd_out(2,8,"ON ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_air_32vantilation_32system+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;air vantilation system.c,39 :: 		}
	GOTO       L_main4
L_main3:
;air vantilation system.c,41 :: 		motor = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;air vantilation system.c,42 :: 		lcd_out(2,8,"OFF");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_air_32vantilation_32system+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;air vantilation system.c,43 :: 		}
L_main4:
;air vantilation system.c,44 :: 		}
	GOTO       L_main0
;air vantilation system.c,45 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
