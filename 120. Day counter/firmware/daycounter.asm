
_InitTimer1:

	MOVLW      49
	MOVWF      T1CON+0
	BCF        TMR1IF_bit+0, BitPos(TMR1IF_bit+0)
	MOVLW      11
	MOVWF      TMR1H+0
	MOVLW      220
	MOVWF      TMR1L+0
	BSF        TMR1IE_bit+0, BitPos(TMR1IE_bit+0)
	MOVLW      192
	MOVWF      INTCON+0
L_end_InitTimer1:
	RETURN
; end of _InitTimer1

_Interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

	BTFSS      TMR1IF_bit+0, BitPos(TMR1IF_bit+0)
	GOTO       L_Interrupt0
	BCF        TMR1IF_bit+0, BitPos(TMR1IF_bit+0)
	MOVLW      11
	MOVWF      TMR1H+0
	MOVLW      220
	MOVWF      TMR1L+0
	INCF       _count+0, 1
	MOVF       _count+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_Interrupt1
	CLRF       _count+0
	BSF        _flag+0, BitPos(_flag+0)
L_Interrupt1:
L_Interrupt0:
L_end_Interrupt:
L__Interrupt85:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _Interrupt

_convert2digit:

	MOVLW      10
	MOVWF      R4+0
	MOVF       _day+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R0+0, 0
	MOVWF      _digit+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       _day+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _digit+1
	MOVLW      10
	MOVWF      R4+0
	MOVF       _hour+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R0+0, 0
	MOVWF      _digit+2
	MOVLW      10
	MOVWF      R4+0
	MOVF       _hour+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _digit+3
	MOVLW      10
	MOVWF      R4+0
	MOVF       _minute+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R0+0, 0
	MOVWF      _digit+4
	MOVLW      10
	MOVWF      R4+0
	MOVF       _minute+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _digit+5
	MOVLW      10
	MOVWF      R4+0
	MOVF       _second+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R0+0, 0
	MOVWF      _digit+6
	MOVLW      10
	MOVWF      R4+0
	MOVF       _second+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _digit+7
L_end_convert2digit:
	RETURN
; end of _convert2digit

_show_all_digit:

	CALL       _convert2digit+0
	CLRF       show_all_digit_x_L0+0
L_show_all_digit2:
	MOVLW      8
	SUBWF      show_all_digit_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_show_all_digit3
	MOVF       show_all_digit_x_L0+0, 0
	ADDLW      _select_digit+0
	MOVWF      FSR
	COMF       INDF+0, 0
	MOVWF      PORTC+0
	MOVF       show_all_digit_x_L0+0, 0
	ADDLW      _digit+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	ADDLW      _cathode+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_show_all_digit5:
	DECFSZ     R13+0, 1
	GOTO       L_show_all_digit5
	DECFSZ     R12+0, 1
	GOTO       L_show_all_digit5
	CLRF       PORTB+0
	INCF       show_all_digit_x_L0+0, 1
	GOTO       L_show_all_digit2
L_show_all_digit3:
L_end_show_all_digit:
	RETURN
; end of _show_all_digit

_time_set:

	CLRF       time_set_x_L0+0
L_time_set6:
	MOVLW      8
	SUBWF      time_set_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_time_set7
L_time_set9:
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_time_set10
	CALL       _convert2digit+0
	MOVF       time_set_x_L0+0, 0
	ADDLW      _select_digit+0
	MOVWF      FSR
	COMF       INDF+0, 0
	MOVWF      PORTC+0
	MOVF       time_set_x_L0+0, 0
	ADDLW      _digit+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	ADDLW      _cathode+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_time_set11:
	DECFSZ     R13+0, 1
	GOTO       L_time_set11
	DECFSZ     R12+0, 1
	GOTO       L_time_set11
	CLRF       PORTB+0
	CALL       _convert2digit+0
	MOVF       time_set_x_L0+0, 0
	ADDLW      1
	MOVWF      R0+0
	CLRF       R0+1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	MOVF       R0+0, 0
	ADDLW      _select_digit+0
	MOVWF      FSR
	COMF       INDF+0, 0
	MOVWF      PORTC+0
	MOVF       R0+0, 0
	ADDLW      _digit+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	ADDLW      _cathode+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_time_set12:
	DECFSZ     R13+0, 1
	GOTO       L_time_set12
	DECFSZ     R12+0, 1
	GOTO       L_time_set12
	CLRF       PORTB+0
	MOVF       time_set_x_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_time_set13
	MOVF       _day+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_time_set16
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_time_set16
L__time_set78:
	MOVLW      99
	MOVWF      _day+0
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set17:
	DECFSZ     R13+0, 1
	GOTO       L_time_set17
	DECFSZ     R12+0, 1
	GOTO       L_time_set17
	DECFSZ     R11+0, 1
	GOTO       L_time_set17
	NOP
