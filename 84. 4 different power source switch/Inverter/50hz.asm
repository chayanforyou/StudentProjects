
_InitTimer1:

	MOVLW      1
	MOVWF      T1CON+0
	BCF        TMR1IF_bit+0, BitPos(TMR1IF_bit+0)
	MOVLW      60
	MOVWF      TMR1H+0
	MOVLW      176
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
	MOVLW      60
	MOVWF      TMR1H+0
	MOVLW      176
	MOVWF      TMR1L+0
	BTFSC      _flag+0, BitPos(_flag+0)
	GOTO       L_Interrupt1
	BCF        GP1_bit+0, BitPos(GP1_bit+0)
	BSF        GP0_bit+0, BitPos(GP0_bit+0)
	BSF        _flag+0, BitPos(_flag+0)
	GOTO       L_Interrupt2
L_Interrupt1:
	BCF        GP0_bit+0, BitPos(GP0_bit+0)
	BSF        GP1_bit+0, BitPos(GP1_bit+0)
	BCF        _flag+0, BitPos(_flag+0)
L_Interrupt2:
L_Interrupt0:
L_end_Interrupt:
L__Interrupt7:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _Interrupt

_main:

	CLRF       ANSEL+0
	CLRF       TRISIO+0
	BCF        _flag+0, BitPos(_flag+0)
	CALL       _InitTimer1+0
L_main3:
	GOTO       L_main3
L_end_main:
	GOTO       $+0
; end of _main
