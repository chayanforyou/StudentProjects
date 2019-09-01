
_write_EEPROM:

;GSM kit.c,16 :: 		void write_EEPROM(char adres, char dta){
;GSM kit.c,17 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;GSM kit.c,18 :: 		I2C1_Wr(0xA0);
	MOVLW      160
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;GSM kit.c,19 :: 		I2C1_Wr(adres);
	MOVF       FARG_write_EEPROM_adres+0, 0
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;GSM kit.c,20 :: 		I2C1_Wr(dta);
	MOVF       FARG_write_EEPROM_dta+0, 0
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;GSM kit.c,21 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;GSM kit.c,22 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_write_EEPROM0:
	DECFSZ     R13+0, 1
	GOTO       L_write_EEPROM0
	DECFSZ     R12+0, 1
	GOTO       L_write_EEPROM0
	DECFSZ     R11+0, 1
	GOTO       L_write_EEPROM0
	NOP
	NOP
;GSM kit.c,23 :: 		}
L_end_write_EEPROM:
	RETURN
; end of _write_EEPROM

_GSM_init:

;GSM kit.c,25 :: 		void GSM_init(){
;GSM kit.c,26 :: 		led = 1;
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
;GSM kit.c,27 :: 		Delay_ms(5000);
	MOVLW      127
	MOVWF      R11+0
	MOVLW      212
	MOVWF      R12+0
	MOVLW      49
	MOVWF      R13+0
L_GSM_init1:
	DECFSZ     R13+0, 1
	GOTO       L_GSM_init1
	DECFSZ     R12+0, 1
	GOTO       L_GSM_init1
	DECFSZ     R11+0, 1
	GOTO       L_GSM_init1
	NOP
	NOP
;GSM kit.c,28 :: 		UART1_Write_Text(AT);
	MOVLW      _AT+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;GSM kit.c,29 :: 		Delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_GSM_init2:
	DECFSZ     R13+0, 1
	GOTO       L_GSM_init2
	DECFSZ     R12+0, 1
	GOTO       L_GSM_init2
	DECFSZ     R11+0, 1
	GOTO       L_GSM_init2
	NOP
;GSM kit.c,30 :: 		UART1_Write_Text(ATE);
	MOVLW      _ATE+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;GSM kit.c,31 :: 		Delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_GSM_init3:
	DECFSZ     R13+0, 1
	GOTO       L_GSM_init3
	DECFSZ     R12+0, 1
	GOTO       L_GSM_init3
	DECFSZ     R11+0, 1
	GOTO       L_GSM_init3
	NOP
;GSM kit.c,32 :: 		UART1_Write_Text(ASCI);
	MOVLW      _ASCI+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;GSM kit.c,33 :: 		Delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_GSM_init4:
	DECFSZ     R13+0, 1
	GOTO       L_GSM_init4
	DECFSZ     R12+0, 1
	GOTO       L_GSM_init4
	DECFSZ     R11+0, 1
	GOTO       L_GSM_init4
	NOP
;GSM kit.c,34 :: 		UART1_Write_Text(MSG_mode);
	MOVLW      _MSG_mode+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;GSM kit.c,35 :: 		Delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_GSM_init5:
	DECFSZ     R13+0, 1
	GOTO       L_GSM_init5
	DECFSZ     R12+0, 1
	GOTO       L_GSM_init5
	DECFSZ     R11+0, 1
	GOTO       L_GSM_init5
	NOP
;GSM kit.c,36 :: 		led = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;GSM kit.c,37 :: 		}
L_end_GSM_init:
	RETURN
; end of _GSM_init

_RecSMS:

