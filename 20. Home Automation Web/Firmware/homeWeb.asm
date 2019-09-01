
_newline:

;define.h,24 :: 		void newline(){
;define.h,25 :: 		uart1_write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;define.h,26 :: 		uart1_write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;define.h,27 :: 		}
L_end_newline:
	RETURN
; end of _newline

_check_relay:

;define.h,29 :: 		void check_relay(){
;define.h,30 :: 		if(x == 5 && r_status[0] == 'R'){
	MOVF       _x+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_check_relay2
	MOVF       _r_status+0, 0
	XORLW      82
	BTFSS      STATUS+0, 2
	GOTO       L_check_relay2
L__check_relay19:
;define.h,31 :: 		r_status[0] = 0;
	CLRF       _r_status+0
;define.h,32 :: 		if(r_status[1] == '1') rly_1 = 0;
	MOVF       _r_status+1, 0
	XORLW      49
	BTFSS      STATUS+0, 2
	GOTO       L_check_relay3
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
L_check_relay3:
;define.h,33 :: 		if(r_status[2] == '1') rly_2 = 0;
	MOVF       _r_status+2, 0
	XORLW      49
	BTFSS      STATUS+0, 2
	GOTO       L_check_relay4
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
L_check_relay4:
;define.h,34 :: 		if(r_status[3] == '1') rly_3 = 0;
	MOVF       _r_status+3, 0
	XORLW      49
	BTFSS      STATUS+0, 2
	GOTO       L_check_relay5
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
L_check_relay5:
;define.h,35 :: 		if(r_status[4] == '1') rly_4 = 0;
	MOVF       _r_status+4, 0
	XORLW      49
	BTFSS      STATUS+0, 2
	GOTO       L_check_relay6
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
L_check_relay6:
;define.h,36 :: 		if(r_status[1] == '0') rly_1 = 1;
	MOVF       _r_status+1, 0
	XORLW      48
	BTFSS      STATUS+0, 2
	GOTO       L_check_relay7
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
L_check_relay7:
;define.h,37 :: 		if(r_status[2] == '0') rly_2 = 1;
	MOVF       _r_status+2, 0
	XORLW      48
	BTFSS      STATUS+0, 2
	GOTO       L_check_relay8
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
L_check_relay8:
;define.h,38 :: 		if(r_status[3] == '0') rly_3 = 1;
	MOVF       _r_status+3, 0
	XORLW      48
	BTFSS      STATUS+0, 2
	GOTO       L_check_relay9
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
L_check_relay9:
;define.h,39 :: 		if(r_status[4] == '0') rly_4 = 1;
	MOVF       _r_status+4, 0
	XORLW      48
	BTFSS      STATUS+0, 2
	GOTO       L_check_relay10
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
L_check_relay10:
;define.h,40 :: 		}
L_check_relay2:
;define.h,41 :: 		}
L_end_check_relay:
	RETURN
; end of _check_relay

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;define.h,43 :: 		void interrupt (){
;define.h,44 :: 		if (PIR1.RCIF) {
	BTFSS      PIR1+0, 5
	GOTO       L_interrupt11
;define.h,45 :: 		PIR1.RCIF = 0;
	BCF        PIR1+0, 5
;define.h,46 :: 		rxd = 0;
	CLRF       _rxd+0
;define.h,47 :: 		rxd = UART1_read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _rxd+0
;define.h,48 :: 		r_status[x] = rxd;
	MOVF       _x+0, 0
	ADDLW      _r_status+0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;define.h,49 :: 		x++;
	INCF       _x+0, 1
;define.h,50 :: 		if(x == 7) x = 0;
	MOVF       _x+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt12
	CLRF       _x+0
L_interrupt12:
;define.h,51 :: 		check_relay();
	CALL       _check_relay+0
;define.h,52 :: 		}
L_interrupt11:
;define.h,53 :: 		}
L_end_interrupt:
L__interrupt23:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_print_dec:

;define.h,55 :: 		void print_dec(char x, char y, char value){
;define.h,57 :: 		digit[0] = value / 100 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_print_dec_value+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      print_dec_digit_L0+0
;define.h,58 :: 		digit[1] = (value % 100) / 10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_print_dec_value+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      print_dec_digit_L0+1
;define.h,59 :: 		digit[2] = value % 10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_print_dec_value+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      print_dec_digit_L0+2
;define.h,60 :: 		digit[3] = 0;
	CLRF       print_dec_digit_L0+3
;define.h,61 :: 		lcd_out(x,y, digit);
	MOVF       FARG_print_dec_x+0, 0
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       FARG_print_dec_y+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      print_dec_digit_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;define.h,62 :: 		uart1_write(digit[0]);
	MOVF       print_dec_digit_L0+0, 0
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;define.h,63 :: 		uart1_write(digit[1]);
	MOVF       print_dec_digit_L0+1, 0
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;define.h,64 :: 		uart1_write(digit[2]);
	MOVF       print_dec_digit_L0+2, 0
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;define.h,65 :: 		newline();
	CALL       _newline+0
;define.h,66 :: 		}
L_end_print_dec:
	RETURN
; end of _print_dec

_main:

;homeWeb.c,3 :: 		void main() {
;homeWeb.c,4 :: 		lcd_init();
	CALL       _Lcd_Init+0
;homeWeb.c,5 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;homeWeb.c,6 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;homeWeb.c,7 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;homeWeb.c,8 :: 		TRISC4_bit = 1;
	BSF        TRISC4_bit+0, BitPos(TRISC4_bit+0)
;homeWeb.c,9 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;homeWeb.c,10 :: 		INTCON = 0xC0;
	MOVLW      192
	MOVWF      INTCON+0
;homeWeb.c,11 :: 		PIE1.RCIE = 1;
	BSF        PIE1+0, 5
;homeWeb.c,12 :: 		uart1_init(9600);
	MOVLW      129
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;homeWeb.c,14 :: 		lcd_chr(1,4,(char)223);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;homeWeb.c,15 :: 		lcd_out(1,5,"C Smoke: ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_homeWeb+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;homeWeb.c,17 :: 		while(1){
L_main13:
;homeWeb.c,18 :: 		tmp = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _tmp+0
;homeWeb.c,19 :: 		smoke = adc_read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _smoke+0
;homeWeb.c,20 :: 		print_dec(1,1, temp);
	MOVLW      1
	MOVWF      FARG_print_dec_x+0
	MOVLW      1
	MOVWF      FARG_print_dec_y+0
	MOVF       _tmp+0, 0
	MOVWF      R0+0
	CALL       _byte2double+0
	MOVLW      46
	MOVWF      R4+0
	MOVLW      144
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      121
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2byte+0
	MOVF       R0+0, 0
	MOVWF      FARG_print_dec_value+0
	CALL       _print_dec+0
;homeWeb.c,21 :: 		print_dec(1,14, smoke);
	MOVLW      1
	MOVWF      FARG_print_dec_x+0
	MOVLW      14
	MOVWF      FARG_print_dec_y+0
	MOVF       _smoke+0, 0
	MOVWF      FARG_print_dec_value+0
	CALL       _print_dec+0
;homeWeb.c,22 :: 		if(sound){
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_main15
;homeWeb.c,23 :: 		lcd_out(2,2,"    -NONE-    ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_homeWeb+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;homeWeb.c,24 :: 		uart1_write('0');
	MOVLW      48
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;homeWeb.c,25 :: 		newline();
	CALL       _newline+0
;homeWeb.c,26 :: 		delay_ms(200);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
	NOP
;homeWeb.c,27 :: 		}
	GOTO       L_main17
L_main15:
;homeWeb.c,29 :: 		lcd_out(2,2,"-NOISE DETECT-");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_homeWeb+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;homeWeb.c,30 :: 		uart1_write('1');
	MOVLW      49
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;homeWeb.c,31 :: 		newline();
	CALL       _newline+0
;homeWeb.c,32 :: 		delay_ms(200);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;homeWeb.c,33 :: 		}
L_main17:
;homeWeb.c,34 :: 		}
	GOTO       L_main13
;homeWeb.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
