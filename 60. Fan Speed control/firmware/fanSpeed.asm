
_kp_init:

;keypad4x3.h,16 :: 		void kp_init(){
;keypad4x3.h,17 :: 		kp_row1_dir = 1;
	BSF        TRISC7_bit+0, BitPos(TRISC7_bit+0)
;keypad4x3.h,18 :: 		kp_row2_dir = 1;
	BSF        TRISC6_bit+0, BitPos(TRISC6_bit+0)
;keypad4x3.h,19 :: 		kp_row3_dir = 1;
	BSF        TRISC5_bit+0, BitPos(TRISC5_bit+0)
;keypad4x3.h,20 :: 		kp_row4_dir = 1;
	BSF        TRISC4_bit+0, BitPos(TRISC4_bit+0)
;keypad4x3.h,21 :: 		kp_col1_dir = 0;
	BCF        TRISC3_bit+0, BitPos(TRISC3_bit+0)
;keypad4x3.h,22 :: 		kp_col2_dir = 0;
	BCF        TRISC2_bit+0, BitPos(TRISC2_bit+0)
;keypad4x3.h,23 :: 		kp_col3_dir = 0;
	BCF        TRISC1_bit+0, BitPos(TRISC1_bit+0)
;keypad4x3.h,24 :: 		kp_col1 = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;keypad4x3.h,25 :: 		kp_col2 = 0;
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;keypad4x3.h,26 :: 		kp_col3 = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
;keypad4x3.h,27 :: 		}
L_end_kp_init:
	RETURN
; end of _kp_init

_kp_scan:

;keypad4x3.h,29 :: 		char kp_scan(){
;keypad4x3.h,30 :: 		char key = 0;
	CLRF       kp_scan_key_L0+0
;keypad4x3.h,31 :: 		kp_col1 = 1; kp_col2 = 0; kp_col3 = 0;
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
;keypad4x3.h,32 :: 		delay_1ms();
	CALL       _Delay_1ms+0
;keypad4x3.h,33 :: 		if(kp_row1 == 1) key = '1';
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_kp_scan0
	MOVLW      49
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan1
L_kp_scan0:
;keypad4x3.h,34 :: 		else if(kp_row2 == 1) key = '4';
	BTFSS      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_kp_scan2
	MOVLW      52
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan3
L_kp_scan2:
;keypad4x3.h,35 :: 		else if(kp_row3 == 1) key = '7';
	BTFSS      RC5_bit+0, BitPos(RC5_bit+0)
	GOTO       L_kp_scan4
	MOVLW      55
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan5
L_kp_scan4:
;keypad4x3.h,36 :: 		else if(kp_row4 == 1) key = '*';
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_kp_scan6
	MOVLW      42
	MOVWF      kp_scan_key_L0+0
L_kp_scan6:
L_kp_scan5:
L_kp_scan3:
L_kp_scan1:
;keypad4x3.h,37 :: 		delay_1ms();
	CALL       _Delay_1ms+0
;keypad4x3.h,38 :: 		kp_col1 = 0; kp_col2 = 1; kp_col3 = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
;keypad4x3.h,39 :: 		delay_1ms();
	CALL       _Delay_1ms+0
;keypad4x3.h,40 :: 		if(kp_row1 == 1) key = '2';
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_kp_scan7
	MOVLW      50
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan8
L_kp_scan7:
;keypad4x3.h,41 :: 		else if(kp_row2 == 1) key = '5';
	BTFSS      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_kp_scan9
	MOVLW      53
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan10
L_kp_scan9:
;keypad4x3.h,42 :: 		else if(kp_row3 == 1) key = '8';
	BTFSS      RC5_bit+0, BitPos(RC5_bit+0)
	GOTO       L_kp_scan11
	MOVLW      56
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan12
L_kp_scan11:
;keypad4x3.h,43 :: 		else if(kp_row4 == 1) key = '0';
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_kp_scan13
	MOVLW      48
	MOVWF      kp_scan_key_L0+0
L_kp_scan13:
L_kp_scan12:
L_kp_scan10:
L_kp_scan8:
;keypad4x3.h,44 :: 		kp_col1 = 0; kp_col2 = 0; kp_col3 = 1;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
;keypad4x3.h,45 :: 		delay_1ms();
	CALL       _Delay_1ms+0
;keypad4x3.h,46 :: 		if(kp_row1 == 1) key = '3';
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_kp_scan14
	MOVLW      51
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan15
L_kp_scan14:
;keypad4x3.h,47 :: 		else if(kp_row2 == 1) key = '6';
	BTFSS      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_kp_scan16
	MOVLW      54
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan17
L_kp_scan16:
;keypad4x3.h,48 :: 		else if(kp_row3 == 1) key = '9';
	BTFSS      RC5_bit+0, BitPos(RC5_bit+0)
	GOTO       L_kp_scan18
	MOVLW      57
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan19
L_kp_scan18:
;keypad4x3.h,49 :: 		else if(kp_row4 == 1) key = '#';
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_kp_scan20
	MOVLW      35
	MOVWF      kp_scan_key_L0+0
L_kp_scan20:
L_kp_scan19:
L_kp_scan17:
L_kp_scan15:
;keypad4x3.h,50 :: 		return key;
	MOVF       kp_scan_key_L0+0, 0
	MOVWF      R0+0
;keypad4x3.h,51 :: 		}
L_end_kp_scan:
	RETURN
