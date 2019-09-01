
_DTMF_read:

;define.h,44 :: 		char DTMF_read(){
;define.h,45 :: 		char out = 0;
	CLRF       DTMF_read_out_L0+0
;define.h,46 :: 		if(dtmf_std){
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_DTMF_read0
;define.h,47 :: 		out.b0 = dtmf_q1;
	BTFSC      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L__DTMF_read43
	BCF        DTMF_read_out_L0+0, 0
	GOTO       L__DTMF_read44
L__DTMF_read43:
	BSF        DTMF_read_out_L0+0, 0
L__DTMF_read44:
;define.h,48 :: 		out.b1 = dtmf_q2;
	BTFSC      RE0_bit+0, BitPos(RE0_bit+0)
	GOTO       L__DTMF_read45
	BCF        DTMF_read_out_L0+0, 1
	GOTO       L__DTMF_read46
L__DTMF_read45:
	BSF        DTMF_read_out_L0+0, 1
L__DTMF_read46:
;define.h,49 :: 		out.b2 = dtmf_q3;
	BTFSC      RE1_bit+0, BitPos(RE1_bit+0)
	GOTO       L__DTMF_read47
	BCF        DTMF_read_out_L0+0, 2
	GOTO       L__DTMF_read48
L__DTMF_read47:
	BSF        DTMF_read_out_L0+0, 2
L__DTMF_read48:
;define.h,50 :: 		out.b3 = dtmf_q4;
	BTFSC      RE2_bit+0, BitPos(RE2_bit+0)
	GOTO       L__DTMF_read49
	BCF        DTMF_read_out_L0+0, 3
	GOTO       L__DTMF_read50
L__DTMF_read49:
	BSF        DTMF_read_out_L0+0, 3
L__DTMF_read50:
;define.h,51 :: 		}
L_DTMF_read0:
;define.h,52 :: 		return out;
	MOVF       DTMF_read_out_L0+0, 0
	MOVWF      R0+0
;define.h,53 :: 		}
L_end_DTMF_read:
	RETURN
; end of _DTMF_read

_servo1_0d:

;define.h,55 :: 		void servo1_0d(){
;define.h,56 :: 		servo_1 = 1;
	BSF        RD0_bit+0, BitPos(RD0_bit+0)
;define.h,57 :: 		delay_us(200);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo1_0d1:
	DECFSZ     R13+0, 1
	GOTO       L_servo1_0d1
	DECFSZ     R12+0, 1
	GOTO       L_servo1_0d1
;define.h,58 :: 		servo_1 = 0;
	BCF        RD0_bit+0, BitPos(RD0_bit+0)
;define.h,59 :: 		delay_us(19800);
	MOVLW      129
	MOVWF      R12+0
	MOVLW      145
	MOVWF      R13+0
L_servo1_0d2:
	DECFSZ     R13+0, 1
	GOTO       L_servo1_0d2
	DECFSZ     R12+0, 1
	GOTO       L_servo1_0d2
;define.h,60 :: 		}
L_end_servo1_0d:
	RETURN
; end of _servo1_0d

_servo1_180d:

;define.h,62 :: 		void servo1_180d(){
;define.h,63 :: 		servo_1 = 1;
	BSF        RD0_bit+0, BitPos(RD0_bit+0)
;define.h,64 :: 		delay_us(2200);
	MOVLW      15
	MOVWF      R12+0
	MOVLW      71
	MOVWF      R13+0
L_servo1_180d3:
	DECFSZ     R13+0, 1
	GOTO       L_servo1_180d3
	DECFSZ     R12+0, 1
	GOTO       L_servo1_180d3
	NOP
	NOP
;define.h,65 :: 		servo_1 = 0;
	BCF        RD0_bit+0, BitPos(RD0_bit+0)
;define.h,66 :: 		delay_us(17800);
	MOVLW      116
	MOVWF      R12+0
	MOVLW      148
	MOVWF      R13+0
L_servo1_180d4:
	DECFSZ     R13+0, 1
	GOTO       L_servo1_180d4
	DECFSZ     R12+0, 1
	GOTO       L_servo1_180d4
	NOP
;define.h,67 :: 		}
L_end_servo1_180d:
	RETURN
