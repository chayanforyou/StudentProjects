
_read_EEPROM:

	CALL       _I2C1_Start+0
	MOVLW      160
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
	MOVF       FARG_read_EEPROM_adres+0, 0
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
	CALL       _I2C1_Repeated_Start+0
	MOVLW      161
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      read_EEPROM_dta_L0+0
	CALL       _I2C1_Stop+0
	MOVF       read_EEPROM_dta_L0+0, 0
	MOVWF      R0+0
L_end_read_EEPROM:
	RETURN
; end of _read_EEPROM

_main:

	CALL       _Lcd_Init+0
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      50
	MOVWF      SSPADD+0
	CALL       _I2C1_Init+0
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
L_main1:
	CLRF       main_x_L0+0
L_main3:
	MOVLW      80
	SUBWF      main_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main4
	MOVF       main_x_L0+0, 0
	ADDLW      _text+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       main_x_L0+0, 1
	GOTO       L_main3
L_main4:
	CLRF       main_x_L0+0
L_main6:
	MOVLW      32
	SUBWF      main_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main7
	MOVF       main_x_L0+0, 0
	MOVWF      FARG_read_EEPROM_adres+0
	CALL       _read_EEPROM+0
	MOVF       R0+0, 0
	MOVWF      main_y_L2+0
	MOVF       R0+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	GOTO       L_main7
L_main9:
	MOVF       main_x_L0+0, 0
	ADDLW      _text+0
	MOVWF      FSR
	MOVF       main_y_L2+0, 0
	MOVWF      INDF+0
	INCF       main_x_L0+0, 1
	GOTO       L_main6
L_main7:
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _text+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      77
	MOVWF      R11+0
	MOVLW      25
	MOVWF      R12+0
	MOVLW      79
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_main1
L_end_main:
	GOTO       $+0
; end of _main