; end of _kp_scan

_kp_get_key:

;keypad4x3.h,54 :: 		char kp_get_key(){
;keypad4x3.h,55 :: 		char key = 0;
	CLRF       kp_get_key_key_L0+0
;keypad4x3.h,56 :: 		while(!key){
L_kp_get_key21:
	MOVF       kp_get_key_key_L0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_kp_get_key22
;keypad4x3.h,57 :: 		key = kp_scan();
	CALL       _kp_scan+0
	MOVF       R0+0, 0
	MOVWF      kp_get_key_key_L0+0
;keypad4x3.h,58 :: 		}
	GOTO       L_kp_get_key21
L_kp_get_key22:
;keypad4x3.h,59 :: 		return key;
	MOVF       kp_get_key_key_L0+0, 0
	MOVWF      R0+0
;keypad4x3.h,60 :: 		}
L_end_kp_get_key:
	RETURN
; end of _kp_get_key

_vdelay_us:

;fanSpeed.c,21 :: 		void vdelay_us(unsigned time_us){
;fanSpeed.c,23 :: 		for(i = 0; i < time_us; i++) delay_us(1);
	CLRF       R1+0
	CLRF       R1+1
L_vdelay_us23:
	MOVF       FARG_vdelay_us_time_us+1, 0
	SUBWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__vdelay_us45
	MOVF       FARG_vdelay_us_time_us+0, 0
	SUBWF      R1+0, 0
L__vdelay_us45:
	BTFSC      STATUS+0, 0
	GOTO       L_vdelay_us24
	NOP
	NOP
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_vdelay_us23
L_vdelay_us24:
;fanSpeed.c,24 :: 		}
L_end_vdelay_us:
	RETURN
; end of _vdelay_us

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;fanSpeed.c,26 :: 		void interrupt(){
;fanSpeed.c,27 :: 		if (INTCON.INTF){
	BTFSS      INTCON+0, 1
	GOTO       L_interrupt26
;fanSpeed.c,28 :: 		rpm++;
	INCF       _rpm+0, 1
	BTFSC      STATUS+0, 2
	INCF       _rpm+1, 1
;fanSpeed.c,29 :: 		INTCON.INTF = 0;
	BCF        INTCON+0, 1
;fanSpeed.c,30 :: 		}
L_interrupt26:
;fanSpeed.c,31 :: 		}
L_end_interrupt:
L__interrupt47:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_fanSpeed:

;fanSpeed.c,33 :: 		void fanSpeed(short speed){
;fanSpeed.c,34 :: 		int x = speed * 50;
	MOVF       FARG_fanSpeed_speed+0, 0
	MOVWF      R0+0
	MOVLW      50
	MOVWF      R4+0
	CALL       _Mul_8X8_S+0
	MOVF       R0+0, 0
	MOVWF      fanSpeed_x_L0+0
	MOVF       R0+1, 0
	MOVWF      fanSpeed_x_L0+1
;fanSpeed.c,35 :: 		fan = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;fanSpeed.c,36 :: 		vdelay_us(x);
	MOVF       R0+0, 0
	MOVWF      FARG_vdelay_us_time_us+0
	MOVF       R0+1, 0
	MOVWF      FARG_vdelay_us_time_us+1
	CALL       _vdelay_us+0
;fanSpeed.c,37 :: 		fan = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;fanSpeed.c,38 :: 		vdelay_us(5000 - x);
	MOVF       fanSpeed_x_L0+0, 0
	SUBLW      136
	MOVWF      FARG_vdelay_us_time_us+0
	MOVF       fanSpeed_x_L0+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBLW      19
	MOVWF      FARG_vdelay_us_time_us+1
	CALL       _vdelay_us+0
;fanSpeed.c,39 :: 		}
L_end_fanSpeed:
	RETURN
; end of _fanSpeed

_lcd_out_byte:

