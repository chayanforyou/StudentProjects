
_StartSignal:

;dht11.h,4 :: 		void StartSignal(){
;dht11.h,5 :: 		DHT11_dir = 0;
	BCF        TRISC0_bit+0, BitPos(TRISC0_bit+0)
;dht11.h,6 :: 		DHT11 = 0;
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;dht11.h,7 :: 		delay_ms(18);
	MOVLW      117
	MOVWF      R12+0
	MOVLW      225
	MOVWF      R13+0
L_StartSignal0:
	DECFSZ     R13+0, 1
	GOTO       L_StartSignal0
	DECFSZ     R12+0, 1
	GOTO       L_StartSignal0
;dht11.h,8 :: 		DHT11 = 1;
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
;dht11.h,9 :: 		delay_us(30);
	MOVLW      49
	MOVWF      R13+0
L_StartSignal1:
	DECFSZ     R13+0, 1
	GOTO       L_StartSignal1
	NOP
	NOP
;dht11.h,10 :: 		DHT11_dir = 1;
	BSF        TRISC0_bit+0, BitPos(TRISC0_bit+0)
;dht11.h,11 :: 		}
L_end_StartSignal:
	RETURN
; end of _StartSignal

_CheckResponse:

;dht11.h,13 :: 		void CheckResponse(){
;dht11.h,14 :: 		_Check = 0;
	CLRF       __Check+0
;dht11.h,15 :: 		delay_us(40);
	MOVLW      66
	MOVWF      R13+0
L_CheckResponse2:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse2
	NOP
;dht11.h,16 :: 		if(DHT11 == 0){
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_CheckResponse3
;dht11.h,17 :: 		delay_us(80);
	MOVLW      133
	MOVWF      R13+0
L_CheckResponse4:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse4
;dht11.h,18 :: 		if(DHT11 == 1) _Check = 1;
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_CheckResponse5
	MOVLW      1
	MOVWF      __Check+0
L_CheckResponse5:
;dht11.h,19 :: 		delay_us(40);
	MOVLW      66
	MOVWF      R13+0
L_CheckResponse6:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse6
	NOP
;dht11.h,20 :: 		}
L_CheckResponse3:
;dht11.h,21 :: 		}
L_end_CheckResponse:
	RETURN
; end of _CheckResponse

_ReadData:

;dht11.h,23 :: 		char ReadData(){
;dht11.h,25 :: 		for(j = 0; j < 8; j++){
	CLRF       R3+0
L_ReadData7:
	MOVLW      8
	SUBWF      R3+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_ReadData8
;dht11.h,26 :: 		while(!DHT11);
L_ReadData10:
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_ReadData11
	GOTO       L_ReadData10
L_ReadData11:
;dht11.h,27 :: 		delay_us(30);
	MOVLW      49
	MOVWF      R13+0
L_ReadData12:
	DECFSZ     R13+0, 1
	GOTO       L_ReadData12
	NOP
	NOP
;dht11.h,28 :: 		if(DHT11 == 0)
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_ReadData13
;dht11.h,29 :: 		i&= ~(1 << (7 - j));
	MOVF       R3+0, 0
	SUBLW      7
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ReadData25:
	BTFSC      STATUS+0, 2
	GOTO       L__ReadData26
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ReadData25
L__ReadData26:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      R2+0, 1
	GOTO       L_ReadData14
L_ReadData13:
;dht11.h,31 :: 		i|= (1 << (7 - j));
	MOVF       R3+0, 0
	SUBLW      7
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ReadData27:
	BTFSC      STATUS+0, 2
	GOTO       L__ReadData28
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ReadData27
L__ReadData28:
	MOVF       R0+0, 0
	IORWF      R2+0, 1
;dht11.h,32 :: 		while(DHT11);
L_ReadData15:
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_ReadData16
	GOTO       L_ReadData15
L_ReadData16:
;dht11.h,33 :: 		}
L_ReadData14:
;dht11.h,25 :: 		for(j = 0; j < 8; j++){
	INCF       R3+0, 1
;dht11.h,34 :: 		}
	GOTO       L_ReadData7
L_ReadData8:
;dht11.h,35 :: 		return i;
	MOVF       R2+0, 0
	MOVWF      R0+0
;dht11.h,36 :: 		}
L_end_ReadData:
	RETURN
