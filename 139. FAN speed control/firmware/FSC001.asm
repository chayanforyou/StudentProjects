
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;FSC001.c,12 :: 		void interrupt(){
;FSC001.c,13 :: 		if (INTCON.INTF){          //INTF flag raised, so external interrupt occured
	BTFSS      INTCON+0, 1
	GOTO       L_interrupt0
;FSC001.c,14 :: 		ZC = 1;
	BSF        _FlagReg+0, 0
;FSC001.c,15 :: 		INTCON.INTF = 0;
	BCF        INTCON+0, 1
;FSC001.c,16 :: 		}
L_interrupt0:
;FSC001.c,17 :: 		}
L_end_interrupt:
L__interrupt16:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_system:

;FSC001.c,19 :: 		void system(){
;FSC001.c,20 :: 		if (ZC){
	BTFSS      _FlagReg+0, 0
	GOTO       L_system1
;FSC001.c,21 :: 		if (nCount > 0){
	MOVF       _nCount+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_system2
;FSC001.c,22 :: 		out = 1;
	BSF        PORTC+0, 4
;FSC001.c,23 :: 		delay_us(250);
	MOVLW      166
	MOVWF      R13+0
L_system3:
	DECFSZ     R13+0, 1
	GOTO       L_system3
	NOP
;FSC001.c,24 :: 		out = 0;
	BCF        PORTC+0, 4
;FSC001.c,25 :: 		nCount--;
	DECF       _nCount+0, 1
;FSC001.c,26 :: 		}
L_system2:
;FSC001.c,28 :: 		nTotalCount--;
	DECF       _nTotalCount+0, 1
;FSC001.c,29 :: 		if (nTotalCount == 0){
	MOVF       _nTotalCount+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_system4
;FSC001.c,30 :: 		nTotalCount = TotalCount;
	MOVF       _TotalCount+0, 0
	MOVWF      _nTotalCount+0
;FSC001.c,31 :: 		nCount = Count;
	MOVF       _Count+0, 0
	MOVWF      _nCount+0
;FSC001.c,32 :: 		}
L_system4:
;FSC001.c,33 :: 		ZC = 0;
	BCF        _FlagReg+0, 0
;FSC001.c,34 :: 		}
L_system1:
;FSC001.c,35 :: 		}
L_end_system:
	RETURN
; end of _system

_speedup:

;FSC001.c,37 :: 		void speedup(){
;FSC001.c,38 :: 		Count++;
	INCF       _Count+0, 1
;FSC001.c,39 :: 		if(Count==10)Count = 9;
	MOVF       _Count+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_speedup5
	MOVLW      9
	MOVWF      _Count+0
L_speedup5:
;FSC001.c,40 :: 		while(up==1){
L_speedup6:
	BTFSS      PORTC+0, 0
	GOTO       L_speedup7
;FSC001.c,41 :: 		system();
	CALL       _system+0
;FSC001.c,42 :: 		}
	GOTO       L_speedup6
L_speedup7:
;FSC001.c,43 :: 		}
L_end_speedup:
	RETURN
; end of _speedup

_speeddown:

;FSC001.c,45 :: 		void speeddown(){
;FSC001.c,46 :: 		Count--;
	DECF       _Count+0, 1
;FSC001.c,47 :: 		if(Count==0)Count = 1;
	MOVF       _Count+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_speeddown8
	MOVLW      1
	MOVWF      _Count+0
L_speeddown8:
;FSC001.c,48 :: 		while(down==1){
L_speeddown9:
	BTFSS      PORTC+0, 3
	GOTO       L_speeddown10
;FSC001.c,49 :: 		system();
	CALL       _system+0
;FSC001.c,50 :: 		}
	GOTO       L_speeddown9
L_speeddown10:
;FSC001.c,51 :: 		}
L_end_speeddown:
	RETURN
; end of _speeddown

_main:

;FSC001.c,53 :: 		void main() {
;FSC001.c,54 :: 		PORTB = 0; TRISB = 0x01;
	CLRF       PORTB+0
	MOVLW      1
	MOVWF      TRISB+0
;FSC001.c,55 :: 		TRISC = 0x09; PORTC = 0;
	MOVLW      9
	MOVWF      TRISC+0
	CLRF       PORTC+0
;FSC001.c,56 :: 		OPTION_REG.INTEDG = 0;
	BCF        OPTION_REG+0, 6
;FSC001.c,57 :: 		INTCON.INTF = 0; INTCON.INTE = 1;
	BCF        INTCON+0, 1
	BSF        INTCON+0, 4
;FSC001.c,58 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;FSC001.c,60 :: 		Count = 9;
	MOVLW      9
	MOVWF      _Count+0
;FSC001.c,61 :: 		TotalCount = 10;
	MOVLW      10
	MOVWF      _TotalCount+0
;FSC001.c,62 :: 		nCount = Count;
	MOVLW      9
	MOVWF      _nCount+0
;FSC001.c,63 :: 		nTotalCount = TotalCount;
	MOVLW      10
	MOVWF      _nTotalCount+0
;FSC001.c,65 :: 		while (1){
L_main11:
;FSC001.c,66 :: 		if(up==1)speedup();
	BTFSS      PORTC+0, 0
	GOTO       L_main13
	CALL       _speedup+0
L_main13:
;FSC001.c,67 :: 		if(down==1)speeddown();
	BTFSS      PORTC+0, 3
	GOTO       L_main14
	CALL       _speeddown+0
L_main14:
;FSC001.c,68 :: 		system();
	CALL       _system+0
;FSC001.c,69 :: 		}
	GOTO       L_main11
;FSC001.c,70 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
