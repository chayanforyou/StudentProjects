
_humidity:

;green2.c,28 :: 		short humidity(){
;green2.c,29 :: 		Dht11_Start();
	CALL       _DHT11_Start+0
;green2.c,30 :: 		DHT11_Read();
	CALL       _DHT11_Read+0
;green2.c,32 :: 		if(DHT11_CHKSM==((DHT11_TMP>>8)+(DHT11_HUM>>8)+(DHT11_TMP&0xff)+(DHT11_HUM&0xff))){
	MOVF       _DHT11_TMP+1, 0
	MOVWF      R4+0
	CLRF       R4+1
	MOVF       _DHT11_HUM+1, 0
	MOVWF      R0+0
	CLRF       R0+1
	MOVF       R0+0, 0
	ADDWF      R4+0, 0
	MOVWF      R2+0
	MOVF       R4+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      R2+1
	MOVLW      255
	ANDWF      _DHT11_TMP+0, 0
	MOVWF      R0+0
	MOVF       _DHT11_TMP+1, 0
	MOVWF      R0+1
	MOVLW      0
	ANDWF      R0+1, 1
	MOVF       R0+0, 0
	ADDWF      R2+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R2+1, 1
	MOVLW      255
	ANDWF      _DHT11_HUM+0, 0
	MOVWF      R0+0
	MOVF       _DHT11_HUM+1, 0
	MOVWF      R0+1
	MOVLW      0
	ANDWF      R0+1, 1
	MOVF       R0+0, 0
	ADDWF      R2+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R2+1, 1
	MOVLW      0
	XORWF      R2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__humidity11
	MOVF       R2+0, 0
	XORWF      _DHT11_CHKSM+0, 0
L__humidity11:
	BTFSS      STATUS+0, 2
	GOTO       L_humidity0
;green2.c,33 :: 		return DHT11_HUM >> 8;
	MOVF       _DHT11_HUM+1, 0
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_humidity
;green2.c,34 :: 		}
L_humidity0:
;green2.c,35 :: 		}
L_end_humidity:
	RETURN
; end of _humidity

_char2lcd:

;green2.c,37 :: 		void char2lcd(char x, char y, char dta){
;green2.c,39 :: 		digit[0] = dta / 100 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_char2lcd_dta+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      char2lcd_digit_L0+0
;green2.c,40 :: 		digit[1] = (dta % 100) / 10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_char2lcd_dta+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      char2lcd_digit_L0+1
;green2.c,41 :: 		digit[2] = dta % 10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_char2lcd_dta+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      char2lcd_digit_L0+2
;green2.c,42 :: 		digit[3] = 0;
	CLRF       char2lcd_digit_L0+3
;green2.c,43 :: 		lcd_out(x, y, digit);
	MOVF       FARG_char2lcd_x+0, 0
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       FARG_char2lcd_y+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      char2lcd_digit_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;green2.c,44 :: 		}
L_end_char2lcd:
	RETURN
; end of _char2lcd

_main:

;green2.c,46 :: 		void main() {
;green2.c,47 :: 		TRISC = 0;
	CLRF       TRISC+0
;green2.c,48 :: 		PORTC = 0;
	CLRF       PORTC+0
;green2.c,49 :: 		lcd_init();
	CALL       _Lcd_Init+0
;green2.c,50 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;green2.c,51 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;green2.c,52 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
;green2.c,53 :: 		lcd_out(1,1,"Soil:    %     C");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_green2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;green2.c,54 :: 		lcd_chr(1,15, 223);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;green2.c,55 :: 		lcd_out(2,1,"Humidity:    %");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_green2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;green2.c,57 :: 		while(1){
L_main2:
;green2.c,58 :: 		soil = adc_read(2);
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _soil+0
;green2.c,59 :: 		temp = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
;green2.c,60 :: 		hum = humidity();
	CALL       _humidity+0
	MOVF       R0+0, 0
	MOVWF      _hum+0
;green2.c,62 :: 		soil = (255 - soil) / 2.55;
	MOVF       _soil+0, 0
	SUBLW      255
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	CALL       _int2double+0
	MOVLW      51
	MOVWF      R4+0
	MOVLW      51
	MOVWF      R4+1
	MOVLW      35
	MOVWF      R4+2
	MOVLW      128
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	CALL       _double2byte+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       FLOC__main+0, 0
	MOVWF      _soil+0
;green2.c,63 :: 		temp = temp * 1.96;
	MOVF       _temp+0, 0
	MOVWF      R0+0
	CALL       _byte2double+0
	MOVLW      72
	MOVWF      R4+0
	MOVLW      225
	MOVWF      R4+1
	MOVLW      122
	MOVWF      R4+2
	MOVLW      127
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2byte+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
;green2.c,65 :: 		char2lcd(1,7, soil);
	MOVLW      1
	MOVWF      FARG_char2lcd_x+0
	MOVLW      7
	MOVWF      FARG_char2lcd_y+0
	MOVF       FLOC__main+0, 0
	MOVWF      FARG_char2lcd_dta+0
	CALL       _char2lcd+0
;green2.c,66 :: 		char2lcd(1,12, temp);
	MOVLW      1
	MOVWF      FARG_char2lcd_x+0
	MOVLW      12
	MOVWF      FARG_char2lcd_y+0
	MOVF       _temp+0, 0
	MOVWF      FARG_char2lcd_dta+0
	CALL       _char2lcd+0
;green2.c,67 :: 		char2lcd(2,11, hum);
	MOVLW      2
	MOVWF      FARG_char2lcd_x+0
	MOVLW      11
	MOVWF      FARG_char2lcd_y+0
	MOVF       _hum+0, 0
	MOVWF      FARG_char2lcd_dta+0
	CALL       _char2lcd+0
;green2.c,69 :: 		if(temp > 26) light_rly = 0;
	MOVF       _temp+0, 0
	SUBLW      26
	BTFSC      STATUS+0, 0
	GOTO       L_main4
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
L_main4:
;green2.c,70 :: 		if(temp < 23) light_rly = 1;
	MOVLW      23
	SUBWF      _temp+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main5
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
L_main5:
;green2.c,72 :: 		if(hum > 55) fan_rly = 0;
	MOVF       _hum+0, 0
	SUBLW      55
	BTFSC      STATUS+0, 0
	GOTO       L_main6
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
L_main6:
;green2.c,73 :: 		if(hum < 55) fan_rly = 1;
	MOVLW      55
	SUBWF      _hum+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main7
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
L_main7:
;green2.c,75 :: 		if(soil > 70) motor_rly = 0;
	MOVF       _soil+0, 0
	SUBLW      70
	BTFSC      STATUS+0, 0
	GOTO       L_main8
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
L_main8:
;green2.c,76 :: 		if(soil < 30) motor_rly = 1;
	MOVLW      30
	SUBWF      _soil+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main9
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
L_main9:
;green2.c,77 :: 		}
	GOTO       L_main2
;green2.c,78 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
