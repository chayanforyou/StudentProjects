
_main:

	CLRF       TRISC+0
	CLRF       PORTC+0
	CALL       _Lcd_Init+0
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
L_main0:
	CALL       _Get_soil+0
	CALL       _Get_Humidity+0
	CALL       _Get_Temperature+0
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
	MOVLW      0
	SUBWF      _Humidity+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      45
	SUBWF      _Humidity+0, 0
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
L_main3:
	MOVLW      0
	SUBWF      _Temperature+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVLW      24
	SUBWF      _Temperature+0, 0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
L_main4:
	MOVLW      0
	SUBWF      _soil+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVLW      30
	SUBWF      _soil+0, 0
L__main15:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
L_main5:
	MOVF       _Humidity+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVF       _Humidity+0, 0
	SUBLW      55
L__main16:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
L_main6:
	MOVF       _Temperature+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVF       _Temperature+0, 0
	SUBLW      26
L__main17:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
L_main7:
	MOVF       _soil+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVF       _soil+0, 0
	SUBLW      70
L__main18:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
L_main8:
	GOTO       L_main0
L_end_main:
	GOTO       $+0
; end of _main

_Get_Humidity:

	MOVLW      82
	MOVWF      Get_Humidity_hum_L0+0
	MOVLW      72
	MOVWF      Get_Humidity_hum_L0+1
	MOVLW      58
	MOVWF      Get_Humidity_hum_L0+2
	MOVLW      32
	MOVWF      Get_Humidity_hum_L0+3
	MOVLW      32
	MOVWF      Get_Humidity_hum_L0+4
	MOVLW      37
	MOVWF      Get_Humidity_hum_L0+5
	CLRF       Get_Humidity_hum_L0+6
	CLRF       _adc_rd+0
	CLRF       _adc_rd+1
	CLRF       _adc_rd+2
	CLRF       _adc_rd+3
	CLRF       Get_Humidity_ii_L0+0
	CLRF       Get_Humidity_ii_L0+1
L_Get_Humidity9:
	MOVLW      128
	XORWF      Get_Humidity_ii_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Get_Humidity20
	MOVLW      20
	SUBWF      Get_Humidity_ii_L0+0, 0
L__Get_Humidity20:
	BTFSC      STATUS+0, 0
	GOTO       L_Get_Humidity10
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVLW      0
	MOVWF      R0+2
	MOVWF      R0+3
	MOVF       _adc_rd+0, 0
	ADDWF      R0+0, 1
	MOVF       _adc_rd+1, 0
	BTFSC      STATUS+0, 0
	INCFSZ     _adc_rd+1, 0
	ADDWF      R0+1, 1
	MOVF       _adc_rd+2, 0
	BTFSC      STATUS+0, 0
	INCFSZ     _adc_rd+2, 0
	ADDWF      R0+2, 1
	MOVF       _adc_rd+3, 0
	BTFSC      STATUS+0, 0
	INCFSZ     _adc_rd+3, 0
	ADDWF      R0+3, 1
	MOVF       R0+0, 0
	MOVWF      _adc_rd+0
	MOVF       R0+1, 0
	MOVWF      _adc_rd+1
	MOVF       R0+2, 0
	MOVWF      _adc_rd+2
	MOVF       R0+3, 0
	MOVWF      _adc_rd+3
	INCF       Get_Humidity_ii_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       Get_Humidity_ii_L0+1, 1
	GOTO       L_Get_Humidity9
