
_main:

;16x.c,48 :: 		void main() {
;16x.c,51 :: 		adcon1 = 0x07; //Convert ADC pin to I/O.
	MOVLW      7
	MOVWF      ADCON1+0
;16x.c,52 :: 		TRISA = 0x00;  //set PortA register for Output.
	CLRF       TRISA+0
;16x.c,53 :: 		TRISB = 0x00;  //set PortB register for Output.
	CLRF       TRISB+0
;16x.c,54 :: 		TRISC = 0x00;  //set PortC register for Output.
	CLRF       TRISC+0
;16x.c,55 :: 		PORTA = 0x00;  //clear PortA pin.
	CLRF       PORTA+0
;16x.c,56 :: 		PORTB = 0x00;  //clear PortB pin.
	CLRF       PORTB+0
;16x.c,57 :: 		PORTC = 0x00;  //clear PortC pin.
	CLRF       PORTC+0
;16x.c,59 :: 		while(1){
L_main0:
;16x.c,60 :: 		index = sizeof(font);   //get the font total number of values.
	MOVLW      80
	MOVWF      R9+0
	MOVLW      2
	MOVWF      R9+1
;16x.c,61 :: 		for(scroll=0;scroll<index;scroll+=2){ //scroll right to left.
	CLRF       R5+0
	CLRF       R5+1
L_main2:
	MOVF       R9+1, 0
	SUBWF      R5+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVF       R9+0, 0
	SUBWF      R5+0, 0
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;16x.c,62 :: 		for(refresh=0;refresh<80;refresh++){  //its use only for control scrolling speed.
	CLRF       R11+0
L_main5:
	MOVLW      80
	SUBWF      R11+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;16x.c,63 :: 		temp = 0;  //clear temp to 0. temp used to send data to second 8 bit ROW.
	CLRF       R7+0
	CLRF       R7+1
;16x.c,64 :: 		SH = 1; SH = 0; DS = 1; ST = 1; ST = 0; //shifting '1'.
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
;16x.c,65 :: 		for(col=0;col<=Colunm;col++){  //We used only 3 shift register.
	CLRF       R12+0
L_main8:
	MOVF       R12+0, 0
	SUBLW      24
	BTFSS      STATUS+0, 0
	GOTO       L_main9
;16x.c,66 :: 		portb =~ font[scroll + temp];  //sending to 1st 8 bit row value from font.
	MOVF       R7+0, 0
	ADDWF      R5+0, 0
	MOVWF      R3+0
	MOVF       R5+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R7+1, 0
	MOVWF      R3+1
	MOVF       R3+0, 0
	MOVWF      R0+0
	MOVF       R3+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVLW      _font+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_font+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      R0+0
	COMF       R0+0, 0
	MOVWF      PORTB+0
;16x.c,67 :: 		temp++;  //temp = temp + 1, if scroll = 1 and temp = 1, then font[2] = 0xC8.
	INCF       R7+0, 1
	BTFSC      STATUS+0, 2
	INCF       R7+1, 1
;16x.c,68 :: 		portc =~ font[scroll + temp];  //sending to second 8 bit row value from font.
	MOVF       R7+0, 0
	ADDWF      R5+0, 0
	MOVWF      R3+0
	MOVF       R5+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R7+1, 0
	MOVWF      R3+1
	MOVF       R3+0, 0
	MOVWF      R0+0
	MOVF       R3+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVLW      _font+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_font+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      R0+0
	COMF       R0+0, 0
	MOVWF      PORTC+0
;16x.c,69 :: 		temp++; //plus 1 again.
	INCF       R7+0, 1
	BTFSC      STATUS+0, 2
	INCF       R7+1, 1
;16x.c,70 :: 		delay_us(20);  //some delay. (It is necessary to control LED bright in real.)
	MOVLW      16
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	NOP
;16x.c,71 :: 		SH = 1; SH = 0; DS = 0; ST = 1; ST = 0; //shifting '0'.
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
;16x.c,65 :: 		for(col=0;col<=Colunm;col++){  //We used only 3 shift register.
	INCF       R12+0, 1
;16x.c,72 :: 		}
	GOTO       L_main8
L_main9:
;16x.c,62 :: 		for(refresh=0;refresh<80;refresh++){  //its use only for control scrolling speed.
	INCF       R11+0, 1
;16x.c,73 :: 		}
	GOTO       L_main5
L_main6:
;16x.c,61 :: 		for(scroll=0;scroll<index;scroll+=2){ //scroll right to left.
	MOVLW      2
	ADDWF      R5+0, 1
	BTFSC      STATUS+0, 0
	INCF       R5+1, 1
;16x.c,74 :: 		}
	GOTO       L_main2
L_main3:
;16x.c,75 :: 		}
	GOTO       L_main0
;16x.c,76 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