; end of _ReadData

_DHT11_read:

;dht11.h,38 :: 		int DHT11_read(){
;dht11.h,40 :: 		StartSignal();
	CALL       _StartSignal+0
;dht11.h,41 :: 		CheckResponse();
	CALL       _CheckResponse+0
;dht11.h,42 :: 		if(_Check == 1){
	MOVF       __Check+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_DHT11_read17
;dht11.h,43 :: 		RH = ReadData();
	CALL       _ReadData+0
	MOVF       R0+0, 0
	MOVWF      DHT11_read_RH_L0+0
;dht11.h,44 :: 		ReadData();
	CALL       _ReadData+0
;dht11.h,45 :: 		Temp = ReadData();
	CALL       _ReadData+0
	MOVF       R0+0, 0
	MOVWF      DHT11_read_Temp_L0+0
;dht11.h,46 :: 		ReadData();
	CALL       _ReadData+0
;dht11.h,47 :: 		Sum = ReadData();
	CALL       _ReadData+0
;dht11.h,48 :: 		if(Sum == (RH + Temp)){
	MOVF       DHT11_read_Temp_L0+0, 0
	ADDWF      DHT11_read_RH_L0+0, 0
	MOVWF      R2+0
	CLRF       R2+1
	BTFSC      STATUS+0, 0
	INCF       R2+1, 1
	MOVLW      0
	XORWF      R2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__DHT11_read30
	MOVF       R2+0, 0
	XORWF      R0+0, 0
L__DHT11_read30:
	BTFSS      STATUS+0, 2
	GOTO       L_DHT11_read18
;dht11.h,49 :: 		return (RH << 8) + Temp;
	MOVF       DHT11_read_RH_L0+0, 0
	MOVWF      R0+1
	CLRF       R0+0
	MOVF       DHT11_read_Temp_L0+0, 0
	ADDWF      R0+0, 1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	GOTO       L_end_DHT11_read
;dht11.h,50 :: 		}
L_DHT11_read18:
;dht11.h,51 :: 		}
L_DHT11_read17:
;dht11.h,52 :: 		}
L_end_DHT11_read:
	RETURN
; end of _DHT11_read

_lcd_out_byte:

;weather.c,21 :: 		void lcd_out_byte(char x, char y, char byte){
;weather.c,23 :: 		digit[0] = byte / 100 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_lcd_out_byte_byte+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      lcd_out_byte_digit_L0+0
;weather.c,24 :: 		digit[1] = (byte % 100) / 10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_lcd_out_byte_byte+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      lcd_out_byte_digit_L0+1
;weather.c,25 :: 		digit[2] = byte % 10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_lcd_out_byte_byte+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      lcd_out_byte_digit_L0+2
;weather.c,26 :: 		digit[3] = 0;
	CLRF       lcd_out_byte_digit_L0+3
;weather.c,27 :: 		lcd_out(x,y,digit);
	MOVF       FARG_lcd_out_byte_x+0, 0
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       FARG_lcd_out_byte_y+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      lcd_out_byte_digit_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;weather.c,28 :: 		}
L_end_lcd_out_byte:
	RETURN
; end of _lcd_out_byte

_uart1_write_byte:

;weather.c,30 :: 		void uart1_write_byte(char byte){
;weather.c,32 :: 		digit[0] = byte / 100 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_uart1_write_byte_byte+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      uart1_write_byte_digit_L0+0
;weather.c,33 :: 		digit[1] = (byte % 100) / 10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_uart1_write_byte_byte+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      uart1_write_byte_digit_L0+1
;weather.c,34 :: 		digit[2] = byte % 10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_uart1_write_byte_byte+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      uart1_write_byte_digit_L0+2
;weather.c,35 :: 		digit[3] = 0;
	CLRF       uart1_write_byte_digit_L0+3
;weather.c,36 :: 		uart1_write_text(digit);
	MOVLW      uart1_write_byte_digit_L0+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;weather.c,37 :: 		}
L_end_uart1_write_byte:
	RETURN