; end of _servo1_180d

_servo2_0d:

;define.h,69 :: 		void servo2_0d(){
;define.h,70 :: 		servo_2 = 1;
	BSF        RD1_bit+0, BitPos(RD1_bit+0)
;define.h,71 :: 		delay_us(400);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_servo2_0d5:
	DECFSZ     R13+0, 1
	GOTO       L_servo2_0d5
	DECFSZ     R12+0, 1
	GOTO       L_servo2_0d5
	NOP
	NOP
;define.h,72 :: 		servo_2 = 0;
	BCF        RD1_bit+0, BitPos(RD1_bit+0)
;define.h,73 :: 		delay_us(19600);
	MOVLW      128
	MOVWF      R12+0
	MOVLW      68
	MOVWF      R13+0
L_servo2_0d6:
	DECFSZ     R13+0, 1
	GOTO       L_servo2_0d6
	DECFSZ     R12+0, 1
	GOTO       L_servo2_0d6
	NOP
;define.h,74 :: 		}
L_end_servo2_0d:
	RETURN
; end of _servo2_0d

_servo2_180d:

;define.h,76 :: 		void servo2_180d(){
;define.h,77 :: 		servo_2 = 1;
	BSF        RD1_bit+0, BitPos(RD1_bit+0)
;define.h,78 :: 		delay_us(2200);
	MOVLW      15
	MOVWF      R12+0
	MOVLW      71
	MOVWF      R13+0
L_servo2_180d7:
	DECFSZ     R13+0, 1
	GOTO       L_servo2_180d7
	DECFSZ     R12+0, 1
	GOTO       L_servo2_180d7
	NOP
	NOP
;define.h,79 :: 		servo_2 = 0;
	BCF        RD1_bit+0, BitPos(RD1_bit+0)
;define.h,80 :: 		delay_us(17800);
	MOVLW      116
	MOVWF      R12+0
	MOVLW      148
	MOVWF      R13+0
L_servo2_180d8:
	DECFSZ     R13+0, 1
	GOTO       L_servo2_180d8
	DECFSZ     R12+0, 1
	GOTO       L_servo2_180d8
	NOP
;define.h,81 :: 		}
L_end_servo2_180d:
	RETURN
; end of _servo2_180d

_int2str:

;define.h,83 :: 		void int2str(char x, char y, int temp){
;define.h,85 :: 		digit[0] = temp / 1000 + 48;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_int2str_temp+0, 0
	MOVWF      R0+0
	MOVF       FARG_int2str_temp+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      int2str_digit_L0+0
;define.h,86 :: 		digit[1] = (temp % 1000) / 100 + 48;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_int2str_temp+0, 0
	MOVWF      R0+0
	MOVF       FARG_int2str_temp+1, 0
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
	MOVWF      int2str_digit_L0+1
;define.h,87 :: 		digit[2] = (temp % 100) / 10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_int2str_temp+0, 0
	MOVWF      R0+0
	MOVF       FARG_int2str_temp+1, 0
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
	MOVWF      int2str_digit_L0+2
;define.h,88 :: 		digit[3] = temp % 10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_int2str_temp+0, 0
	MOVWF      R0+0
	MOVF       FARG_int2str_temp+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      int2str_digit_L0+3
;define.h,89 :: 		lcd_chr(x,y, digit[0]);
	MOVF       FARG_int2str_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_int2str_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       int2str_digit_L0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;define.h,90 :: 		lcd_chr(x,y+1, digit[1]);
	MOVF       FARG_int2str_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       FARG_int2str_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       int2str_digit_L0+1, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;define.h,91 :: 		lcd_chr(x,y+2, digit[2]);
	MOVF       FARG_int2str_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	ADDWF      FARG_int2str_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       int2str_digit_L0+2, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;define.h,92 :: 		lcd_chr(x,y+3, digit[3]);
	MOVF       FARG_int2str_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	ADDWF      FARG_int2str_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       int2str_digit_L0+3, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;define.h,93 :: 		}