;fanSpeed.c,43 :: 		void lcd_out_byte(short x, short y, char val){
;fanSpeed.c,44 :: 		lcd_chr(x, y, val / 100 + 48);
	MOVF       FARG_lcd_out_byte_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_lcd_out_byte_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_lcd_out_byte_val+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;fanSpeed.c,45 :: 		lcd_chr(x, y + 1, (val % 100) / 10 + 48);
	MOVF       FARG_lcd_out_byte_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       FARG_lcd_out_byte_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_lcd_out_byte_val+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;fanSpeed.c,46 :: 		lcd_chr(x, y + 2, val % 10 + 48);
	MOVF       FARG_lcd_out_byte_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	ADDWF      FARG_lcd_out_byte_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_lcd_out_byte_val+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;fanSpeed.c,47 :: 		}
L_end_lcd_out_byte:
	RETURN
; end of _lcd_out_byte

_home:

;fanSpeed.c,49 :: 		void home(){
;fanSpeed.c,50 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;fanSpeed.c,51 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;fanSpeed.c,52 :: 		lcd_chr(1, 4, '%');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      37
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;fanSpeed.c,53 :: 		lcd_out(2,1, "*: SPEED");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_fanSpeed+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;fanSpeed.c,54 :: 		lcd_out(2,15, "Hz");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_fanSpeed+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;fanSpeed.c,55 :: 		}
L_end_home:
	RETURN
; end of _home

_setSpeed:

;fanSpeed.c,57 :: 		void setSpeed(){
;fanSpeed.c,58 :: 		char x = 0, tmp[3];
	CLRF       setSpeed_x_L0+0
;fanSpeed.c,59 :: 		lcd_cmd(_LCD_BLINK_CURSOR_ON);
	MOVLW      15
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;fanSpeed.c,60 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;fanSpeed.c,61 :: 		lcd_out(1,1, "Set Speed[0-100]");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_fanSpeed+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;fanSpeed.c,62 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_setSpeed27:
	DECFSZ     R13+0, 1
	GOTO       L_setSpeed27
	DECFSZ     R12+0, 1
	GOTO       L_setSpeed27
	DECFSZ     R11+0, 1
	GOTO       L_setSpeed27
	NOP
	NOP
;fanSpeed.c,64 :: 		speed = 0;
	CLRF       _speed+0
;fanSpeed.c,65 :: 		while(1){
L_setSpeed28:
;fanSpeed.c,66 :: 		key = kp_get_key();
	CALL       _kp_get_key+0
	MOVF       R0+0, 0
	MOVWF      _key+0
;fanSpeed.c,67 :: 		if(key == '*') {
	MOVF       R0+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_setSpeed30
;fanSpeed.c,68 :: 		x++;
	INCF       setSpeed_x_L0+0, 1
;fanSpeed.c,69 :: 		tmp[x] = 0;
	MOVF       setSpeed_x_L0+0, 0
	ADDLW      setSpeed_tmp_L0+0
	MOVWF      FSR
	CLRF       INDF+0
;fanSpeed.c,70 :: 		lcd_chr(2, x+1, '0');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       setSpeed_x_L0+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;fanSpeed.c,71 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_setSpeed31:
	DECFSZ     R13+0, 1
	GOTO       L_setSpeed31
	DECFSZ     R12+0, 1
	GOTO       L_setSpeed31
	DECFSZ     R11+0, 1
	GOTO       L_setSpeed31
	NOP
	NOP
;fanSpeed.c,72 :: 		}
	GOTO       L_setSpeed32
L_setSpeed30:
;fanSpeed.c,73 :: 		else if(key == '#') break;
	MOVF       _key+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_setSpeed33
	GOTO       L_setSpeed29
L_setSpeed33:
;fanSpeed.c,75 :: 		tmp[x] = key - 48;
	MOVF       setSpeed_x_L0+0, 0
	ADDLW      setSpeed_tmp_L0+0
	MOVWF      FSR
	MOVLW      48
	SUBWF      _key+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      INDF+0
;fanSpeed.c,76 :: 		lcd_chr(2, x+1, key);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       setSpeed_x_L0+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _key+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;fanSpeed.c,77 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_setSpeed35:
	DECFSZ     R13+0, 1
	GOTO       L_setSpeed35
	DECFSZ     R12+0, 1
	GOTO       L_setSpeed35
	DECFSZ     R11+0, 1
	GOTO       L_setSpeed35
	NOP
	NOP
;fanSpeed.c,78 :: 		}
L_setSpeed32:
;fanSpeed.c,79 :: 		}
	GOTO       L_setSpeed28
