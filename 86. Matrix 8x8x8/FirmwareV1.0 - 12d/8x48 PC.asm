
_masking:

;8x48 PC.c,28 :: 		void masking(unsigned short row_temp){
;8x48 PC.c,29 :: 		portb.f0 = row_temp.f5; portb.f1 = row_temp.f2;
	BTFSC       FARG_masking_row_temp+0, 5 
	GOTO        L__masking28
	BCF         PORTB+0, 0 
	GOTO        L__masking29
L__masking28:
	BSF         PORTB+0, 0 
L__masking29:
	BTFSC       FARG_masking_row_temp+0, 2 
	GOTO        L__masking30
	BCF         PORTB+0, 1 
	GOTO        L__masking31
L__masking30:
	BSF         PORTB+0, 1 
L__masking31:
;8x48 PC.c,30 :: 		portb.f2 = row_temp.f0; portb.f3 = row_temp.f1;
	BTFSC       FARG_masking_row_temp+0, 0 
	GOTO        L__masking32
	BCF         PORTB+0, 2 
	GOTO        L__masking33
L__masking32:
	BSF         PORTB+0, 2 
L__masking33:
	BTFSC       FARG_masking_row_temp+0, 1 
	GOTO        L__masking34
	BCF         PORTB+0, 3 
	GOTO        L__masking35
L__masking34:
	BSF         PORTB+0, 3 
L__masking35:
;8x48 PC.c,31 :: 		portb.f4 = row_temp.f3; portb.f5 = row_temp.f6;
	BTFSC       FARG_masking_row_temp+0, 3 
	GOTO        L__masking36
	BCF         PORTB+0, 4 
	GOTO        L__masking37
L__masking36:
	BSF         PORTB+0, 4 
L__masking37:
	BTFSC       FARG_masking_row_temp+0, 6 
	GOTO        L__masking38
	BCF         PORTB+0, 5 
	GOTO        L__masking39
L__masking38:
	BSF         PORTB+0, 5 
L__masking39:
;8x48 PC.c,32 :: 		portb.f6 = row_temp.f4; portb.f7 = row_temp.f7;
	BTFSC       FARG_masking_row_temp+0, 4 
	GOTO        L__masking40
	BCF         PORTB+0, 6 
	GOTO        L__masking41
L__masking40:
	BSF         PORTB+0, 6 
L__masking41:
	BTFSC       FARG_masking_row_temp+0, 7 
	GOTO        L__masking42
	BCF         PORTB+0, 7 
	GOTO        L__masking43
L__masking42:
	BSF         PORTB+0, 7 
L__masking43:
;8x48 PC.c,33 :: 		}
L_end_masking:
	RETURN      0
; end of _masking

_read_EEPROM:

;8x48 PC.c,35 :: 		char read_EEPROM(char adres){
;8x48 PC.c,37 :: 		I2C1_Start();
	CALL        _I2C1_Start+0, 0
;8x48 PC.c,38 :: 		I2C1_Wr(0xA0);
	MOVLW       160
	MOVWF       FARG_I2C1_Wr_data_+0 
	CALL        _I2C1_Wr+0, 0
;8x48 PC.c,39 :: 		I2C1_Wr(adres);
	MOVF        FARG_read_EEPROM_adres+0, 0 
	MOVWF       FARG_I2C1_Wr_data_+0 
	CALL        _I2C1_Wr+0, 0
;8x48 PC.c,40 :: 		I2C1_Repeated_Start();
	CALL        _I2C1_Repeated_Start+0, 0
;8x48 PC.c,41 :: 		I2C1_Wr(0xA1);
	MOVLW       161
	MOVWF       FARG_I2C1_Wr_data_+0 
	CALL        _I2C1_Wr+0, 0
;8x48 PC.c,42 :: 		dta = I2C1_Rd(0u);
	CLRF        FARG_I2C1_Rd_ack+0 
	CALL        _I2C1_Rd+0, 0
	MOVF        R0, 0 
	MOVWF       read_EEPROM_dta_L0+0 
;8x48 PC.c,43 :: 		I2C1_Stop();
	CALL        _I2C1_Stop+0, 0
;8x48 PC.c,44 :: 		return dta;
	MOVF        read_EEPROM_dta_L0+0, 0 
	MOVWF       R0 
;8x48 PC.c,45 :: 		}
L_end_read_EEPROM:
	RETURN      0
; end of _read_EEPROM

_load_text:

