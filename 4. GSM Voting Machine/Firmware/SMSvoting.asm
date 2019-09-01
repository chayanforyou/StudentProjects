
_linefeed:

;gsm_sms_read.h,4 :: 		void linefeed(){
;gsm_sms_read.h,5 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;gsm_sms_read.h,6 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;gsm_sms_read.h,7 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_linefeed0:
	DECFSZ     R13+0, 1
	GOTO       L_linefeed0
	DECFSZ     R12+0, 1
	GOTO       L_linefeed0
	NOP
	NOP
;gsm_sms_read.h,8 :: 		}
L_end_linefeed:
	RETURN
; end of _linefeed

_GSM_init:

;gsm_sms_read.h,10 :: 		void GSM_init(){
;gsm_sms_read.h,11 :: 		uart1_write_text("AT");
	MOVLW      ?lstr1_SMSvoting+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;gsm_sms_read.h,12 :: 		linefeed();
	CALL       _linefeed+0
;gsm_sms_read.h,13 :: 		uart1_write_text("ATE");
	MOVLW      ?lstr2_SMSvoting+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;gsm_sms_read.h,14 :: 		linefeed();
	CALL       _linefeed+0
;gsm_sms_read.h,15 :: 		uart1_write_text("AT + CMGF = 1");
	MOVLW      ?lstr3_SMSvoting+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;gsm_sms_read.h,16 :: 		linefeed();
	CALL       _linefeed+0
;gsm_sms_read.h,17 :: 		uart1_write_text("AT+CNMI=1,2,0,0,0");
	MOVLW      ?lstr4_SMSvoting+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;gsm_sms_read.h,18 :: 		linefeed();
	CALL       _linefeed+0
;gsm_sms_read.h,19 :: 		}
L_end_GSM_init:
	RETURN
; end of _GSM_init

_check_sms:

