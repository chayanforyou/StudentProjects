
_masking:

;8x48 PC.c,28 :: 		void masking(unsigned short row_temp){
;8x48 PC.c,29 :: 		portb.f0 = row_temp.f5; portb.f1 = row_temp.f2;
	BTFSC      FARG_masking_row_temp+0, 5
	GOTO       L__masking34
	BCF        PORTB+0, 0
	GOTO       L__masking35
L__masking34:
	BSF        PORTB+0, 0
L__masking35:
	BTFSC      FARG_masking_row_temp+0, 2
	GOTO       L__masking36
	BCF        PORTB+0, 1
	GOTO       L__masking37
L__masking36:
	BSF        PORTB+0, 1
L__masking37:
;8x48 PC.c,30 :: 		portb.f2 = row_temp.f0; portb.f3 = row_temp.f1;
	BTFSC      FARG_masking_row_temp+0, 0
	GOTO       L__masking38
	BCF        PORTB+0, 2
	GOTO       L__masking39
L__masking38:
	BSF        PORTB+0, 2
L__masking39:
	BTFSC      FARG_masking_row_temp+0, 1
	GOTO       L__masking40
	BCF        PORTB+0, 3
	GOTO       L__masking41
L__masking40:
	BSF        PORTB+0, 3
L__masking41:
;8x48 PC.c,31 :: 		portb.f4 = row_temp.f3; portb.f5 = row_temp.f6;
	BTFSC      FARG_masking_row_temp+0, 3
	GOTO       L__masking42
	BCF        PORTB+0, 4
	GOTO       L__masking43
L__masking42:
	BSF        PORTB+0, 4
L__masking43:
	BTFSC      FARG_masking_row_temp+0, 6
	GOTO       L__masking44
	BCF        PORTB+0, 5
	GOTO       L__masking45
L__masking44:
	BSF        PORTB+0, 5
L__masking45:
;8x48 PC.c,32 :: 		portb.f6 = row_temp.f4; portb.f7 = row_temp.f7;
	BTFSC      FARG_masking_row_temp+0, 4
	GOTO       L__masking46
	BCF        PORTB+0, 6
	GOTO       L__masking47
L__masking46:
	BSF        PORTB+0, 6
L__masking47:
	BTFSC      FARG_masking_row_temp+0, 7
	GOTO       L__masking48
	BCF        PORTB+0, 7
	GOTO       L__masking49
L__masking48:
	BSF        PORTB+0, 7
L__masking49:
;8x48 PC.c,33 :: 		}
L_end_masking:
	RETURN
; end of _masking

_read_EEPROM:

;8x48 PC.c,35 :: 		char read_EEPROM(char adres){
;8x48 PC.c,37 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;8x48 PC.c,38 :: 		I2C1_Wr(0xA0);
	MOVLW      160
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;8x48 PC.c,39 :: 		I2C1_Wr(adres);
	MOVF       FARG_read_EEPROM_adres+0, 0
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;8x48 PC.c,40 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;8x48 PC.c,41 :: 		I2C1_Wr(0xA1);
	MOVLW      161
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;8x48 PC.c,42 :: 		dta = I2C1_Rd(0u);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      read_EEPROM_dta_L0+0
;8x48 PC.c,43 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;8x48 PC.c,44 :: 		return dta;
	MOVF       read_EEPROM_dta_L0+0, 0
	MOVWF      R0+0
;8x48 PC.c,45 :: 		}
L_end_read_EEPROM:
	RETURN
; end of _read_EEPROM

_load_text:

