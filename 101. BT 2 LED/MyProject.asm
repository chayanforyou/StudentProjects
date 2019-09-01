
_all_on:

	BSF        RB4_bit+0, BitPos(RB4_bit+0)
	BSF        RB5_bit+0, BitPos(RB5_bit+0)
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
L_end_all_on:
	RETURN
; end of _all_on

_all_off:

	BCF        RB4_bit+0, BitPos(RB4_bit+0)
	BCF        RB5_bit+0, BitPos(RB5_bit+0)
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
L_end_all_off:
	RETURN
; end of _all_off

_main:

	BCF        TRISB4_bit+0, BitPos(TRISB4_bit+0)
	BCF        TRISB5_bit+0, BitPos(TRISB5_bit+0)
	BCF        TRISB6_bit+0, BitPos(TRISB6_bit+0)
	BCF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
	CLRF       PORTB+0
	MOVLW      25
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
L_main0:
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _rxd+0
	MOVF       R0+0, 0
	XORLW      49
	BTFSS      STATUS+0, 2
	GOTO       L_main2
	BSF        RB4_bit+0, BitPos(RB4_bit+0)
L_main2:
	MOVF       _rxd+0, 0
	XORLW      50
	BTFSS      STATUS+0, 2
	GOTO       L_main3
	BSF        RB5_bit+0, BitPos(RB5_bit+0)
L_main3:
	MOVF       _rxd+0, 0
	XORLW      51
	BTFSS      STATUS+0, 2
	GOTO       L_main4
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
L_main4:
	MOVF       _rxd+0, 0
	XORLW      52
	BTFSS      STATUS+0, 2
	GOTO       L_main5
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
L_main5:
	MOVF       _rxd+0, 0
	XORLW      65
	BTFSS      STATUS+0, 2
	GOTO       L_main6
	BCF        RB4_bit+0, BitPos(RB4_bit+0)
L_main6:
	MOVF       _rxd+0, 0
	XORLW      66
	BTFSS      STATUS+0, 2
	GOTO       L_main7
	BCF        RB5_bit+0, BitPos(RB5_bit+0)
L_main7:
	MOVF       _rxd+0, 0
	XORLW      67
	BTFSS      STATUS+0, 2
	GOTO       L_main8
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
L_main8:
	MOVF       _rxd+0, 0
	XORLW      68
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
L_main9:
	MOVF       _rxd+0, 0
	XORLW      57
	BTFSS      STATUS+0, 2
	GOTO       L_main10
	CALL       _all_on+0
L_main10:
	MOVF       _rxd+0, 0
	XORLW      73
	BTFSS      STATUS+0, 2
	GOTO       L_main11
	CALL       _all_off+0
L_main11:
	GOTO       L_main0
L_end_main:
	GOTO       $+0
; end of _main