;GSM kit.c,39 :: 		void RecSMS(){
;GSM kit.c,40 :: 		if(rxd == '+' && checkpoint == 0) checkpoint = 1;
	MOVF       _rxd+0, 0
	XORLW      43
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS8
	MOVF       _checkpoint+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS8
L__RecSMS58:
	MOVLW      1
	MOVWF      _checkpoint+0
L_RecSMS8:
;GSM kit.c,41 :: 		if(rxd == 'C' && checkpoint == 1) checkpoint = 2;
	MOVF       _rxd+0, 0
	XORLW      67
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS11
	MOVF       _checkpoint+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS11
L__RecSMS57:
	MOVLW      2
	MOVWF      _checkpoint+0
L_RecSMS11:
;GSM kit.c,42 :: 		if(rxd == 'M' && checkpoint == 2) checkpoint = 3;
	MOVF       _rxd+0, 0
	XORLW      77
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS14
	MOVF       _checkpoint+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS14
L__RecSMS56:
	MOVLW      3
	MOVWF      _checkpoint+0
L_RecSMS14:
;GSM kit.c,43 :: 		if(rxd == 'T' && checkpoint == 3) checkpoint = 4;
	MOVF       _rxd+0, 0
	XORLW      84
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS17
	MOVF       _checkpoint+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS17
L__RecSMS55:
	MOVLW      4
	MOVWF      _checkpoint+0
L_RecSMS17:
;GSM kit.c,45 :: 		if(rxd == '8' && checkpoint == 4) checkpoint = 5;
	MOVF       _rxd+0, 0
	XORLW      56
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS20
	MOVF       _checkpoint+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS20
L__RecSMS54:
	MOVLW      5
	MOVWF      _checkpoint+0
L_RecSMS20:
;GSM kit.c,46 :: 		if(rxd == '0' && checkpoint == 5) checkpoint = 6;
	MOVF       _rxd+0, 0
	XORLW      48
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS23
	MOVF       _checkpoint+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS23
L__RecSMS53:
	MOVLW      6
	MOVWF      _checkpoint+0
L_RecSMS23:
;GSM kit.c,48 :: 		if(checkpoint == 6){
	MOVF       _checkpoint+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS24
;GSM kit.c,49 :: 		number[x] = rxd;
	MOVF       _x+0, 0
	ADDLW      _number+0
	MOVWF      FSR
	MOVF       _rxd+0, 0
	MOVWF      INDF+0
;GSM kit.c,50 :: 		x++;
	INCF       _x+0, 1
;GSM kit.c,51 :: 		if(x > 10) {x = 0; checkpoint = 7;}
	MOVF       _x+0, 0
	SUBLW      10
	BTFSC      STATUS+0, 0
	GOTO       L_RecSMS25
	CLRF       _x+0
	MOVLW      7
	MOVWF      _checkpoint+0
L_RecSMS25:
;GSM kit.c,52 :: 		}
L_RecSMS24:
;GSM kit.c,54 :: 		if(rxd == (char)13 && checkpoint == 7) checkpoint = 8;
	MOVF       _rxd+0, 0
	XORLW      13
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS28
	MOVF       _checkpoint+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS28
L__RecSMS52:
	MOVLW      8
	MOVWF      _checkpoint+0
L_RecSMS28:
;GSM kit.c,55 :: 		if(rxd == (char)10 && checkpoint == 8) checkpoint = 9;
	MOVF       _rxd+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS31
	MOVF       _checkpoint+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS31
L__RecSMS51:
	MOVLW      9
	MOVWF      _checkpoint+0
L_RecSMS31:
;GSM kit.c,57 :: 		if(rxd != (char)10 && checkpoint == 9) checkpoint = 10;
	MOVF       _rxd+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_RecSMS34
	MOVF       _checkpoint+0, 0
	XORLW      9
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS34
L__RecSMS50:
	MOVLW      10
	MOVWF      _checkpoint+0
L_RecSMS34:
;GSM kit.c,59 :: 		if(checkpoint == 10){
	MOVF       _checkpoint+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_RecSMS35
;GSM kit.c,60 :: 		msg[x] = rxd;
	MOVF       _x+0, 0
	ADDLW      _msg+0
	MOVWF      FSR
	MOVF       _rxd+0, 0
	MOVWF      INDF+0
;GSM kit.c,61 :: 		x++;
	INCF       _x+0, 1
;GSM kit.c,62 :: 		if(rxd == 13 || x > 79){
	MOVF       _rxd+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L__RecSMS49
	MOVF       _x+0, 0
	SUBLW      79
	BTFSS      STATUS+0, 0
	GOTO       L__RecSMS49
	GOTO       L_RecSMS38
L__RecSMS49:
;GSM kit.c,63 :: 		msg[x - 1] = 0xFF;
	MOVLW      1
	SUBWF      _x+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVF       R0+0, 0
	ADDLW      _msg+0
	MOVWF      FSR
	MOVLW      255
	MOVWF      INDF+0
;GSM kit.c,64 :: 		x = 0;
	CLRF       _x+0
;GSM kit.c,65 :: 		checkpoint = 0;
	CLRF       _checkpoint+0
;GSM kit.c,66 :: 		MCU = 1; led = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
;GSM kit.c,67 :: 		for(x = 0; x < strlen(msg); x++) write_EEPROM(x, msg[x]);
	CLRF       _x+0
L_RecSMS39:
	MOVLW      _msg+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVLW      128
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__RecSMS62
	MOVF       R0+0, 0
	SUBWF      _x+0, 0
L__RecSMS62:
	BTFSC      STATUS+0, 0
	GOTO       L_RecSMS40
	MOVF       _x+0, 0
	MOVWF      FARG_write_EEPROM_adres+0
	MOVF       _x+0, 0
	ADDLW      _msg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_write_EEPROM_dta+0
	CALL       _write_EEPROM+0
	INCF       _x+0, 1
	GOTO       L_RecSMS39
L_RecSMS40:
;GSM kit.c,68 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_RecSMS42:
	DECFSZ     R13+0, 1
	GOTO       L_RecSMS42
	DECFSZ     R12+0, 1
	GOTO       L_RecSMS42
	DECFSZ     R11+0, 1
	GOTO       L_RecSMS42
	NOP
;GSM kit.c,69 :: 		MCU = 0; led = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;GSM kit.c,70 :: 		}
L_RecSMS38:
;GSM kit.c,71 :: 		}
L_RecSMS35:
;GSM kit.c,72 :: 		}
L_end_RecSMS:
	RETURN
