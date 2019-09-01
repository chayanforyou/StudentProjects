
_main:

;BT Text board.c,21 :: 		void main() {
;BT Text board.c,22 :: 		lcd_init();
	CALL       _Lcd_Init+0
;BT Text board.c,23 :: 		uart1_init(9600);
	MOVLW      129
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;BT Text board.c,24 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;BT Text board.c,25 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;BT Text board.c,26 :: 		lcd_out(1,1," -BT Voice MSG- ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_BT_32Text_32board+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Text board.c,27 :: 		lcd_out(2,1,"waiting for msg.");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_BT_32Text_32board+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Text board.c,29 :: 		while(1){
L_main0:
;BT Text board.c,30 :: 		lcd_out(2,1,"waiting for msg.");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_BT_32Text_32board+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Text board.c,31 :: 		for(cnt = 0; cnt < 16; cnt++) buffer[cnt] = 0;
	CLRF       _cnt+0
L_main2:
	MOVLW      16
	SUBWF      _cnt+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
	MOVF       _cnt+0, 0
	ADDLW      _buffer+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       _cnt+0, 1
	GOTO       L_main2
L_main3:
;BT Text board.c,32 :: 		while(!uart1_data_ready());
L_main5:
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main6
	GOTO       L_main5
L_main6:
;BT Text board.c,33 :: 		uart1_read_text(msg, "#", 255);
	MOVLW      _msg+0
	MOVWF      FARG_UART1_Read_Text_Output+0
	MOVLW      ?lstr4_BT_32Text_32board+0
	MOVWF      FARG_UART1_Read_Text_Delimiter+0
	MOVLW      255
	MOVWF      FARG_UART1_Read_Text_Attempts+0
	CALL       _UART1_Read_Text+0
;BT Text board.c,35 :: 		index = strlen(msg);
	MOVLW      _msg+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVF       R0+0, 0
	MOVWF      _index+0
;BT Text board.c,36 :: 		if(index - 1 > 16){
	MOVLW      1
	SUBWF      R0+0, 0
	MOVWF      R2+0
	CLRF       R2+1
	BTFSS      STATUS+0, 0
	DECF       R2+1, 1
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main29
	MOVF       R2+0, 0
	SUBLW      16
L__main29:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;BT Text board.c,37 :: 		for(times = 0; times < 3; times++){
	CLRF       _times+0
L_main8:
	MOVLW      3
	SUBWF      _times+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;BT Text board.c,38 :: 		for(scroll = 0; scroll < index; scroll++){
	CLRF       _scroll+0
L_main11:
	MOVF       _index+0, 0
	SUBWF      _scroll+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main12
;BT Text board.c,39 :: 		for(cnt = 0; cnt < 16; cnt++) {
	CLRF       _cnt+0
L_main14:
	MOVLW      16
	SUBWF      _cnt+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main15
;BT Text board.c,40 :: 		buffer[cnt] = msg[scroll + cnt];
	MOVF       _cnt+0, 0
	ADDLW      _buffer+0
	MOVWF      R2+0
	MOVF       _cnt+0, 0
	ADDWF      _scroll+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	MOVF       R0+0, 0
	ADDLW      _msg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;BT Text board.c,41 :: 		if(scroll + cnt >= index) buffer[cnt] = ' ';
	MOVF       _cnt+0, 0
	ADDWF      _scroll+0, 0
	MOVWF      R1+0
	CLRF       R1+1
	BTFSC      STATUS+0, 0
	INCF       R1+1, 1
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVF       _index+0, 0
	SUBWF      R1+0, 0
L__main30:
	BTFSS      STATUS+0, 0
	GOTO       L_main17
	MOVF       _cnt+0, 0
	ADDLW      _buffer+0
	MOVWF      FSR
	MOVLW      32
	MOVWF      INDF+0
L_main17:
;BT Text board.c,39 :: 		for(cnt = 0; cnt < 16; cnt++) {
	INCF       _cnt+0, 1
;BT Text board.c,42 :: 		}
	GOTO       L_main14
L_main15:
;BT Text board.c,43 :: 		for(cnt = 1; cnt <= 16; cnt++){
	MOVLW      1
	MOVWF      _cnt+0
L_main18:
	MOVF       _cnt+0, 0
	SUBLW      16
	BTFSS      STATUS+0, 0
	GOTO       L_main19
;BT Text board.c,44 :: 		lcd_chr(2, cnt, buffer[cnt]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _cnt+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _cnt+0, 0
	ADDLW      _buffer+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;BT Text board.c,43 :: 		for(cnt = 1; cnt <= 16; cnt++){
	INCF       _cnt+0, 1
;BT Text board.c,45 :: 		}
	GOTO       L_main18
L_main19:
;BT Text board.c,46 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
	NOP
;BT Text board.c,38 :: 		for(scroll = 0; scroll < index; scroll++){
	INCF       _scroll+0, 1
;BT Text board.c,47 :: 		}
	GOTO       L_main11
L_main12:
;BT Text board.c,37 :: 		for(times = 0; times < 3; times++){
	INCF       _times+0, 1
;BT Text board.c,48 :: 		}
	GOTO       L_main8
L_main9:
;BT Text board.c,49 :: 		}
	GOTO       L_main22
L_main7:
;BT Text board.c,51 :: 		for(cnt = 1; cnt < 17; cnt++){
	MOVLW      1
	MOVWF      _cnt+0
L_main23:
	MOVLW      17
	SUBWF      _cnt+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main24
;BT Text board.c,52 :: 		buffer[cnt - 1] = msg[cnt];
	MOVLW      1
	SUBWF      _cnt+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVF       R0+0, 0
	ADDLW      _buffer+0
	MOVWF      R1+0
	MOVF       _cnt+0, 0
	ADDLW      _msg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;BT Text board.c,53 :: 		if(cnt >= index) buffer[cnt - 1] = ' ';
	MOVF       _index+0, 0
	SUBWF      _cnt+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main26
	MOVLW      1
	SUBWF      _cnt+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVF       R0+0, 0
	ADDLW      _buffer+0
	MOVWF      FSR
	MOVLW      32
	MOVWF      INDF+0
L_main26:
;BT Text board.c,54 :: 		lcd_chr(2,cnt, buffer[cnt - 1]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _cnt+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      1
	SUBWF      _cnt+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVF       R0+0, 0
	ADDLW      _buffer+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;BT Text board.c,51 :: 		for(cnt = 1; cnt < 17; cnt++){
	INCF       _cnt+0, 1
;BT Text board.c,55 :: 		}
	GOTO       L_main23
L_main24:
;BT Text board.c,56 :: 		delay_ms(5000);
	MOVLW      127
	MOVWF      R11+0
	MOVLW      212
	MOVWF      R12+0
	MOVLW      49
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	NOP
	NOP
;BT Text board.c,57 :: 		}
L_main22:
;BT Text board.c,58 :: 		}
	GOTO       L_main0
;BT Text board.c,59 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