L_Get_Humidity10:
	MOVLW      20
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _adc_rd+0, 0
	MOVWF      R0+0
	MOVF       _adc_rd+1, 0
	MOVWF      R0+1
	MOVF       _adc_rd+2, 0
	MOVWF      R0+2
	MOVF       _adc_rd+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVF       R0+0, 0
	MOVWF      _adc_rd+0
	MOVF       R0+1, 0
	MOVWF      _adc_rd+1
	MOVF       R0+2, 0
	MOVWF      _adc_rd+2
	MOVF       R0+3, 0
	MOVWF      _adc_rd+3
	CALL       _longint2double+0
	MOVLW      147
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      119
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Get_Humidity+4
	MOVF       R0+1, 0
	MOVWF      FLOC__Get_Humidity+5
	MOVF       R0+2, 0
	MOVWF      FLOC__Get_Humidity+6
	MOVF       R0+3, 0
	MOVWF      FLOC__Get_Humidity+7
	MOVLW      164
	MOVWF      R0+0
	MOVLW      112
	MOVWF      R0+1
	MOVLW      109
	MOVWF      R0+2
	MOVLW      128
	MOVWF      R0+3
	MOVF       FLOC__Get_Humidity+4, 0
	MOVWF      R4+0
	MOVF       FLOC__Get_Humidity+5, 0
	MOVWF      R4+1
	MOVF       FLOC__Get_Humidity+6, 0
	MOVWF      R4+2
	MOVF       FLOC__Get_Humidity+7, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       FLOC__Get_Humidity+4, 0
	MOVWF      R4+0
	MOVF       FLOC__Get_Humidity+5, 0
	MOVWF      R4+1
	MOVF       FLOC__Get_Humidity+6, 0
	MOVWF      R4+2
	MOVF       FLOC__Get_Humidity+7, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       FLOC__Get_Humidity+4, 0
	MOVWF      R4+0
	MOVF       FLOC__Get_Humidity+5, 0
	MOVWF      R4+1
	MOVF       FLOC__Get_Humidity+6, 0
	MOVWF      R4+2
	MOVF       FLOC__Get_Humidity+7, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Get_Humidity+0
	MOVF       R0+1, 0
	MOVWF      FLOC__Get_Humidity+1
	MOVF       R0+2, 0
	MOVWF      FLOC__Get_Humidity+2
	MOVF       R0+3, 0
	MOVWF      FLOC__Get_Humidity+3
	MOVLW      51
	MOVWF      R0+0
	MOVLW      51
	MOVWF      R0+1
	MOVLW      37
	MOVWF      R0+2
	MOVLW      131
	MOVWF      R0+3
	MOVF       FLOC__Get_Humidity+4, 0
	MOVWF      R4+0
	MOVF       FLOC__Get_Humidity+5, 0
	MOVWF      R4+1
	MOVF       FLOC__Get_Humidity+6, 0
	MOVWF      R4+2
	MOVF       FLOC__Get_Humidity+7, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       FLOC__Get_Humidity+4, 0
	MOVWF      R4+0
	MOVF       FLOC__Get_Humidity+5, 0
	MOVWF      R4+1
	MOVF       FLOC__Get_Humidity+6, 0
	MOVWF      R4+2
	MOVF       FLOC__Get_Humidity+7, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__Get_Humidity+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Get_Humidity+1, 0
	MOVWF      R0+1
	MOVF       FLOC__Get_Humidity+2, 0
	MOVWF      R0+2
	MOVF       FLOC__Get_Humidity+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Get_Humidity+0
	MOVF       R0+1, 0
	MOVWF      FLOC__Get_Humidity+1
	MOVF       R0+2, 0
	MOVWF      FLOC__Get_Humidity+2
	MOVF       R0+3, 0
	MOVWF      FLOC__Get_Humidity+3
	MOVLW      184
	MOVWF      R0+0
	MOVLW      158
	MOVWF      R0+1
	MOVLW      1
	MOVWF      R0+2
	MOVLW      133
	MOVWF      R0+3
	MOVF       FLOC__Get_Humidity+4, 0
	MOVWF      R4+0
	MOVF       FLOC__Get_Humidity+5, 0
	MOVWF      R4+1
	MOVF       FLOC__Get_Humidity+6, 0
	MOVWF      R4+2
	MOVF       FLOC__Get_Humidity+7, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       FLOC__Get_Humidity+0, 0
	MOVWF      R4+0
	MOVF       FLOC__Get_Humidity+1, 0
	MOVWF      R4+1
	MOVF       FLOC__Get_Humidity+2, 0
	MOVWF      R4+2
	MOVF       FLOC__Get_Humidity+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVLW      31
	MOVWF      R4+0
	MOVLW      133
	MOVWF      R4+1
	MOVLW      91
	MOVWF      R4+2
	MOVLW      131
	MOVWF      R4+3
	CALL       _Sub_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Get_Humidity+0
	MOVF       R0+1, 0
	MOVWF      FLOC__Get_Humidity+1
	MOVF       FLOC__Get_Humidity+0, 0
	MOVWF      _Humidity+0
	MOVF       FLOC__Get_Humidity+1, 0
	MOVWF      _Humidity+1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__Get_Humidity+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Get_Humidity+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      Get_Humidity_hum_L0+3
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__Get_Humidity+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Get_Humidity+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      Get_Humidity_hum_L0+4
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      Get_Humidity_hum_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_end_Get_Humidity:
	RETURN
; end of _Get_Humidity

