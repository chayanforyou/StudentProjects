
_masking:

;8x48 PC.c,15 :: 		void masking(unsigned short row_temp){
;8x48 PC.c,16 :: 		portb.f0 = row_temp.f5; portb.f1 = row_temp.f2;
	BTFSC      FARG_masking_row_temp+0, 5
	GOTO       L__masking37
	BCF        PORTB+0, 0
	GOTO       L__masking38
L__masking37:
	BSF        PORTB+0, 0
L__masking38:
	BTFSC      FARG_masking_row_temp+0, 2
	GOTO       L__masking39
	BCF        PORTB+0, 1
	GOTO       L__masking40
L__masking39:
	BSF        PORTB+0, 1
L__masking40:
;8x48 PC.c,17 :: 		portb.f2 = row_temp.f0; portb.f3 = row_temp.f1;
	BTFSC      FARG_masking_row_temp+0, 0
	GOTO       L__masking41
	BCF        PORTB+0, 2
	GOTO       L__masking42
L__masking41:
	BSF        PORTB+0, 2
L__masking42:
	BTFSC      FARG_masking_row_temp+0, 1
	GOTO       L__masking43
	BCF        PORTB+0, 3
	GOTO       L__masking44
L__masking43:
	BSF        PORTB+0, 3
L__masking44:
;8x48 PC.c,18 :: 		portb.f4 = row_temp.f3; portb.f5 = row_temp.f6;
	BTFSC      FARG_masking_row_temp+0, 3
	GOTO       L__masking45
	BCF        PORTB+0, 4
	GOTO       L__masking46
L__masking45:
	BSF        PORTB+0, 4
L__masking46:
	BTFSC      FARG_masking_row_temp+0, 6
	GOTO       L__masking47
	BCF        PORTB+0, 5
	GOTO       L__masking48
L__masking47:
	BSF        PORTB+0, 5
L__masking48:
;8x48 PC.c,19 :: 		portb.f6 = row_temp.f4; portb.f7 = row_temp.f7;
	BTFSC      FARG_masking_row_temp+0, 4
	GOTO       L__masking49
	BCF        PORTB+0, 6
	GOTO       L__masking50
L__masking49:
	BSF        PORTB+0, 6
L__masking50:
	BTFSC      FARG_masking_row_temp+0, 7
	GOTO       L__masking51
	BCF        PORTB+0, 7
	GOTO       L__masking52
L__masking51:
	BSF        PORTB+0, 7
L__masking52:
;8x48 PC.c,20 :: 		}
L_end_masking:
	RETURN
; end of _masking

_load_text:

