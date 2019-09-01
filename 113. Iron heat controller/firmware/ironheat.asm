
_device_init:

;define.h,21 :: 		void device_init(){
;define.h,22 :: 		ADCON1 = 0x0E;
	MOVLW      14
	MOVWF      ADCON1+0
;define.h,23 :: 		trisa = 0x01;
	MOVLW      1
	MOVWF      TRISA+0
;define.h,24 :: 		porta = 0x00;
	CLRF       PORTA+0
;define.h,25 :: 		lcd_init();
	CALL       _Lcd_Init+0
;define.h,26 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;define.h,27 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;define.h,28 :: 		}
L_end_device_init:
	RETURN
; end of _device_init

_convert:

;define.h,30 :: 		unsigned short convert(){
;define.h,31 :: 		switch (kp){
	GOTO       L_convert0
;define.h,32 :: 		case  1: kp = 49; break; // 1
L_convert2:
	MOVLW      49
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,33 :: 		case  2: kp = 50; break; // 2
L_convert3:
	MOVLW      50
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,34 :: 		case  3: kp = 51; break; // 3
L_convert4:
	MOVLW      51
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,35 :: 		case  4: kp = 65; break; // A
L_convert5:
	MOVLW      65
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,36 :: 		case  5: kp = 52; break; // 4
L_convert6:
	MOVLW      52
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,37 :: 		case  6: kp = 53; break; // 5
L_convert7:
	MOVLW      53
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,38 :: 		case  7: kp = 54; break; // 6
L_convert8:
	MOVLW      54
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,39 :: 		case  8: kp = 66; break; // B
L_convert9:
	MOVLW      66
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,40 :: 		case  9: kp = 55; break; // 7
L_convert10:
	MOVLW      55
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,41 :: 		case 10: kp = 56; break; // 8
L_convert11:
	MOVLW      56
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,42 :: 		case 11: kp = 57; break; // 9
L_convert12:
	MOVLW      57
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,43 :: 		case 12: kp = 67; break; // C
L_convert13:
	MOVLW      67
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,44 :: 		case 13: kp = 42; break; // *
L_convert14:
	MOVLW      42
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,45 :: 		case 14: kp = 48; break; // 0
L_convert15:
	MOVLW      48
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,46 :: 		case 15: kp = 35; break; // #
L_convert16:
	MOVLW      35
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,47 :: 		case 16: kp = 68; break; // D
L_convert17:
	MOVLW      68
	MOVWF      _kp+0
	GOTO       L_convert1
;define.h,48 :: 		}
L_convert0:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_convert2
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_convert3
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_convert4
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_convert5
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_convert6
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_convert7
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_convert8
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_convert9
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_convert10
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_convert11
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_convert12
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_convert13
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_convert14
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_convert15
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_convert16
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_convert17
L_convert1:
;define.h,49 :: 		return kp;
	MOVF       _kp+0, 0
	MOVWF      R0+0
;define.h,50 :: 		}
L_end_convert:
	RETURN
; end of _convert

_get_key_click:

;define.h,52 :: 		unsigned short get_key_click(){
;define.h,53 :: 		kp = 0;
	CLRF       _kp+0
;define.h,54 :: 		do{
L_get_key_click18:
;define.h,55 :: 		kp = Keypad_Key_click();
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;define.h,56 :: 		}while(!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_get_key_click18
;define.h,57 :: 		convert();
	CALL       _convert+0
;define.h,58 :: 		}
L_end_get_key_click:
	RETURN
; end of _get_key_click

_get_key_press:

;define.h,60 :: 		unsigned short get_key_press(){
;define.h,61 :: 		kp = 0;
	CLRF       _kp+0
;define.h,62 :: 		kp = Keypad_Key_press();
	CALL       _Keypad_Key_Press+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;define.h,63 :: 		convert();
	CALL       _convert+0
;define.h,64 :: 		}
L_end_get_key_press:
	RETURN
; end of _get_key_press

_get_adc:

;define.h,66 :: 		int get_adc(){
;define.h,67 :: 		int adc = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      get_adc_adc_L0+0
	MOVF       R0+1, 0
	MOVWF      get_adc_adc_L0+1
;define.h,68 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_get_adc21:
	DECFSZ     R13+0, 1
	GOTO       L_get_adc21
	DECFSZ     R12+0, 1
	GOTO       L_get_adc21
	DECFSZ     R11+0, 1
	GOTO       L_get_adc21
	NOP
	NOP
;define.h,69 :: 		return adc;
	MOVF       get_adc_adc_L0+0, 0
	MOVWF      R0+0
	MOVF       get_adc_adc_L0+1, 0
	MOVWF      R0+1
;define.h,70 :: 		}
L_end_get_adc:
	RETURN
; end of _get_adc

_adc_show:

;define.h,72 :: 		void adc_show(short x, short y){
;define.h,74 :: 		int adc = get_adc();
	CALL       _get_adc+0
	MOVF       R0+0, 0
	MOVWF      FLOC__adc_show+0
	MOVF       R0+1, 0
	MOVWF      FLOC__adc_show+1
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FLOC__adc_show+0, 0
	MOVWF      R0+0
	MOVF       FLOC__adc_show+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
;define.h,75 :: 		temp[0] = adc/1000 + 48;
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      adc_show_temp_L0+0
;define.h,76 :: 		temp[1] = (adc/100)%10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__adc_show+0, 0
	MOVWF      R0+0
	MOVF       FLOC__adc_show+1, 0
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
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      adc_show_temp_L0+1
;define.h,77 :: 		temp[2] = (adc/10)%10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__adc_show+0, 0
	MOVWF      R0+0
	MOVF       FLOC__adc_show+1, 0
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
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      adc_show_temp_L0+2
;define.h,78 :: 		temp[3] = adc%10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__adc_show+0, 0
	MOVWF      R0+0
	MOVF       FLOC__adc_show+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      adc_show_temp_L0+3
;define.h,79 :: 		lcd_out(x,y, temp);
	MOVF       FARG_adc_show_x+0, 0
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       FARG_adc_show_y+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      adc_show_temp_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;define.h,80 :: 		}
L_end_adc_show:
	RETURN
; end of _adc_show

_clean_all:

;ironheat.c,10 :: 		void clean_all(){
;ironheat.c,12 :: 		for(x=0;x<5;x++){
	CLRF       R1+0
L_clean_all22:
	MOVLW      128
	XORWF      R1+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      5
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_clean_all23
;ironheat.c,13 :: 		minstr[x] = 0;
	MOVF       R1+0, 0
	ADDLW      _minstr+0
	MOVWF      FSR
	CLRF       INDF+0
;ironheat.c,12 :: 		for(x=0;x<5;x++){
	INCF       R1+0, 1
;ironheat.c,14 :: 		}
	GOTO       L_clean_all22
L_clean_all23:
;ironheat.c,15 :: 		for(x=0;x<5;x++){
	CLRF       R1+0
L_clean_all25:
	MOVLW      128
	XORWF      R1+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      5
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_clean_all26
;ironheat.c,16 :: 		maxstr[x] = 0;
	MOVF       R1+0, 0
	ADDLW      _maxstr+0
	MOVWF      FSR
	CLRF       INDF+0
;ironheat.c,15 :: 		for(x=0;x<5;x++){
	INCF       R1+0, 1
;ironheat.c,17 :: 		}
	GOTO       L_clean_all25
L_clean_all26:
;ironheat.c,18 :: 		}
L_end_clean_all:
	RETURN
; end of _clean_all

_calbi:

;ironheat.c,20 :: 		void calbi(){
;ironheat.c,22 :: 		min_val = 0, max_val= 0;
	CLRF       _min_val+0
	CLRF       _min_val+1
	CLRF       _max_val+0
	CLRF       _max_val+1
;ironheat.c,23 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ironheat.c,24 :: 		lcd_cmd(_LCD_BLINK_CURSOR_ON);
	MOVLW      15
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ironheat.c,25 :: 		clean_all();
	CALL       _clean_all+0
;ironheat.c,26 :: 		lcd_out(1,1, "Min.Val:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_ironheat+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ironheat.c,27 :: 		for(x=0;x<3;x++){
	CLRF       calbi_x_L0+0
L_calbi28:
	MOVLW      128
	XORWF      calbi_x_L0+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      3
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calbi29
;ironheat.c,28 :: 		recheck1:
___calbi_recheck1:
;ironheat.c,29 :: 		minstr[x] = get_key_click();
	MOVF       calbi_x_L0+0, 0
	ADDLW      _minstr+0
	MOVWF      FLOC__calbi+0
	CALL       _get_key_click+0
	MOVF       FLOC__calbi+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;ironheat.c,30 :: 		if(minstr[x] < 48 | minstr[x] > 57)goto recheck1;
	MOVF       calbi_x_L0+0, 0
	ADDLW      _minstr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R2+0
	MOVLW      48
	SUBWF      R2+0, 0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1+0
	MOVF       R2+0, 0
	SUBLW      57
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R1+0, 0
	IORWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_calbi31
	GOTO       ___calbi_recheck1
L_calbi31:
;ironheat.c,31 :: 		min_val = (100 * (minstr[0] - 48)) + (10 * (minstr[1] - 48)) + (minstr[2] - 48);
	MOVLW      48
	SUBWF      _minstr+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      FLOC__calbi+0
	MOVF       R0+1, 0
	MOVWF      FLOC__calbi+1
	MOVLW      48
	SUBWF      _minstr+1, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	ADDWF      FLOC__calbi+0, 0
	MOVWF      _min_val+0
	MOVF       FLOC__calbi+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      _min_val+1
	MOVLW      48
	SUBWF      _minstr+2, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVF       R0+0, 0
	ADDWF      _min_val+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _min_val+1, 1
;ironheat.c,32 :: 		lcd_out(1,10,minstr);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _minstr+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ironheat.c,33 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_calbi32:
	DECFSZ     R13+0, 1
	GOTO       L_calbi32
	DECFSZ     R12+0, 1
	GOTO       L_calbi32
	DECFSZ     R11+0, 1
	GOTO       L_calbi32
	NOP
;ironheat.c,27 :: 		for(x=0;x<3;x++){
	INCF       calbi_x_L0+0, 1
;ironheat.c,34 :: 		}
	GOTO       L_calbi28
L_calbi29:
;ironheat.c,35 :: 		lcd_out(2,1,"Wait...");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_ironheat+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ironheat.c,36 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_calbi33:
	DECFSZ     R13+0, 1
	GOTO       L_calbi33
	DECFSZ     R12+0, 1
	GOTO       L_calbi33
	DECFSZ     R11+0, 1
	GOTO       L_calbi33
	NOP
	NOP
;ironheat.c,37 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ironheat.c,38 :: 		lcd_out(1,1, "Max.Val:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_ironheat+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ironheat.c,39 :: 		for(x=0;x<3;x++){
	CLRF       calbi_x_L0+0
L_calbi34:
	MOVLW      128
	XORWF      calbi_x_L0+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      3
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calbi35
;ironheat.c,40 :: 		recheck2:
___calbi_recheck2:
;ironheat.c,41 :: 		maxstr[x] = get_key_click();
	MOVF       calbi_x_L0+0, 0
	ADDLW      _maxstr+0
	MOVWF      FLOC__calbi+0
	CALL       _get_key_click+0
	MOVF       FLOC__calbi+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;ironheat.c,42 :: 		if(maxstr[x] < 48 | maxstr[x] > 57)goto recheck2;
	MOVF       calbi_x_L0+0, 0
	ADDLW      _maxstr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R2+0
	MOVLW      48
	SUBWF      R2+0, 0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1+0
	MOVF       R2+0, 0
	SUBLW      57
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R1+0, 0
	IORWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_calbi37
	GOTO       ___calbi_recheck2
L_calbi37:
;ironheat.c,43 :: 		max_val = (100 * (maxstr[0] - 48)) + (10 * (maxstr[1] - 48)) + (maxstr[2] - 48);
	MOVLW      48
	SUBWF      _maxstr+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      FLOC__calbi+0
	MOVF       R0+1, 0
	MOVWF      FLOC__calbi+1
	MOVLW      48
	SUBWF      _maxstr+1, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	ADDWF      FLOC__calbi+0, 0
	MOVWF      _max_val+0
	MOVF       FLOC__calbi+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      _max_val+1
	MOVLW      48
	SUBWF      _maxstr+2, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVF       R0+0, 0
	ADDWF      _max_val+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _max_val+1, 1
;ironheat.c,44 :: 		lcd_out(1,10,maxstr);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _maxstr+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ironheat.c,45 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_calbi38:
	DECFSZ     R13+0, 1
	GOTO       L_calbi38
	DECFSZ     R12+0, 1
	GOTO       L_calbi38
	DECFSZ     R11+0, 1
	GOTO       L_calbi38
	NOP
;ironheat.c,39 :: 		for(x=0;x<3;x++){
	INCF       calbi_x_L0+0, 1
;ironheat.c,46 :: 		}
	GOTO       L_calbi34
L_calbi35:
;ironheat.c,47 :: 		lcd_out(2,1,"Wait...");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_ironheat+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ironheat.c,48 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_calbi39:
	DECFSZ     R13+0, 1
	GOTO       L_calbi39
	DECFSZ     R12+0, 1
	GOTO       L_calbi39
	DECFSZ     R11+0, 1
	GOTO       L_calbi39
	NOP
	NOP
;ironheat.c,49 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ironheat.c,50 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ironheat.c,51 :: 		}
L_end_calbi:
	RETURN
; end of _calbi

_mannual:

;ironheat.c,53 :: 		void mannual(){
;ironheat.c,54 :: 		idle = 1; iron = 0; ironled = 0;
	BSF        PORTA+0, 1
	BCF        PORTA+0, 2
	BCF        PORTA+0, 3
;ironheat.c,55 :: 		while(1){
L_mannual40:
;ironheat.c,56 :: 		lcd_out(2,1, "  Mannual Mode  ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_ironheat+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ironheat.c,57 :: 		adc_show(1,13);
	MOVLW      1
	MOVWF      FARG_adc_show_x+0
	MOVLW      13
	MOVWF      FARG_adc_show_y+0
	CALL       _adc_show+0
;ironheat.c,58 :: 		key[0] = get_key_press();
	CALL       _get_key_press+0
	MOVF       R0+0, 0
	MOVWF      _key+0
;ironheat.c,59 :: 		if(key[0] == '#')break;
	MOVF       R0+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_mannual42
	GOTO       L_mannual41
L_mannual42:
;ironheat.c,60 :: 		if(key[0] == 'D'){
	MOVF       _key+0, 0
	XORLW      68
	BTFSS      STATUS+0, 2
	GOTO       L_mannual43
;ironheat.c,61 :: 		idle =~ idle;
	MOVLW      2
	XORWF      PORTA+0, 1
;ironheat.c,62 :: 		iron =~ iron;
	MOVLW      4
	XORWF      PORTA+0, 1
;ironheat.c,63 :: 		ironled =~ ironled;
	MOVLW      8
	XORWF      PORTA+0, 1
;ironheat.c,64 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_mannual44:
	DECFSZ     R13+0, 1
	GOTO       L_mannual44
	DECFSZ     R12+0, 1
	GOTO       L_mannual44
	DECFSZ     R11+0, 1
	GOTO       L_mannual44
	NOP
	NOP
;ironheat.c,65 :: 		}
L_mannual43:
;ironheat.c,66 :: 		}
	GOTO       L_mannual40
L_mannual41:
;ironheat.c,67 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ironheat.c,68 :: 		}
L_end_mannual:
	RETURN
; end of _mannual

_main:

;ironheat.c,70 :: 		void main() {
;ironheat.c,71 :: 		device_init();
	CALL       _device_init+0
;ironheat.c,72 :: 		calbi();
	CALL       _calbi+0
;ironheat.c,74 :: 		while(1){
L_main45:
;ironheat.c,75 :: 		lcd_out(1,1, "SensorValue:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_ironheat+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ironheat.c,76 :: 		adc_show(1,13);
	MOVLW      1
	MOVWF      FARG_adc_show_x+0
	MOVLW      13
	MOVWF      FARG_adc_show_y+0
	CALL       _adc_show+0
;ironheat.c,77 :: 		sensor = get_adc();
	CALL       _get_adc+0
	MOVF       R0+0, 0
	MOVWF      _sensor+0
	MOVF       R0+1, 0
	MOVWF      _sensor+1
;ironheat.c,78 :: 		key[0] = get_key_press();
	CALL       _get_key_press+0
	MOVF       R0+0, 0
	MOVWF      _key+0
;ironheat.c,79 :: 		if(key[0] == 'A') calbi();
	MOVF       R0+0, 0
	XORLW      65
	BTFSS      STATUS+0, 2
	GOTO       L_main47
	CALL       _calbi+0
L_main47:
;ironheat.c,80 :: 		if(key[0] == '*') mannual();
	MOVF       _key+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_main48
	CALL       _mannual+0
L_main48:
;ironheat.c,81 :: 		if(sensor > max_val){
	MOVLW      128
	XORWF      _max_val+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _sensor+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main61
	MOVF       _sensor+0, 0
	SUBWF      _max_val+0, 0
L__main61:
	BTFSC      STATUS+0, 0
	GOTO       L_main49
;ironheat.c,82 :: 		idle = 1;
	BSF        PORTA+0, 1
;ironheat.c,83 :: 		iron = 0;
	BCF        PORTA+0, 2
;ironheat.c,84 :: 		ironled = 0;
	BCF        PORTA+0, 3
;ironheat.c,85 :: 		lcd_out(2,1, "    Iron OFF    ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_ironheat+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ironheat.c,86 :: 		}
L_main49:
;ironheat.c,87 :: 		if(sensor < min_val){
	MOVLW      128
	XORWF      _sensor+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _min_val+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main62
	MOVF       _min_val+0, 0
	SUBWF      _sensor+0, 0
L__main62:
	BTFSC      STATUS+0, 0
	GOTO       L_main50
;ironheat.c,88 :: 		idle = 0;
	BCF        PORTA+0, 1
;ironheat.c,89 :: 		iron = 1;
	BSF        PORTA+0, 2
;ironheat.c,90 :: 		ironled = 1;
	BSF        PORTA+0, 3
;ironheat.c,91 :: 		lcd_out(2,1, "    Iron ON    ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_ironheat+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ironheat.c,92 :: 		}
L_main50:
;ironheat.c,93 :: 		}
	GOTO       L_main45
;ironheat.c,94 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