_Get_Temperature:

	MOVLW      84
	MOVWF      Get_Temperature_Tmp_L0+0
	MOVLW      101
	MOVWF      Get_Temperature_Tmp_L0+1
	MOVLW      109
	MOVWF      Get_Temperature_Tmp_L0+2
	MOVLW      112
	MOVWF      Get_Temperature_Tmp_L0+3
	MOVLW      58
	MOVWF      Get_Temperature_Tmp_L0+4
	MOVLW      32
	MOVWF      Get_Temperature_Tmp_L0+5
	MOVLW      32
	MOVWF      Get_Temperature_Tmp_L0+6
	MOVLW      32
	MOVWF      Get_Temperature_Tmp_L0+7
	MOVLW      67
	MOVWF      Get_Temperature_Tmp_L0+8
	CLRF       Get_Temperature_Tmp_L0+9
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc_rd+0
	MOVF       R0+1, 0
	MOVWF      _adc_rd+1
	CLRF       _adc_rd+2
	CLRF       _adc_rd+3
	MOVF       _adc_rd+0, 0
	MOVWF      R0+0
	MOVF       _adc_rd+1, 0
	MOVWF      R0+1
	MOVF       _adc_rd+2, 0
	MOVWF      R0+2
	MOVF       _adc_rd+3, 0
	MOVWF      R0+3
	CALL       _longint2double+0
	MOVLW      82
	MOVWF      R4+0
	MOVLW      39
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      119
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
	CALL       _double2word+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Get_Temperature+0
	MOVF       R0+1, 0
	MOVWF      FLOC__Get_Temperature+1
	MOVF       FLOC__Get_Temperature+0, 0
	MOVWF      _Temperature+0
	MOVF       FLOC__Get_Temperature+1, 0
	MOVWF      _Temperature+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__Get_Temperature+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Get_Temperature+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      Get_Temperature_Tmp_L0+5
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__Get_Temperature+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Get_Temperature+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      Get_Temperature_Tmp_L0+6
	MOVLW      223
	MOVWF      Get_Temperature_Tmp_L0+7
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      Get_Temperature_Tmp_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_end_Get_Temperature:
	RETURN
; end of _Get_Temperature

_Get_soil:

	MOVLW      83
	MOVWF      Get_soil_Tmp_L0+0
	MOVLW      111
	MOVWF      Get_soil_Tmp_L0+1
	MOVLW      105
	MOVWF      Get_soil_Tmp_L0+2
	MOVLW      108
	MOVWF      Get_soil_Tmp_L0+3
	MOVLW      32
	MOVWF      Get_soil_Tmp_L0+4
	MOVLW      109
	MOVWF      Get_soil_Tmp_L0+5
	MOVLW      111
	MOVWF      Get_soil_Tmp_L0+6
	MOVLW      105
	MOVWF      Get_soil_Tmp_L0+7
	MOVLW      115
	MOVWF      Get_soil_Tmp_L0+8
	MOVLW      46
	MOVWF      Get_soil_Tmp_L0+9
	MOVLW      58
	MOVWF      Get_soil_Tmp_L0+10
	MOVLW      32
	MOVWF      Get_soil_Tmp_L0+11
	MOVLW      32
	MOVWF      Get_soil_Tmp_L0+12
	MOVLW      32
	MOVWF      Get_soil_Tmp_L0+13
	MOVLW      32
	MOVWF      Get_soil_Tmp_L0+14
	MOVLW      32
	MOVWF      Get_soil_Tmp_L0+15
	MOVLW      32
	MOVWF      Get_soil_Tmp_L0+16
	CLRF       Get_soil_Tmp_L0+17
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc_rd+0
	MOVF       R0+1, 0
	MOVWF      _adc_rd+1
	CLRF       _adc_rd+2
	CLRF       _adc_rd+3
	MOVF       _adc_rd+0, 0
	MOVWF      R0+0
	MOVF       _adc_rd+1, 0
	MOVWF      R0+1
	MOVF       _adc_rd+2, 0
	MOVWF      R0+2
	MOVF       _adc_rd+3, 0
	MOVWF      R0+3
	CALL       _longint2double+0
	MOVLW      154
	MOVWF      R4+0
	MOVLW      153
	MOVWF      R4+1
	MOVLW      41
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      72
	MOVWF      R0+2
	MOVLW      133
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	CALL       _double2word+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Get_soil+0
	MOVF       R0+1, 0
	MOVWF      FLOC__Get_soil+1
	MOVF       FLOC__Get_soil+0, 0
	MOVWF      _soil+0
	MOVF       FLOC__Get_soil+1, 0
	MOVWF      _soil+1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__Get_soil+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Get_soil+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      Get_soil_Tmp_L0+12
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__Get_soil+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Get_soil+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      Get_soil_Tmp_L0+13
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__Get_soil+0, 0
	MOVWF      R0+0
	MOVF       FLOC__Get_soil+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      Get_soil_Tmp_L0+14
	MOVLW      37
	MOVWF      Get_soil_Tmp_L0+15
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      Get_soil_Tmp_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_end_Get_soil:
	RETURN
; end of _Get_soil