;8x48 PC.c,56 :: 		void load_text(){
;8x48 PC.c,57 :: 		char x = 0;
	CLRF       load_text_x_L0+0
;8x48 PC.c,59 :: 		for(x = 0; x < 80; x++) text[x] = 0;
	CLRF       load_text_x_L0+0
L_load_text0:
	MOVLW      80
	SUBWF      load_text_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_load_text1
	MOVF       load_text_x_L0+0, 0
	ADDLW      _Text+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       load_text_x_L0+0, 1
	GOTO       L_load_text0
L_load_text1:
;8x48 PC.c,61 :: 		for(x = 0; x < 80; x++){
	CLRF       load_text_x_L0+0
L_load_text3:
	MOVLW      80
	SUBWF      load_text_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_load_text4
;8x48 PC.c,62 :: 		read = 0;
	CLRF       load_text_read_L0+0
;8x48 PC.c,63 :: 		read = read_EEPROM(x);
	MOVF       load_text_x_L0+0, 0
	MOVWF      FARG_read_EEPROM_adres+0
	CALL       _read_EEPROM+0
	MOVF       R0+0, 0
	MOVWF      load_text_read_L0+0
;8x48 PC.c,64 :: 		if(read == '#' || read == 0 || read == 0xFF) break;
	MOVF       R0+0, 0
	XORLW      35
	BTFSC      STATUS+0, 2
	GOTO       L__load_text32
	MOVF       load_text_read_L0+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L__load_text32
	MOVF       load_text_read_L0+0, 0
	XORLW      255
	BTFSC      STATUS+0, 2
	GOTO       L__load_text32
	GOTO       L_load_text8
L__load_text32:
	GOTO       L_load_text4
L_load_text8:
;8x48 PC.c,65 :: 		else text[x] = read;
	MOVF       load_text_x_L0+0, 0
	ADDLW      _Text+0
	MOVWF      FSR
	MOVF       load_text_read_L0+0, 0
	MOVWF      INDF+0
;8x48 PC.c,61 :: 		for(x = 0; x < 80; x++){
	INCF       load_text_x_L0+0, 1
;8x48 PC.c,66 :: 		}
	GOTO       L_load_text3
L_load_text4:
;8x48 PC.c,67 :: 		}
L_end_load_text:
	RETURN
; end of _load_text

_main:

;8x48 PC.c,69 :: 		void main() {
;8x48 PC.c,70 :: 		ADCON1 = 0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;8x48 PC.c,71 :: 		TRISA = 0x00; PORTA = 0x00;
	CLRF       TRISA+0
	CLRF       PORTA+0
;8x48 PC.c,72 :: 		TRISB = 0x00; PORTB = 0x00;
	CLRF       TRISB+0
	CLRF       PORTB+0
;8x48 PC.c,73 :: 		I2C1_Init(100000);
	MOVLW      50
	MOVWF      SSPADD+0
	CALL       _I2C1_Init+0
;8x48 PC.c,74 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
;8x48 PC.c,75 :: 		for(count = 0; count < Matrix_col; count++) buffer[count] = 0;
	CLRF       _count+0
	CLRF       _count+1
L_main11:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main53
	MOVLW      64
	SUBWF      _count+0, 0
L__main53:
	BTFSC      STATUS+0, 0
	GOTO       L_main12
	MOVF       _count+0, 0
	ADDLW      _buffer+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
	GOTO       L_main11
L_main12:
;8x48 PC.c,77 :: 		while(1){
L_main14:
;8x48 PC.c,78 :: 		load_text();
	CALL       _load_text+0
;8x48 PC.c,79 :: 		index = strlen(text);
	MOVLW      _Text+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVF       R0+0, 0
	MOVWF      _index+0
;8x48 PC.c,80 :: 		for(scroll = 0; scroll < index; scroll++){
	CLRF       _scroll+0
	CLRF       _scroll+1
L_main16:
	MOVLW      128
	XORWF      _scroll+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main54
	MOVF       _index+0, 0
	SUBWF      _scroll+0, 0
L__main54:
	BTFSC      STATUS+0, 0
	GOTO       L_main17
;8x48 PC.c,81 :: 		adress = text[scroll] - 32;
	MOVF       _scroll+0, 0
	ADDLW      _Text+0
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
;8x48 PC.c,82 :: 		adress *= 8;
	MOVLW      3
	MOVWF      R2+0
	MOVF       R3+0, 0
	MOVWF      R0+0
	MOVF       R3+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__main55:
	BTFSC      STATUS+0, 2
	GOTO       L__main56
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__main55
L__main56:
	MOVF       R0+0, 0
	MOVWF      _adress+0
	MOVF       R0+1, 0
	MOVWF      _adress+1
;8x48 PC.c,83 :: 		for(count = adress; count < adress + 8; count++){
	MOVF       R0+0, 0
	MOVWF      _count+0
	MOVF       R0+1, 0
	MOVWF      _count+1
L_main19:
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
	GOTO       L__main57
	MOVF       R1+0, 0
	SUBWF      _count+0, 0
L__main57:
	BTFSC      STATUS+0, 0
	GOTO       L_main20
;8x48 PC.c,84 :: 		for(update = 0; update < Matrix_col; update++){buffer[update] = buffer[update + 1];}
	CLRF       _update+0
	CLRF       _update+1
L_main22:
	MOVLW      128
	XORWF      _update+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main58
	MOVLW      64
	SUBWF      _update+0, 0
L__main58:
	BTFSC      STATUS+0, 0
	GOTO       L_main23
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
	GOTO       L_main22
L_main23:
;8x48 PC.c,85 :: 		buffer[Matrix_col - 1] = Character[count];
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
	MOVWF      _buffer+63
;8x48 PC.c,86 :: 		for(speed = 0; speed < Scrolling_speed; speed++){
	CLRF       _speed+0
L_main25:
	MOVLW      30
	SUBWF      _speed+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main26
;8x48 PC.c,87 :: 		DS = 0; SH = 1; SH = 0; ST = 1; ST = 0;
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	BSF        PORTA+0, 1
	BCF        PORTA+0, 1
;8x48 PC.c,88 :: 		for(col = 0; col < Matrix_col; col++){
	CLRF       _col+0
L_main28:
	MOVLW      64
	SUBWF      _col+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main29
;8x48 PC.c,89 :: 		masking(buffer[col]);
	MOVF       _col+0, 0
	ADDLW      _buffer+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_masking_row_temp+0
	CALL       _masking+0
;8x48 PC.c,90 :: 		delay_us(20);
	MOVLW      33
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
;8x48 PC.c,91 :: 		masking(0);
	CLRF       FARG_masking_row_temp+0
	CALL       _masking+0
;8x48 PC.c,92 :: 		DS = 1; SH = 1; SH = 0; ST = 1; ST = 0;
	BSF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	BSF        PORTA+0, 1
	BCF        PORTA+0, 1
;8x48 PC.c,88 :: 		for(col = 0; col < Matrix_col; col++){
	INCF       _col+0, 1
;8x48 PC.c,93 :: 		}
	GOTO       L_main28
L_main29:
;8x48 PC.c,86 :: 		for(speed = 0; speed < Scrolling_speed; speed++){
	INCF       _speed+0, 1
;8x48 PC.c,94 :: 		}
	GOTO       L_main25
L_main26:
;8x48 PC.c,83 :: 		for(count = adress; count < adress + 8; count++){
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
;8x48 PC.c,95 :: 		}
	GOTO       L_main19
L_main20:
;8x48 PC.c,80 :: 		for(scroll = 0; scroll < index; scroll++){
	INCF       _scroll+0, 1
	BTFSC      STATUS+0, 2
	INCF       _scroll+1, 1
;8x48 PC.c,96 :: 		}
	GOTO       L_main16
L_main17:
;8x48 PC.c,97 :: 		}
	GOTO       L_main14
;8x48 PC.c,98 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