;8x48 PC.c,47 :: 		void load_text(){
;8x48 PC.c,49 :: 		for(count = 0; count < 70; count++){
	CLRF        _count+0 
	CLRF        _count+1 
L_load_text0:
	MOVLW       128
	XORWF       _count+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__load_text46
	MOVLW       70
	SUBWF       _count+0, 0 
L__load_text46:
	BTFSC       STATUS+0, 0 
	GOTO        L_load_text1
;8x48 PC.c,50 :: 		read = EEPROM_read(count);
	MOVF        _count+0, 0 
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       load_text_read_L0+0 
;8x48 PC.c,51 :: 		if(read == 0xFF) break;
	MOVF        R0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L_load_text3
	GOTO        L_load_text1
L_load_text3:
;8x48 PC.c,52 :: 		else text[count] = read;
	MOVLW       _Text+0
	ADDWF       _count+0, 0 
	MOVWF       FSR1 
	MOVLW       hi_addr(_Text+0)
	ADDWFC      _count+1, 0 
	MOVWF       FSR1H 
	MOVF        load_text_read_L0+0, 0 
	MOVWF       POSTINC1+0 
;8x48 PC.c,49 :: 		for(count = 0; count < 70; count++){
	INFSNZ      _count+0, 1 
	INCF        _count+1, 1 
;8x48 PC.c,53 :: 		}
	GOTO        L_load_text0
L_load_text1:
;8x48 PC.c,54 :: 		}
L_end_load_text:
	RETURN      0
; end of _load_text

_main:

;8x48 PC.c,69 :: 		void main() {
;8x48 PC.c,70 :: 		ADCON1 = 0x07;
	MOVLW       7
	MOVWF       ADCON1+0 
;8x48 PC.c,71 :: 		TRISC = 0x00; PORTC = 0x00;
	CLRF        TRISC+0 
	CLRF        PORTC+0 
;8x48 PC.c,72 :: 		TRISB = 0x00; PORTB = 0x00;
	CLRF        TRISB+0 
	CLRF        PORTB+0 
;8x48 PC.c,73 :: 		I2C1_Init(100000);
	MOVLW       50
	MOVWF       SSPADD+0 
	CALL        _I2C1_Init+0, 0
;8x48 PC.c,74 :: 		delay_ms(1000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
;8x48 PC.c,75 :: 		for(count = 0; count < Matrix_col; count++) buffer[count] = 0;
	CLRF        _count+0 
	CLRF        _count+1 
L_main6:
	MOVLW       128
	XORWF       _count+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main48
	MOVLW       96
	SUBWF       _count+0, 0 
L__main48:
	BTFSC       STATUS+0, 0 
	GOTO        L_main7
	MOVLW       _buffer+0
	ADDWF       _count+0, 0 
	MOVWF       FSR1 
	MOVLW       hi_addr(_buffer+0)
	ADDWFC      _count+1, 0 
	MOVWF       FSR1H 
	CLRF        POSTINC1+0 
	INFSNZ      _count+0, 1 
	INCF        _count+1, 1 
	GOTO        L_main6
L_main7:
;8x48 PC.c,77 :: 		while(1){
L_main9:
;8x48 PC.c,78 :: 		load_text();
	CALL        _load_text+0, 0
;8x48 PC.c,79 :: 		index = strlen(text);
	MOVLW       _Text+0
	MOVWF       FARG_strlen_s+0 
	MOVLW       hi_addr(_Text+0)
	MOVWF       FARG_strlen_s+1 
	CALL        _strlen+0, 0
	MOVF        R0, 0 
	MOVWF       _index+0 
;8x48 PC.c,80 :: 		for(scroll = 0; scroll < index; scroll++){
	CLRF        _scroll+0 
	CLRF        _scroll+1 
L_main11:
	MOVLW       128
	XORWF       _scroll+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main49
	MOVF        _index+0, 0 
	SUBWF       _scroll+0, 0 
L__main49:
	BTFSC       STATUS+0, 0 
	GOTO        L_main12
;8x48 PC.c,81 :: 		adress = text[scroll] - 32;
	MOVLW       _Text+0
	ADDWF       _scroll+0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(_Text+0)
	ADDWFC      _scroll+1, 0 
	MOVWF       FSR0H 
	MOVLW       32
	SUBWF       POSTINC0+0, 0 
	MOVWF       R3 
	CLRF        R4 
	MOVLW       0
	SUBWFB      R4, 1 
	MOVF        R3, 0 
	MOVWF       _adress+0 
	MOVF        R4, 0 
	MOVWF       _adress+1 
;8x48 PC.c,82 :: 		adress *= 8;
	MOVLW       3
	MOVWF       R2 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	MOVF        R2, 0 
L__main50:
	BZ          L__main51
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__main50
L__main51:
	MOVF        R0, 0 
	MOVWF       _adress+0 
	MOVF        R1, 0 
	MOVWF       _adress+1 
;8x48 PC.c,83 :: 		for(count = adress; count < adress + 8; count++){
	MOVF        R0, 0 
	MOVWF       _count+0 
	MOVF        R1, 0 
	MOVWF       _count+1 
L_main14:
	MOVLW       8
	ADDWF       _adress+0, 0 
	MOVWF       R1 
	MOVLW       0
	ADDWFC      _adress+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       _count+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main52
	MOVF        R1, 0 
	SUBWF       _count+0, 0 
L__main52:
	BTFSC       STATUS+0, 0 
	GOTO        L_main15
;8x48 PC.c,84 :: 		for(update = 0; update < Matrix_col; update++){buffer[update] = buffer[update + 1];}
	CLRF        _update+0 
	CLRF        _update+1 
L_main17:
	MOVLW       128
	XORWF       _update+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main53
	MOVLW       96
	SUBWF       _update+0, 0 
L__main53:
	BTFSC       STATUS+0, 0 
	GOTO        L_main18
	MOVLW       _buffer+0
	ADDWF       _update+0, 0 
	MOVWF       FSR1 
	MOVLW       hi_addr(_buffer+0)
	ADDWFC      _update+1, 0 
	MOVWF       FSR1H 
	MOVLW       1
	ADDWF       _update+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _update+1, 0 
	MOVWF       R1 
	MOVLW       _buffer+0
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(_buffer+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	INFSNZ      _update+0, 1 
	INCF        _update+1, 1 
	GOTO        L_main17
L_main18:
;8x48 PC.c,85 :: 		buffer[Matrix_col - 1] = Character[count];
	MOVLW       _Character+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_Character+0)
	ADDWFC      _count+1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_Character+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       _count+1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, 127
;8x48 PC.c,86 :: 		for(speed = 0; speed < Scrolling_speed; speed++){
	CLRF        _speed+0 
L_main20:
	MOVLW       30
	SUBWF       _speed+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main21
;8x48 PC.c,87 :: 		DS = 0; SH = 1; SH = 0; ST = 1; ST = 0;
	BCF         PORTC+0, 0 
	BSF         PORTC+0, 2 
	BCF         PORTC+0, 2 
	BSF         PORTC+0, 1 
	BCF         PORTC+0, 1 
;8x48 PC.c,88 :: 		for(col = 0; col < Matrix_col; col++){
	CLRF        _col+0 
L_main23:
	MOVLW       96
	SUBWF       _col+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main24
;8x48 PC.c,89 :: 		masking(buffer[col]);
	MOVLW       _buffer+0
	MOVWF       FSR0 
	MOVLW       hi_addr(_buffer+0)
	MOVWF       FSR0H 
	MOVF        _col+0, 0 
	ADDWF       FSR0, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0H, 1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_masking_row_temp+0 
	CALL        _masking+0, 0
;8x48 PC.c,90 :: 		delay_us(20);
	MOVLW       33
	MOVWF       R13, 0
L_main26:
	DECFSZ      R13, 1, 1
	BRA         L_main26
;8x48 PC.c,91 :: 		masking(0);
	CLRF        FARG_masking_row_temp+0 
	CALL        _masking+0, 0
;8x48 PC.c,92 :: 		DS = 1; SH = 1; SH = 0; ST = 1; ST = 0;
	BSF         PORTC+0, 0 
	BSF         PORTC+0, 2 
	BCF         PORTC+0, 2 
	BSF         PORTC+0, 1 
	BCF         PORTC+0, 1 
;8x48 PC.c,88 :: 		for(col = 0; col < Matrix_col; col++){
	INCF        _col+0, 1 
;8x48 PC.c,93 :: 		}
	GOTO        L_main23
L_main24:
;8x48 PC.c,86 :: 		for(speed = 0; speed < Scrolling_speed; speed++){
	INCF        _speed+0, 1 
;8x48 PC.c,94 :: 		}
	GOTO        L_main20
L_main21:
;8x48 PC.c,83 :: 		for(count = adress; count < adress + 8; count++){
	INFSNZ      _count+0, 1 
	INCF        _count+1, 1 
;8x48 PC.c,95 :: 		}
	GOTO        L_main14
L_main15:
;8x48 PC.c,80 :: 		for(scroll = 0; scroll < index; scroll++){
	INFSNZ      _scroll+0, 1 
	INCF        _scroll+1, 1 
;8x48 PC.c,96 :: 		}
	GOTO        L_main11
L_main12:
;8x48 PC.c,97 :: 		}
	GOTO        L_main9
;8x48 PC.c,98 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