; end of _RecSMS

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;GSM kit.c,74 :: 		void interrupt (){
;GSM kit.c,75 :: 		if (PIR1.RCIF) {
	BTFSS      PIR1+0, 5
	GOTO       L_interrupt43
;GSM kit.c,76 :: 		PIR1.RCIF = 0;
	BCF        PIR1+0, 5
;GSM kit.c,77 :: 		rxd = 0;
	CLRF       _rxd+0
;GSM kit.c,78 :: 		rxd = UART1_read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _rxd+0
;GSM kit.c,79 :: 		RecSMS();
	CALL       _RecSMS+0
;GSM kit.c,80 :: 		}
L_interrupt43:
;GSM kit.c,81 :: 		}
L_end_interrupt:
L__interrupt64:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;GSM kit.c,83 :: 		void main() {
;GSM kit.c,84 :: 		ADCON1 = 0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;GSM kit.c,85 :: 		TRISA = 0x00;
	CLRF       TRISA+0
;GSM kit.c,86 :: 		PORTA = 0x00;
	CLRF       PORTA+0
;GSM kit.c,87 :: 		INTCON = 0xC0;
	MOVLW      192
	MOVWF      INTCON+0
;GSM kit.c,88 :: 		PIE1.RCIE = 1;
	BSF        PIE1+0, 5
;GSM kit.c,90 :: 		UART1_Init(9600);
	MOVLW      129
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;GSM kit.c,91 :: 		I2C1_Init(100000);
	MOVLW      50
	MOVWF      SSPADD+0
	CALL       _I2C1_Init+0
;GSM kit.c,92 :: 		GSM_init();
	CALL       _GSM_init+0
;GSM kit.c,94 :: 		for(x = 0; x < 80; x++) msg[x] = 0;
	CLRF       _x+0
L_main44:
	MOVLW      80
	SUBWF      _x+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main45
	MOVF       _x+0, 0
	ADDLW      _msg+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       _x+0, 1
	GOTO       L_main44
L_main45:
;GSM kit.c,95 :: 		checkpoint = 0, x = 0; flag = 0;
	CLRF       _checkpoint+0
	CLRF       _x+0
	BCF        _flag+0, BitPos(_flag+0)
;GSM kit.c,97 :: 		while(1){
L_main47:
;GSM kit.c,99 :: 		}
	GOTO       L_main47
;GSM kit.c,100 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