;gsm_sms_read.h,21 :: 		void check_sms(){
;gsm_sms_read.h,23 :: 		if (UART1_Data_Ready() == 1){
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_check_sms1
;gsm_sms_read.h,24 :: 		output = uart1_read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _output+0
;gsm_sms_read.h,25 :: 		if(output == '+'){
	MOVF       R0+0, 0
	XORLW      43
	BTFSS      STATUS+0, 2
	GOTO       L_check_sms2
;gsm_sms_read.h,26 :: 		for(x=0;x<6;x++){
	CLRF       check_sms_x_L0+0
L_check_sms3:
	MOVLW      6
	SUBWF      check_sms_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_sms4
;gsm_sms_read.h,27 :: 		output = uart1_read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _output+0
;gsm_sms_read.h,26 :: 		for(x=0;x<6;x++){
	INCF       check_sms_x_L0+0, 1
;gsm_sms_read.h,28 :: 		}
	GOTO       L_check_sms3
L_check_sms4:
;gsm_sms_read.h,29 :: 		for(x=0;x<15;x++){
	CLRF       check_sms_x_L0+0
L_check_sms6:
	MOVLW      15
	SUBWF      check_sms_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_check_sms7
;gsm_sms_read.h,30 :: 		number[x] = uart1_read();
	MOVF       check_sms_x_L0+0, 0
	ADDLW      _number+0
	MOVWF      FLOC__check_sms+0
	CALL       _UART1_Read+0
	MOVF       FLOC__check_sms+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;gsm_sms_read.h,29 :: 		for(x=0;x<15;x++){
	INCF       check_sms_x_L0+0, 1
;gsm_sms_read.h,31 :: 		}
	GOTO       L_check_sms6
L_check_sms7:
;gsm_sms_read.h,32 :: 		}
L_check_sms2:
;gsm_sms_read.h,33 :: 		lcd_out(4,1,number);
	MOVLW      4
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _number+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;gsm_sms_read.h,34 :: 		}
L_check_sms1:
;gsm_sms_read.h,35 :: 		}
L_end_check_sms:
	RETURN
; end of _check_sms

_dec2str:

;SMSvoting.c,23 :: 		char dec2str(char value, char x, char y){
;SMSvoting.c,25 :: 		txt[0] = (value / 100) + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_dec2str_value+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      dec2str_txt_L0+0
;SMSvoting.c,26 :: 		txt[1] = ((value % 100) / 10) + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_dec2str_value+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      dec2str_txt_L0+1
;SMSvoting.c,27 :: 		txt[2] = (value % 10) + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_dec2str_value+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      dec2str_txt_L0+2
;SMSvoting.c,28 :: 		lcd_chr(x,y,txt[0]);
	MOVF       FARG_dec2str_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_dec2str_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       dec2str_txt_L0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;SMSvoting.c,29 :: 		lcd_chr(x,y+1,txt[1]);
	MOVF       FARG_dec2str_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       FARG_dec2str_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       dec2str_txt_L0+1, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;SMSvoting.c,30 :: 		lcd_chr(x,y+2,txt[2]);
	MOVF       FARG_dec2str_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	ADDWF      FARG_dec2str_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       dec2str_txt_L0+2, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;SMSvoting.c,31 :: 		}
L_end_dec2str:
	RETURN
; end of _dec2str

_default_lcd:

;SMSvoting.c,33 :: 		void default_lcd(){
;SMSvoting.c,34 :: 		lcd_out(1,1," SMS Voting Machine ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_SMSvoting+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SMSvoting.c,35 :: 		lcd_out(2,1,"Can_A:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_SMSvoting+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SMSvoting.c,36 :: 		lcd_out(2,12,"Can_B:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_SMSvoting+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SMSvoting.c,37 :: 		lcd_out(3,1,"Can_C:");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_SMSvoting+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SMSvoting.c,38 :: 		lcd_out(3,12,"Can_D:");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_SMSvoting+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;SMSvoting.c,39 :: 		}
L_end_default_lcd:
	RETURN
; end of _default_lcd

_main:

;SMSvoting.c,41 :: 		void main() {
;SMSvoting.c,42 :: 		trisc.f4 = 1;
	BSF        TRISC+0, 4
;SMSvoting.c,43 :: 		LCD_init();
	CALL       _Lcd_Init+0
;SMSvoting.c,44 :: 		LCD_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;SMSvoting.c,45 :: 		can_A = 0; can_B = 0; can_C = 0; can_D = 0;
	CLRF       _can_A+0
	CLRF       _can_B+0
	CLRF       _can_C+0
	CLRF       _can_D+0
;SMSvoting.c,46 :: 		uart1_init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;SMSvoting.c,47 :: 		LCD_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;SMSvoting.c,48 :: 		default_lcd();
	CALL       _default_lcd+0
;SMSvoting.c,49 :: 		delay_ms(10000);
	MOVLW      102
	MOVWF      R11+0
	MOVLW      118
	MOVWF      R12+0
	MOVLW      193
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
;SMSvoting.c,50 :: 		GSM_init();
	CALL       _GSM_init+0
;SMSvoting.c,52 :: 		while(1){
L_main10:
;SMSvoting.c,53 :: 		dec2str(can_A, 2, 7);
	MOVF       _can_A+0, 0
	MOVWF      FARG_dec2str_value+0
	MOVLW      2
	MOVWF      FARG_dec2str_x+0
	MOVLW      7
	MOVWF      FARG_dec2str_y+0
	CALL       _dec2str+0
;SMSvoting.c,54 :: 		dec2str(can_B, 2, 18);
	MOVF       _can_B+0, 0
	MOVWF      FARG_dec2str_value+0
	MOVLW      2
	MOVWF      FARG_dec2str_x+0
	MOVLW      18
	MOVWF      FARG_dec2str_y+0
	CALL       _dec2str+0
;SMSvoting.c,55 :: 		dec2str(can_C, 3, 7);
	MOVF       _can_C+0, 0
	MOVWF      FARG_dec2str_value+0
	MOVLW      3
	MOVWF      FARG_dec2str_x+0
	MOVLW      7
	MOVWF      FARG_dec2str_y+0
	CALL       _dec2str+0
;SMSvoting.c,56 :: 		dec2str(can_D, 3, 18);
	MOVF       _can_D+0, 0
	MOVWF      FARG_dec2str_value+0
	MOVLW      3
	MOVWF      FARG_dec2str_x+0
	MOVLW      18
	MOVWF      FARG_dec2str_y+0
	CALL       _dec2str+0
;SMSvoting.c,57 :: 		check_sms();
	CALL       _check_sms+0
;SMSvoting.c,58 :: 		}
	GOTO       L_main10
;SMSvoting.c,59 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