L_time_set16:
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_time_set18
	INCF       _day+0, 1
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set19:
	DECFSZ     R13+0, 1
	GOTO       L_time_set19
	DECFSZ     R12+0, 1
	GOTO       L_time_set19
	DECFSZ     R11+0, 1
	GOTO       L_time_set19
	NOP
L_time_set18:
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_time_set20
	DECF       _day+0, 1
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set21:
	DECFSZ     R13+0, 1
	GOTO       L_time_set21
	DECFSZ     R12+0, 1
	GOTO       L_time_set21
	DECFSZ     R11+0, 1
	GOTO       L_time_set21
	NOP
L_time_set20:
	MOVF       _day+0, 0
	XORLW      100
	BTFSS      STATUS+0, 2
	GOTO       L_time_set22
	CLRF       _day+0
L_time_set22:
L_time_set13:
	MOVF       time_set_x_L0+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_time_set23
	MOVF       _hour+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_time_set26
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_time_set26
L__time_set77:
	MOVLW      23
	MOVWF      _hour+0
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set27:
	DECFSZ     R13+0, 1
	GOTO       L_time_set27
	DECFSZ     R12+0, 1
	GOTO       L_time_set27
	DECFSZ     R11+0, 1
	GOTO       L_time_set27
	NOP
L_time_set26:
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_time_set28
	INCF       _hour+0, 1
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set29:
	DECFSZ     R13+0, 1
	GOTO       L_time_set29
	DECFSZ     R12+0, 1
	GOTO       L_time_set29
	DECFSZ     R11+0, 1
	GOTO       L_time_set29
	NOP
L_time_set28:
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_time_set30
	DECF       _hour+0, 1
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set31:
	DECFSZ     R13+0, 1
	GOTO       L_time_set31
	DECFSZ     R12+0, 1
	GOTO       L_time_set31
	DECFSZ     R11+0, 1
	GOTO       L_time_set31
	NOP
L_time_set30:
	MOVF       _hour+0, 0
	XORLW      24
	BTFSS      STATUS+0, 2
	GOTO       L_time_set32
	CLRF       _hour+0
L_time_set32:
L_time_set23:
	MOVF       time_set_x_L0+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_time_set33
	MOVF       _minute+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_time_set36
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_time_set36
L__time_set76:
	MOVLW      59
	MOVWF      _minute+0
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set37:
	DECFSZ     R13+0, 1
	GOTO       L_time_set37
	DECFSZ     R12+0, 1
	GOTO       L_time_set37
	DECFSZ     R11+0, 1
	GOTO       L_time_set37
	NOP
L_time_set36:
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_time_set38
	INCF       _minute+0, 1
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set39:
	DECFSZ     R13+0, 1
	GOTO       L_time_set39
	DECFSZ     R12+0, 1
	GOTO       L_time_set39
	DECFSZ     R11+0, 1
	GOTO       L_time_set39
	NOP
L_time_set38:
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_time_set40
	DECF       _minute+0, 1
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set41:
	DECFSZ     R13+0, 1
	GOTO       L_time_set41
	DECFSZ     R12+0, 1
	GOTO       L_time_set41
	DECFSZ     R11+0, 1
	GOTO       L_time_set41
	NOP
L_time_set40:
	MOVF       _minute+0, 0
	XORLW      60
	BTFSS      STATUS+0, 2
	GOTO       L_time_set42
	CLRF       _minute+0