; end of _uart1_write_byte

_main:

;weather.c,39 :: 		void main() {
;weather.c,40 :: 		lcd_init();
	CALL       _Lcd_Init+0
;weather.c,41 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;weather.c,42 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;weather.c,43 :: 		UART1_init(9600);
	MOVLW      129
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;weather.c,45 :: 		lcd_out(1,1,"Humidity:    %");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_weather+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;weather.c,46 :: 		lcd_chr(2,4, 223);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;weather.c,47 :: 		lcd_out(2,5,"C");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_weather+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;weather.c,48 :: 		lcd_out(2,9,"LDR:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_weather+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;weather.c,49 :: 		lcd_out(2,16,"%");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_weather+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;weather.c,51 :: 		while(1){
L_main19:
;weather.c,52 :: 		sensor = DHT11_read();
	CALL       _DHT11_read+0
	MOVF       R0+0, 0
	MOVWF      _sensor+0
	MOVF       R0+1, 0
	MOVWF      _sensor+1
;weather.c,53 :: 		hum = sensor >> 8;
	MOVF       R0+1, 0
	MOVWF      R2+0
	CLRF       R2+1
	MOVF       R2+0, 0
	MOVWF      _hum+0
;weather.c,54 :: 		temp = sensor;
	MOVF       R0+0, 0
	MOVWF      _temp+0
;weather.c,55 :: 		LDR = adc_read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _LDR+0
;weather.c,56 :: 		LDR = 255 - LDR;
	MOVF       R0+0, 0
	SUBLW      255
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _LDR+0
;weather.c,57 :: 		LDR = LDR / 2.55;
	CALL       _byte2double+0
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
	MOVWF      _LDR+0
;weather.c,58 :: 		delay_ms(500);
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
;weather.c,60 :: 		lcd_out_byte(1,11,hum);
	MOVLW      1
	MOVWF      FARG_lcd_out_byte_x+0
	MOVLW      11
	MOVWF      FARG_lcd_out_byte_y+0
	MOVF       _hum+0, 0
	MOVWF      FARG_lcd_out_byte_byte+0
	CALL       _lcd_out_byte+0
;weather.c,61 :: 		lcd_out_byte(2,1,temp);
	MOVLW      2
	MOVWF      FARG_lcd_out_byte_x+0
	MOVLW      1
	MOVWF      FARG_lcd_out_byte_y+0
	MOVF       _temp+0, 0
	MOVWF      FARG_lcd_out_byte_byte+0
	CALL       _lcd_out_byte+0
;weather.c,62 :: 		lcd_out_byte(2,13,LDR);
	MOVLW      2
	MOVWF      FARG_lcd_out_byte_x+0
	MOVLW      13
	MOVWF      FARG_lcd_out_byte_y+0
	MOVF       _LDR+0, 0
	MOVWF      FARG_lcd_out_byte_byte+0
	CALL       _lcd_out_byte+0
;weather.c,64 :: 		uart1_write_text("Humidity: ");
	MOVLW      ?lstr5_weather+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;weather.c,65 :: 		uart1_write_byte(hum);
	MOVF       _hum+0, 0
	MOVWF      FARG_uart1_write_byte_byte+0
	CALL       _uart1_write_byte+0
;weather.c,66 :: 		uart1_write_text("%\tTemperature: ");
	MOVLW      ?lstr6_weather+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;weather.c,67 :: 		uart1_write_byte(temp);
	MOVF       _temp+0, 0
	MOVWF      FARG_uart1_write_byte_byte+0
	CALL       _uart1_write_byte+0
;weather.c,68 :: 		uart1_write((char)176);
	MOVLW      176
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;weather.c,69 :: 		uart1_write_text("C\tLight: ");
	MOVLW      ?lstr7_weather+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;weather.c,70 :: 		uart1_write_byte(LDR);
	MOVF       _LDR+0, 0
	MOVWF      FARG_uart1_write_byte_byte+0
	CALL       _uart1_write_byte+0
;weather.c,71 :: 		uart1_write_text("%\n");
	MOVLW      ?lstr8_weather+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;weather.c,72 :: 		}
	GOTO       L_main19
;weather.c,73 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