L_setSpeed29:
;fanSpeed.c,80 :: 		speed = tmp[0] * 100 + tmp[1] * 10 + tmp[2];
	MOVF       setSpeed_tmp_L0+0, 0
	MOVWF      R0+0
	MOVLW      100
	MOVWF      R4+0
	CALL       _Mul_8X8_U+0
	MOVF       R0+0, 0
	MOVWF      FLOC__setSpeed+0
	MOVF       setSpeed_tmp_L0+1, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Mul_8X8_U+0
	MOVF       FLOC__setSpeed+0, 0
	ADDWF      R0+0, 1
	MOVF       setSpeed_tmp_L0+2, 0
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      _speed+0
;fanSpeed.c,81 :: 		hz = speed * 0.5;
	CALL       _byte2double+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      0
	MOVWF      R4+2
	MOVLW      126
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2byte+0
	MOVF       R0+0, 0
	MOVWF      _hz+0
;fanSpeed.c,82 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_setSpeed36:
	DECFSZ     R13+0, 1
	GOTO       L_setSpeed36
	DECFSZ     R12+0, 1
	GOTO       L_setSpeed36
	DECFSZ     R11+0, 1
	GOTO       L_setSpeed36
	NOP
;fanSpeed.c,83 :: 		home();
	CALL       _home+0
;fanSpeed.c,84 :: 		}
L_end_setSpeed:
	RETURN
; end of _setSpeed

_main:

;fanSpeed.c,86 :: 		void main() {
;fanSpeed.c,87 :: 		PORTB = 0;
	CLRF       PORTB+0
;fanSpeed.c,88 :: 		TRISB = 0x01;
	MOVLW      1
	MOVWF      TRISB+0
;fanSpeed.c,89 :: 		OPTION_REG.INTEDG = 1;
	BSF        OPTION_REG+0, 6
;fanSpeed.c,90 :: 		INTCON.INTF = 0;
	BCF        INTCON+0, 1
;fanSpeed.c,91 :: 		INTCON.INTE = 1;
	BSF        INTCON+0, 4
;fanSpeed.c,92 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;fanSpeed.c,93 :: 		kp_init();
	CALL       _kp_init+0
;fanSpeed.c,94 :: 		lcd_init();
	CALL       _Lcd_Init+0
;fanSpeed.c,95 :: 		home();
	CALL       _home+0
;fanSpeed.c,97 :: 		while (1){
L_main37:
;fanSpeed.c,98 :: 		timer++;
	INCF       _timer+0, 1
	BTFSC      STATUS+0, 2
	INCF       _timer+1, 1
;fanSpeed.c,99 :: 		if(timer > 100) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _timer+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main53
	MOVF       _timer+0, 0
	SUBLW      100
L__main53:
	BTFSC      STATUS+0, 0
	GOTO       L_main39
;fanSpeed.c,100 :: 		inttostrwithzeros(rpm, txt);
	MOVF       _rpm+0, 0
	MOVWF      FARG_IntToStrWithZeros_input+0
	MOVF       _rpm+1, 0
	MOVWF      FARG_IntToStrWithZeros_input+1
	MOVLW      _txt+0
	MOVWF      FARG_IntToStrWithZeros_output+0
	CALL       _IntToStrWithZeros+0
;fanSpeed.c,101 :: 		lcd_out(1, 11, txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;fanSpeed.c,102 :: 		rpm = 0; timer = 0;
	CLRF       _rpm+0
	CLRF       _rpm+1
	CLRF       _timer+0
	CLRF       _timer+1
;fanSpeed.c,103 :: 		}
L_main39:
;fanSpeed.c,104 :: 		lcd_out_byte(1, 1, speed);
	MOVLW      1
	MOVWF      FARG_lcd_out_byte_x+0
	MOVLW      1
	MOVWF      FARG_lcd_out_byte_y+0
	MOVF       _speed+0, 0
	MOVWF      FARG_lcd_out_byte_val+0
	CALL       _lcd_out_byte+0
;fanSpeed.c,105 :: 		lcd_out_byte(2, 12, hz);
	MOVLW      2
	MOVWF      FARG_lcd_out_byte_x+0
	MOVLW      12
	MOVWF      FARG_lcd_out_byte_y+0
	MOVF       _hz+0, 0
	MOVWF      FARG_lcd_out_byte_val+0
	CALL       _lcd_out_byte+0
;fanSpeed.c,107 :: 		fanSpeed(speed);
	MOVF       _speed+0, 0
	MOVWF      FARG_fanSpeed_speed+0
	CALL       _fanSpeed+0
;fanSpeed.c,108 :: 		key = kp_scan();
	CALL       _kp_scan+0
	MOVF       R0+0, 0
	MOVWF      _key+0
;fanSpeed.c,109 :: 		if(key == '*') setSpeed();
	MOVF       R0+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_main40
	CALL       _setSpeed+0
L_main40:
;fanSpeed.c,110 :: 		}
	GOTO       L_main37
;fanSpeed.c,111 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