L_time_set42:
L_time_set33:
	MOVF       time_set_x_L0+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_time_set43
	MOVF       _second+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_time_set46
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_time_set46
L__time_set75:
	MOVLW      59
	MOVWF      _second+0
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set47:
	DECFSZ     R13+0, 1
	GOTO       L_time_set47
	DECFSZ     R12+0, 1
	GOTO       L_time_set47
	DECFSZ     R11+0, 1
	GOTO       L_time_set47
	NOP
L_time_set46:
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_time_set48
	INCF       _second+0, 1
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set49:
	DECFSZ     R13+0, 1
	GOTO       L_time_set49
	DECFSZ     R12+0, 1
	GOTO       L_time_set49
	DECFSZ     R11+0, 1
	GOTO       L_time_set49
	NOP
L_time_set48:
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_time_set50
	DECF       _second+0, 1
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_time_set51:
	DECFSZ     R13+0, 1
	GOTO       L_time_set51
	DECFSZ     R12+0, 1
	GOTO       L_time_set51
	DECFSZ     R11+0, 1
	GOTO       L_time_set51
	NOP
L_time_set50:
	MOVF       _second+0, 0
	XORLW      60
	BTFSS      STATUS+0, 2
	GOTO       L_time_set52
	CLRF       _second+0
L_time_set52:
L_time_set43:
	GOTO       L_time_set9
L_time_set10:
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_time_set53:
	DECFSZ     R13+0, 1
	GOTO       L_time_set53
	DECFSZ     R12+0, 1
	GOTO       L_time_set53
	DECFSZ     R11+0, 1
	GOTO       L_time_set53
	NOP
	MOVLW      2
	ADDWF      time_set_x_L0+0, 1
	GOTO       L_time_set6
L_time_set7:
	MOVF       _second+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_time_set54
	MOVLW      60
	MOVWF      _second+0
	MOVF       _minute+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_time_set55
	DECF       _minute+0, 1
L_time_set55:
L_time_set54:
L_end_time_set:
	RETURN
; end of _time_set

_main:

	MOVLW      7
	MOVWF      ADCON1+0
	MOVLW      15
	MOVWF      TRISA+0
	CLRF       TRISB+0
	CLRF       TRISC+0
	CLRF       PORTB+0
	CLRF       PORTC+0
	CALL       _InitTimer1+0
	BCF        _flag+0, BitPos(_flag+0)
L_main56:
L_main58:
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main59
	CALL       _show_all_digit+0
	GOTO       L_main58
L_main59:
	CALL       _time_set+0
L_main60:
	MOVF       _day+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main82
	MOVF       _hour+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main82
	MOVF       _minute+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main82
	MOVF       _second+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main82
	GOTO       L_main61
L__main82:
	CALL       _show_all_digit+0
	BTFSS      _flag+0, BitPos(_flag+0)
	GOTO       L_main64
	DECF       _second+0, 1
	BCF        _flag+0, BitPos(_flag+0)
L_main64:
	MOVF       _second+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main67
	MOVF       _minute+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main67
L__main81:
	MOVLW      59
	MOVWF      _second+0
	DECF       _minute+0, 1
L_main67:
	MOVF       _minute+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main70
	MOVF       _hour+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main70
L__main80:
	MOVLW      59
	MOVWF      _minute+0
	DECF       _hour+0, 1
L_main70:
	MOVF       _hour+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main73
	MOVF       _day+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main73
L__main79:
	MOVLW      23
	MOVWF      _hour+0
	DECF       _day+0, 1
L_main73:
	GOTO       L_main60
L_main61:
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
	MOVLW      127
	MOVWF      R11+0
	MOVLW      212
	MOVWF      R12+0
	MOVLW      49
	MOVWF      R13+0
L_main74:
	DECFSZ     R13+0, 1
	GOTO       L_main74
	DECFSZ     R12+0, 1
	GOTO       L_main74
	DECFSZ     R11+0, 1
	GOTO       L_main74
	NOP
	NOP
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_main56
L_end_main:
	GOTO       $+0
; end of _main