;8x48 PC.c,22 :: 		void load_text(){
;8x48 PC.c,24 :: 		for(count = 0; count < 80; count++){
	CLRF       _count+0
	CLRF       _count+1
L_load_text0:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__load_text54
	MOVLW      80
	SUBWF      _count+0, 0
L__load_text54:
	BTFSC      STATUS+0, 0
	GOTO       L_load_text1
;8x48 PC.c,25 :: 		read = EEPROM_read(count);
	MOVF       _count+0, 0
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      load_text_read_L0+0
;8x48 PC.c,26 :: 		if(read == 0xFF) break;
	MOVF       R0+0, 0
	XORLW      255
	BTFSS      STATUS+0, 2
	GOTO       L_load_text3
	GOTO       L_load_text1
L_load_text3:
;8x48 PC.c,27 :: 		else text[count] = read;
	MOVF       _count+0, 0
	ADDLW      _text+0
	MOVWF      FSR
	MOVF       load_text_read_L0+0, 0
	MOVWF      INDF+0
;8x48 PC.c,24 :: 		for(count = 0; count < 80; count++){
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
;8x48 PC.c,28 :: 		}
	GOTO       L_load_text0
L_load_text1:
;8x48 PC.c,29 :: 		}
L_end_load_text:
	RETURN
; end of _load_text

_pc_mode:

;8x48 PC.c,31 :: 		void pc_mode(){
;8x48 PC.c,32 :: 		for(count = 0; count < 80; count++) EEPROM_write(count, 0xFF);
	CLRF       _count+0
	CLRF       _count+1
L_pc_mode5:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pc_mode56
	MOVLW      80
	SUBWF      _count+0, 0
L__pc_mode56:
	BTFSC      STATUS+0, 0
	GOTO       L_pc_mode6
	MOVF       _count+0, 0
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      255
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
	GOTO       L_pc_mode5
L_pc_mode6:
;8x48 PC.c,33 :: 		for(count = 0; count < 80; count++) text[count] = 0xFF;
	CLRF       _count+0
	CLRF       _count+1
L_pc_mode8:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pc_mode57
	MOVLW      80
	SUBWF      _count+0, 0
L__pc_mode57:
	BTFSC      STATUS+0, 0
	GOTO       L_pc_mode9
	MOVF       _count+0, 0
	ADDLW      _text+0
	MOVWF      FSR
	MOVLW      255
	MOVWF      INDF+0
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
	GOTO       L_pc_mode8
L_pc_mode9:
;8x48 PC.c,34 :: 		uart1_read_text(text, "#", 255);
	MOVLW      _text+0
	MOVWF      FARG_UART1_Read_Text_Output+0
	MOVLW      ?lstr1_8x48_32PC+0
	MOVWF      FARG_UART1_Read_Text_Delimiter+0
	MOVLW      255
	MOVWF      FARG_UART1_Read_Text_Attempts+0
	CALL       _UART1_Read_Text+0
;8x48 PC.c,35 :: 		index = strlen(text) - 1;
	MOVLW      _text+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	DECF       R0+0, 0
	MOVWF      _index+0
;8x48 PC.c,36 :: 		for(count = 0; count < index; count++){
	CLRF       _count+0
	CLRF       _count+1
L_pc_mode11:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__pc_mode58
	MOVF       _index+0, 0
	SUBWF      _count+0, 0
L__pc_mode58:
	BTFSC      STATUS+0, 0
	GOTO       L_pc_mode12
;8x48 PC.c,37 :: 		EEPROM_write(count, text[count]);
	MOVF       _count+0, 0
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _count+0, 0
	ADDLW      _text+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;8x48 PC.c,36 :: 		for(count = 0; count < index; count++){
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
;8x48 PC.c,38 :: 		}
	GOTO       L_pc_mode11
L_pc_mode12:
;8x48 PC.c,39 :: 		uart1_write_text("msg saved.\n");
	MOVLW      ?lstr2_8x48_32PC+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;8x48 PC.c,40 :: 		}
L_end_pc_mode:
	RETURN
; end of _pc_mode

_main:

;8x48 PC.c,42 :: 		void main() {
;8x48 PC.c,43 :: 		ADCON1 = 0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;8x48 PC.c,44 :: 		TRISA = 0x00; PORTA = 0x00;
	CLRF       TRISA+0
	CLRF       PORTA+0
;8x48 PC.c,45 :: 		TRISB = 0x00; PORTB = 0x00;
	CLRF       TRISB+0
	CLRF       PORTB+0
;8x48 PC.c,46 :: 		TRISC3_bit = 1;
	BSF        TRISC3_bit+0, BitPos(TRISC3_bit+0)
;8x48 PC.c,47 :: 		UART1_init(9600);
	MOVLW      129
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;8x48 PC.c,48 :: 		for(count = 0; count < 48; count++) buffer[count] = 0;
	CLRF       _count+0
	CLRF       _count+1
L_main14:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main60
	MOVLW      48
	SUBWF      _count+0, 0
L__main60:
	BTFSC      STATUS+0, 0
	GOTO       L_main15
	MOVF       _count+0, 0
	ADDLW      _buffer+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
	GOTO       L_main14
L_main15:
;8x48 PC.c,49 :: 		if(pc_key) pc_mode();
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_main17
	CALL       _pc_mode+0
L_main17:
;8x48 PC.c,51 :: 		while(1){
L_main18:
;8x48 PC.c,52 :: 		load_text();
	CALL       _load_text+0
;8x48 PC.c,53 :: 		index = strlen(text);
	MOVLW      _text+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVF       R0+0, 0
	MOVWF      _index+0
;8x48 PC.c,54 :: 		for(scroll = 0; scroll < index; scroll++){
	CLRF       _scroll+0
	CLRF       _scroll+1
L_main20:
	MOVLW      128
	XORWF      _scroll+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main61
	MOVF       _index+0, 0
	SUBWF      _scroll+0, 0
L__main61:
	BTFSC      STATUS+0, 0
	GOTO       L_main21
;8x48 PC.c,55 :: 		adress = text[scroll] - 32;
	MOVF       _scroll+0, 0
	ADDLW      _text+0
	MOVWF      FSR
	MOVLW      32
	SUBWF      INDF+0, 0
	MOVWF      R3+0
	CLRF       R3+1
	BTFSS      STATUS+0, 0
	DECF       R3+1, 1
	MOVF       R3+0, 0
	MOVWF      _adress+0
	MOVF       R3+1, 0
	MOVWF      _adress+1
;8x48 PC.c,56 :: 		adress *= 8;
	MOVLW      3
	MOVWF      R2+0
	MOVF       R3+0, 0
	MOVWF      R0+0
	MOVF       R3+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__main62:
	BTFSC      STATUS+0, 2
	GOTO       L__main63
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__main62
L__main63:
	MOVF       R0+0, 0
	MOVWF      _adress+0
	MOVF       R0+1, 0
	MOVWF      _adress+1
;8x48 PC.c,57 :: 		for(count = adress; count < adress + 8; count++){
	MOVF       R0+0, 0
	MOVWF      _count+0
	MOVF       R0+1, 0
	MOVWF      _count+1
L_main23:
	MOVLW      8
	ADDWF      _adress+0, 0
	MOVWF      R1+0
	MOVF       _adress+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R1+1
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main64
	MOVF       R1+0, 0
	SUBWF      _count+0, 0
L__main64:
	BTFSC      STATUS+0, 0
	GOTO       L_main24
;8x48 PC.c,58 :: 		for(update = 0; update < 48; update++){buffer[update] = buffer[update + 1];}
	CLRF       _update+0
	CLRF       _update+1
L_main26:
	MOVLW      128
	XORWF      _update+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main65
	MOVLW      48
	SUBWF      _update+0, 0
L__main65:
	BTFSC      STATUS+0, 0
	GOTO       L_main27
	MOVF       _update+0, 0
	ADDLW      _buffer+0
	MOVWF      R2+0
	MOVF       _update+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _update+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _buffer+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	INCF       _update+0, 1
	BTFSC      STATUS+0, 2
	INCF       _update+1, 1
	GOTO       L_main26
L_main27:
;8x48 PC.c,59 :: 		buffer[47] = Character[count];
	MOVF       _count+0, 0
	ADDLW      _Character+0
	MOVWF      R0+0
	MOVLW      hi_addr(_Character+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _count+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      _buffer+47
;8x48 PC.c,60 :: 		for(speed = 0; speed < 20; speed++){
	CLRF       _speed+0
L_main29:
	MOVLW      20
	SUBWF      _speed+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main30
;8x48 PC.c,61 :: 		DS = 0; SH = 1; SH = 0; ST = 1; ST = 0;
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	BSF        PORTA+0, 1
	BCF        PORTA+0, 1
;8x48 PC.c,62 :: 		for(col = 0; col < 48; col++){
	CLRF       _col+0
L_main32:
	MOVLW      48
	SUBWF      _col+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main33
;8x48 PC.c,63 :: 		row_data = buffer[col];
	MOVF       _col+0, 0
	ADDLW      _buffer+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _row_data+0
;8x48 PC.c,64 :: 		masking(row_data);
	MOVF       R0+0, 0
	MOVWF      FARG_masking_row_temp+0
	CALL       _masking+0
;8x48 PC.c,65 :: 		delay_us(100);
	MOVLW      166
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	NOP
;8x48 PC.c,66 :: 		PORTB = 0;
	CLRF       PORTB+0
;8x48 PC.c,67 :: 		DS = 1; SH = 1; SH = 0; ST = 1; ST = 0;
	BSF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	BSF        PORTA+0, 1
	BCF        PORTA+0, 1
;8x48 PC.c,62 :: 		for(col = 0; col < 48; col++){
	INCF       _col+0, 1
;8x48 PC.c,68 :: 		}
	GOTO       L_main32
L_main33:
;8x48 PC.c,60 :: 		for(speed = 0; speed < 20; speed++){
	INCF       _speed+0, 1
;8x48 PC.c,69 :: 		}
	GOTO       L_main29
L_main30:
;8x48 PC.c,57 :: 		for(count = adress; count < adress + 8; count++){
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
;8x48 PC.c,70 :: 		}
	GOTO       L_main23
L_main24:
;8x48 PC.c,54 :: 		for(scroll = 0; scroll < index; scroll++){
	INCF       _scroll+0, 1
	BTFSC      STATUS+0, 2
	INCF       _scroll+1, 1
;8x48 PC.c,71 :: 		}
	GOTO       L_main20
L_main21:
;8x48 PC.c,72 :: 		}
	GOTO       L_main18
;8x48 PC.c,73 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