L_end_int2str:
	RETURN
; end of _int2str

_noise_sense:

;DTMFcar.c,3 :: 		void noise_sense(){
;DTMFcar.c,4 :: 		if(sound == 1) {
	BTFSS      RD4_bit+0, BitPos(RD4_bit+0)
	GOTO       L_noise_sense9
;DTMFcar.c,5 :: 		lcd_out(1,1, "-Noise Detected-");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_DTMFcar+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,6 :: 		buzzer = 1;
	BSF        RD2_bit+0, BitPos(RD2_bit+0)
;DTMFcar.c,7 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_noise_sense10:
	DECFSZ     R13+0, 1
	GOTO       L_noise_sense10
	DECFSZ     R12+0, 1
	GOTO       L_noise_sense10
	DECFSZ     R11+0, 1
	GOTO       L_noise_sense10
	NOP
;DTMFcar.c,8 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;DTMFcar.c,9 :: 		}
	GOTO       L_noise_sense11
L_noise_sense9:
;DTMFcar.c,11 :: 		lcd_out(1,1, "NO Noise");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_DTMFcar+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,12 :: 		buzzer = 0;
	BCF        RD2_bit+0, BitPos(RD2_bit+0)
;DTMFcar.c,13 :: 		}
L_noise_sense11:
;DTMFcar.c,14 :: 		}
L_end_noise_sense:
	RETURN
; end of _noise_sense

_gas_sense:

;DTMFcar.c,16 :: 		void gas_sense(){
;DTMFcar.c,17 :: 		int gas = adc_read(gas_adc);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      gas_sense_gas_L0+0
	MOVF       R0+1, 0
	MOVWF      gas_sense_gas_L0+1
;DTMFcar.c,18 :: 		lcd_out(2,1, "Smoke:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_DTMFcar+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,19 :: 		int2str(2,7,gas);
	MOVLW      2
	MOVWF      FARG_int2str_x+0
	MOVLW      7
	MOVWF      FARG_int2str_y+0
	MOVF       gas_sense_gas_L0+0, 0
	MOVWF      FARG_int2str_temp+0
	MOVF       gas_sense_gas_L0+1, 0
	MOVWF      FARG_int2str_temp+1
	CALL       _int2str+0
;DTMFcar.c,20 :: 		if(gas > 500) {buzzer = 1; delay_ms(100);}     //change here for GAS alarm
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      gas_sense_gas_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gas_sense58
	MOVF       gas_sense_gas_L0+0, 0
	SUBLW      244
L__gas_sense58:
	BTFSC      STATUS+0, 0
	GOTO       L_gas_sense12
	BSF        RD2_bit+0, BitPos(RD2_bit+0)
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_gas_sense13:
	DECFSZ     R13+0, 1
	GOTO       L_gas_sense13
	DECFSZ     R12+0, 1
	GOTO       L_gas_sense13
	DECFSZ     R11+0, 1
	GOTO       L_gas_sense13
	NOP
	NOP
L_gas_sense12:
;DTMFcar.c,21 :: 		}
L_end_gas_sense:
	RETURN
; end of _gas_sense

_get_color:

;DTMFcar.c,23 :: 		int get_color(){
;DTMFcar.c,24 :: 		int color = adc_read(color_adc);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
;DTMFcar.c,25 :: 		return color;
;DTMFcar.c,26 :: 		}
L_end_get_color:
	RETURN
; end of _get_color

_color_sense:

;DTMFcar.c,28 :: 		void color_sense(){
;DTMFcar.c,30 :: 		int red = 0, green = 0, blue = 0;
	CLRF       color_sense_red_L0+0
	CLRF       color_sense_red_L0+1
	CLRF       color_sense_green_L0+0
	CLRF       color_sense_green_L0+1
	CLRF       color_sense_blue_L0+0
	CLRF       color_sense_blue_L0+1
;DTMFcar.c,31 :: 		color_r = 0; color_g = 1; color_b = 1;
	BCF        RD5_bit+0, BitPos(RD5_bit+0)
	BSF        RD6_bit+0, BitPos(RD6_bit+0)
	BSF        RD7_bit+0, BitPos(RD7_bit+0)
;DTMFcar.c,32 :: 		for(x = 0; x < 50; x++) red += get_color();
	CLRF       color_sense_x_L0+0
L_color_sense14:
	MOVLW      50
	SUBWF      color_sense_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_color_sense15
	CALL       _get_color+0
	MOVF       R0+0, 0
	ADDWF      color_sense_red_L0+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      color_sense_red_L0+1, 1
	INCF       color_sense_x_L0+0, 1
	GOTO       L_color_sense14
L_color_sense15:
;DTMFcar.c,33 :: 		red /= 50;
	MOVLW      50
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       color_sense_red_L0+0, 0
	MOVWF      R0+0
	MOVF       color_sense_red_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      color_sense_red_L0+0
	MOVF       R0+1, 0
	MOVWF      color_sense_red_L0+1
;DTMFcar.c,34 :: 		color_r = 1; color_g = 0; color_b = 1;
	BSF        RD5_bit+0, BitPos(RD5_bit+0)
	BCF        RD6_bit+0, BitPos(RD6_bit+0)
	BSF        RD7_bit+0, BitPos(RD7_bit+0)
;DTMFcar.c,35 :: 		for(x = 0; x < 50; x++) green += get_color();
	CLRF       color_sense_x_L0+0
L_color_sense17:
	MOVLW      50
	SUBWF      color_sense_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_color_sense18
	CALL       _get_color+0
	MOVF       R0+0, 0
	ADDWF      color_sense_green_L0+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      color_sense_green_L0+1, 1
	INCF       color_sense_x_L0+0, 1
	GOTO       L_color_sense17
L_color_sense18:
;DTMFcar.c,36 :: 		green /= 50;
	MOVLW      50
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       color_sense_green_L0+0, 0
	MOVWF      R0+0
	MOVF       color_sense_green_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      color_sense_green_L0+0
	MOVF       R0+1, 0
	MOVWF      color_sense_green_L0+1
;DTMFcar.c,37 :: 		color_r = 1; color_g = 1; color_b = 0;
	BSF        RD5_bit+0, BitPos(RD5_bit+0)
	BSF        RD6_bit+0, BitPos(RD6_bit+0)
	BCF        RD7_bit+0, BitPos(RD7_bit+0)
;DTMFcar.c,38 :: 		for(x = 0; x < 50; x++) blue += get_color();
	CLRF       color_sense_x_L0+0
L_color_sense20:
	MOVLW      50
	SUBWF      color_sense_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_color_sense21
	CALL       _get_color+0
	MOVF       R0+0, 0
	ADDWF      color_sense_blue_L0+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      color_sense_blue_L0+1, 1
	INCF       color_sense_x_L0+0, 1
	GOTO       L_color_sense20
L_color_sense21:
;DTMFcar.c,39 :: 		blue /= 50;
	MOVLW      50
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       color_sense_blue_L0+0, 0
	MOVWF      R0+0
	MOVF       color_sense_blue_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      color_sense_blue_L0+0
	MOVF       R0+1, 0
	MOVWF      color_sense_blue_L0+1
;DTMFcar.c,41 :: 		if(red > green) {
	MOVLW      128
	XORWF      color_sense_green_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      color_sense_red_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__color_sense61
	MOVF       color_sense_red_L0+0, 0
	SUBWF      color_sense_green_L0+0, 0
L__color_sense61:
	BTFSC      STATUS+0, 0
	GOTO       L_color_sense23
;DTMFcar.c,42 :: 		if(red > blue) lcd_out(1,12,"RED  ");
	MOVLW      128
	XORWF      color_sense_blue_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      color_sense_red_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__color_sense62
	MOVF       color_sense_red_L0+0, 0
	SUBWF      color_sense_blue_L0+0, 0
L__color_sense62:
	BTFSC      STATUS+0, 0
	GOTO       L_color_sense24
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_DTMFcar+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_color_sense25
L_color_sense24:
;DTMFcar.c,43 :: 		else lcd_out(1,12,"BLUE ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_DTMFcar+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_color_sense25:
;DTMFcar.c,44 :: 		}
	GOTO       L_color_sense26
L_color_sense23:
;DTMFcar.c,46 :: 		if(green > blue) lcd_out(1,12,"GREEN");
	MOVLW      128
	XORWF      color_sense_blue_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      color_sense_green_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__color_sense63
	MOVF       color_sense_green_L0+0, 0
	SUBWF      color_sense_blue_L0+0, 0
L__color_sense63:
	BTFSC      STATUS+0, 0
	GOTO       L_color_sense27
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_DTMFcar+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_color_sense28
L_color_sense27:
;DTMFcar.c,47 :: 		else lcd_out(1,12,"BLUE ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_DTMFcar+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_color_sense28:
;DTMFcar.c,48 :: 		}
L_color_sense26:
;DTMFcar.c,49 :: 		}
L_end_color_sense:
	RETURN
; end of _color_sense

_stop_car:

;DTMFcar.c,51 :: 		void stop_car(){
;DTMFcar.c,52 :: 		motor1_a = 0; motor1_b = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,53 :: 		motor2_a = 0; motor2_b = 0;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
;DTMFcar.c,54 :: 		motor3_a = 0; motor3_b = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,55 :: 		motor4_a = 0; motor4_b = 0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;DTMFcar.c,56 :: 		}
L_end_stop_car:
	RETURN
; end of _stop_car

_move_car:

;DTMFcar.c,58 :: 		void move_car(){
;DTMFcar.c,59 :: 		char DTMF = DTMF_read();
	CALL       _DTMF_read+0
	MOVF       R0+0, 0
	MOVWF      move_car_DTMF_L0+0
;DTMFcar.c,60 :: 		lcd_out(2,11, " CMD:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_DTMFcar+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,61 :: 		lcd_chr(2,16, DTMF + 48);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	ADDWF      move_car_DTMF_L0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;DTMFcar.c,62 :: 		switch(DTMF){
	GOTO       L_move_car29
;DTMFcar.c,63 :: 		case 2:                          //up
L_move_car31:
;DTMFcar.c,64 :: 		motor1_a = 1; motor1_b = 0;
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,65 :: 		motor2_a = 1; motor2_b = 0;
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
;DTMFcar.c,66 :: 		motor3_a = 1; motor3_b = 0;
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,67 :: 		motor4_a = 1; motor4_b = 0;
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;DTMFcar.c,68 :: 		break;
	GOTO       L_move_car30
;DTMFcar.c,69 :: 		case 8:                         //down
L_move_car32:
;DTMFcar.c,70 :: 		motor1_a = 0; motor1_b = 1;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,71 :: 		motor2_a = 0; motor2_b = 1;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
;DTMFcar.c,72 :: 		motor3_a = 0; motor3_b = 1;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,73 :: 		motor4_a = 0; motor4_b = 1;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;DTMFcar.c,74 :: 		break;
	GOTO       L_move_car30
;DTMFcar.c,75 :: 		case 4:                         //left
L_move_car33:
;DTMFcar.c,76 :: 		motor1_a = 0; motor1_b = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,77 :: 		motor2_a = 1; motor2_b = 0;
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
;DTMFcar.c,78 :: 		motor3_a = 0; motor3_b = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,79 :: 		motor4_a = 1; motor4_b = 0;
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;DTMFcar.c,80 :: 		break;
	GOTO       L_move_car30
;DTMFcar.c,81 :: 		case 6:                         //right
L_move_car34:
;DTMFcar.c,82 :: 		motor1_a = 1; motor1_b = 0;
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,83 :: 		motor2_a = 0; motor2_b = 0;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
;DTMFcar.c,84 :: 		motor3_a = 1; motor3_b = 0;
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,85 :: 		motor4_a = 0; motor4_b = 0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;DTMFcar.c,86 :: 		break;
	GOTO       L_move_car30
;DTMFcar.c,87 :: 		case 7:
L_move_car35:
;DTMFcar.c,88 :: 		stop_car();
	CALL       _stop_car+0
;DTMFcar.c,89 :: 		servo1_0d();                  //servo 1
	CALL       _servo1_0d+0
;DTMFcar.c,90 :: 		break;
	GOTO       L_move_car30
;DTMFcar.c,91 :: 		case 1:
L_move_car36:
;DTMFcar.c,92 :: 		stop_car();
	CALL       _stop_car+0
;DTMFcar.c,93 :: 		servo1_180d();                //servo 1
	CALL       _servo1_180d+0
;DTMFcar.c,94 :: 		break;
	GOTO       L_move_car30
;DTMFcar.c,95 :: 		case 3:
L_move_car37:
;DTMFcar.c,96 :: 		stop_car();
	CALL       _stop_car+0
;DTMFcar.c,97 :: 		servo2_0d();                  //servo 2
	CALL       _servo2_0d+0
;DTMFcar.c,98 :: 		break;
	GOTO       L_move_car30
;DTMFcar.c,99 :: 		case 9:
L_move_car38:
;DTMFcar.c,100 :: 		stop_car();
	CALL       _stop_car+0
;DTMFcar.c,101 :: 		servo2_180d();                //servo 2
	CALL       _servo2_180d+0
;DTMFcar.c,102 :: 		break;
	GOTO       L_move_car30
;DTMFcar.c,104 :: 		default:
L_move_car39:
;DTMFcar.c,105 :: 		PORTC = 0;
	CLRF       PORTC+0
;DTMFcar.c,106 :: 		}
	GOTO       L_move_car30
L_move_car29:
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_move_car31
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_move_car32
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_move_car33
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_move_car34
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_move_car35
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_move_car36
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_move_car37
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_move_car38
	GOTO       L_move_car39
L_move_car30:
;DTMFcar.c,108 :: 		}
L_end_move_car:
	RETURN
; end of _move_car

_main:

;DTMFcar.c,110 :: 		void main() {
;DTMFcar.c,111 :: 		lcd_init();
	CALL       _Lcd_Init+0
;DTMFcar.c,112 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;DTMFcar.c,113 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;DTMFcar.c,114 :: 		CMCON = 0x07;
	MOVLW      7
	MOVWF      CMCON+0
;DTMFcar.c,115 :: 		ADCON1 = 4;
	MOVLW      4
	MOVWF      ADCON1+0
;DTMFcar.c,116 :: 		TRISA = 0b00111111;
	MOVLW      63
	MOVWF      TRISA+0
;DTMFcar.c,117 :: 		TRISC = 0b00000000;
	CLRF       TRISC+0
;DTMFcar.c,118 :: 		TRISD = 0b00010000;
	MOVLW      16
	MOVWF      TRISD+0
;DTMFcar.c,119 :: 		TRISE = 0b00000111;
	MOVLW      7
	MOVWF      TRISE+0
;DTMFcar.c,120 :: 		PORTC = 0; PORTD = 0;
	CLRF       PORTC+0
	CLRF       PORTD+0
;DTMFcar.c,121 :: 		color_r = 1; color_g = 1; color_b = 1;
	BSF        RD5_bit+0, BitPos(RD5_bit+0)
	BSF        RD6_bit+0, BitPos(RD6_bit+0)
	BSF        RD7_bit+0, BitPos(RD7_bit+0)
;DTMFcar.c,123 :: 		while(1){
L_main40:
;DTMFcar.c,124 :: 		noise_sense();
	CALL       _noise_sense+0
;DTMFcar.c,125 :: 		gas_sense();
	CALL       _gas_sense+0
;DTMFcar.c,127 :: 		move_car();
	CALL       _move_car+0
;DTMFcar.c,128 :: 		}
	GOTO       L_main40
;DTMFcar.c,129 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
