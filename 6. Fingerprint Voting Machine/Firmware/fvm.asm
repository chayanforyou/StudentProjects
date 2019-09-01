
_genimg:

;fvm.c,19 :: 		char genimg(){
;fvm.c,20 :: 		do{
L_genimg0:
;fvm.c,21 :: 		uart1_write(0xef);
	MOVLW      239
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,22 :: 		uart1_write(0x01);  //header
	MOVLW      1
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,23 :: 		uart1_write(0xff);
	MOVLW      255
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,24 :: 		uart1_write(0xff);
	MOVLW      255
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,25 :: 		uart1_write(0xff);
	MOVLW      255
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,26 :: 		uart1_write(0xff); //adres
	MOVLW      255
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,27 :: 		uart1_write(0x01); //write code
	MOVLW      1
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,28 :: 		uart1_write(0x00);
	CLRF       FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,29 :: 		uart1_write(0x03);
	MOVLW      3
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,30 :: 		uart1_write(0x01);
	MOVLW      1
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,31 :: 		uart1_write(0x00);
	CLRF       FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,32 :: 		uart1_write(0x05);
	MOVLW      5
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;fvm.c,33 :: 		for(i=0;i<12;i++){
	CLRF       _i+0
L_genimg3:
	MOVLW      12
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_genimg4
;fvm.c,34 :: 		rxarray[i] = Uart1_Read();
	MOVF       _i+0, 0
	ADDLW      _rxarray+0
	MOVWF      FLOC__genimg+0
	CALL       _UART1_Read+0
	MOVF       FLOC__genimg+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;fvm.c,33 :: 		for(i=0;i<12;i++){
	INCF       _i+0, 1
;fvm.c,35 :: 		}
	GOTO       L_genimg3
L_genimg4:
;fvm.c,36 :: 		}while(rxarray[9] != 0x00);
	MOVF       _rxarray+9, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_genimg0
;fvm.c,37 :: 		}
L_end_genimg:
	RETURN
; end of _genimg

_enroll:

;fvm.c,39 :: 		void enroll(){
;fvm.c,40 :: 		genimg();
	CALL       _genimg+0
;fvm.c,42 :: 		}
L_end_enroll:
	RETURN
; end of _enroll

_main:

;fvm.c,44 :: 		void main(){
;fvm.c,45 :: 		uart1_init(57600);
	MOVLW      8
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;fvm.c,46 :: 		lcd_init();
	CALL       _Lcd_Init+0
;fvm.c,47 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;fvm.c,48 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;fvm.c,49 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;fvm.c,51 :: 		enroll();
	CALL       _enroll+0
;fvm.c,52 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
