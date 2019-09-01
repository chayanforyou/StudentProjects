
_matrixSHOW:

;16x kpad.c,12 :: 		matrixSHOW(){
;16x kpad.c,13 :: 		for(speed=0;speed<10;speed++){
	CLRF        _speed+0 
L_matrixSHOW0:
	MOVLW       10
	SUBWF       _speed+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_matrixSHOW1
;16x kpad.c,14 :: 		SH = 1; SH = 0; DS = 1; ST = 1; ST = 0;
	BSF         PORTA+0, 0 
	BCF         PORTA+0, 0 
	BSF         PORTA+0, 1 
	BSF         PORTA+0, 2 
	BCF         PORTA+0, 2 
;16x kpad.c,15 :: 		for(col=0;col<32;col++){
	CLRF        _col+0 
L_matrixSHOW3:
	MOVLW       32
	SUBWF       _col+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_matrixSHOW4
;16x kpad.c,16 :: 		portb =~ temp[col];
	MOVLW       _temp+0
	MOVWF       FSR0 
	MOVLW       hi_addr(_temp+0)
	MOVWF       FSR0H 
	MOVF        _col+0, 0 
	ADDWF       FSR0, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0H, 1 
	COMF        POSTINC0+0, 0 
	MOVWF       PORTB+0 
;16x kpad.c,17 :: 		delay_us(300);
	MOVLW       249
	MOVWF       R13, 0
L_matrixSHOW6:
	DECFSZ      R13, 1, 1
	BRA         L_matrixSHOW6
	NOP
	NOP
;16x kpad.c,18 :: 		SH = 1; SH = 0; DS = 0; ST = 1; ST = 0;
	BSF         PORTA+0, 0 
	BCF         PORTA+0, 0 
	BCF         PORTA+0, 1 
	BSF         PORTA+0, 2 
	BCF         PORTA+0, 2 
;16x kpad.c,15 :: 		for(col=0;col<32;col++){
	INCF        _col+0, 1 
;16x kpad.c,19 :: 		}
	GOTO        L_matrixSHOW3
L_matrixSHOW4:
;16x kpad.c,13 :: 		for(speed=0;speed<10;speed++){
	INCF        _speed+0, 1 
;16x kpad.c,20 :: 		}
	GOTO        L_matrixSHOW0
L_matrixSHOW1:
;16x kpad.c,21 :: 		}
L_end_matrixSHOW:
	RETURN      0
; end of _matrixSHOW

_main:

;16x kpad.c,23 :: 		void main() {
;16x kpad.c,24 :: 		ADCON1 = 0x07;
	MOVLW       7
	MOVWF       ADCON1+0 
;16x kpad.c,25 :: 		trisA = 0;trisB = 0;trisC = 0;trisD = 0xFF;
	CLRF        TRISA+0 
	CLRF        TRISB+0 
	CLRF        TRISC+0 
	MOVLW       255
	MOVWF       TRISD+0 
;16x kpad.c,26 :: 		portA = 0;portB = 0;portC = 0;portD = 0;
	CLRF        PORTA+0 
	CLRF        PORTB+0 
	CLRF        PORTC+0 
	CLRF        PORTD+0 
;16x kpad.c,28 :: 		while(1){
L_main7:
;16x kpad.c,29 :: 		total = sizeof(string) - 1;
	MOVLW       43
	MOVWF       _total+0 
	MOVLW       0
	MOVWF       _total+1 
;16x kpad.c,30 :: 		for(scroll=0;scroll<total;scroll++){
	CLRF        _scroll+0 
	CLRF        _scroll+1 
L_main9:
	MOVF        _total+1, 0 
	SUBWF       _scroll+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main17
	MOVF        _total+0, 0 
	SUBWF       _scroll+0, 0 
L__main17:
	BTFSC       STATUS+0, 0 
	GOTO        L_main10
;16x kpad.c,31 :: 		adrs = string[scroll] - 32;
	MOVLW       _string+0
	ADDWF       _scroll+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_string+0)
	ADDWFC      _scroll+1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_string+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, R0
	MOVLW       32
	SUBWF       R0, 1 
	CLRF        R1 
	MOVLW       0
	SUBWFB      R1, 1 
	MOVF        R0, 0 
	MOVWF       _adrs+0 
	MOVF        R1, 0 
	MOVWF       _adrs+1 
;16x kpad.c,32 :: 		adrs = adrs * 26;
	MOVLW       26
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       _adrs+0 
	MOVF        R1, 0 
	MOVWF       _adrs+1 
;16x kpad.c,33 :: 		for(count=adrs;count<adrs+26;count++){
	MOVF        R0, 0 
	MOVWF       _count+0 
	MOVF        R1, 0 
	MOVWF       _count+1 
L_main12:
	MOVLW       26
	ADDWF       _adrs+0, 0 
	MOVWF       R1 
	MOVLW       0
	ADDWFC      _adrs+1, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	SUBWF       _count+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main18
	MOVF        R1, 0 
	SUBWF       _count+0, 0 
L__main18:
	BTFSC       STATUS+0, 0 
	GOTO        L_main13
;16x kpad.c,34 :: 		temp[count2] = font[count];
	MOVLW       _temp+0
	ADDWF       _count2+0, 0 
	MOVWF       FSR1 
	MOVLW       hi_addr(_temp+0)
	ADDWFC      _count2+1, 0 
	MOVWF       FSR1H 
	MOVLW       _font+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_font+0)
	ADDWFC      _count+1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_font+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, R0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;16x kpad.c,35 :: 		count2++;
	INFSNZ      _count2+0, 1 
	INCF        _count2+1, 1 
;16x kpad.c,33 :: 		for(count=adrs;count<adrs+26;count++){
	INFSNZ      _count+0, 1 
	INCF        _count+1, 1 
;16x kpad.c,36 :: 		}
	GOTO        L_main12
L_main13:
;16x kpad.c,30 :: 		for(scroll=0;scroll<total;scroll++){
	INFSNZ      _scroll+0, 1 
	INCF        _scroll+1, 1 
;16x kpad.c,37 :: 		}
	GOTO        L_main9
L_main10:
;16x kpad.c,38 :: 		matrixSHOW();
	CALL        _matrixSHOW+0, 0
;16x kpad.c,39 :: 		}
	GOTO        L_main7
;16x kpad.c,40 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
