
_fontLOAD:

;16x kpad.c,10 :: 		void fontLOAD(){
;16x kpad.c,11 :: 		unsigned int count,scroll,adrs,count2 = 0;
	CLRF        fontLOAD_count2_L0+0 
	CLRF        fontLOAD_count2_L0+1 
;16x kpad.c,12 :: 		total = sizeof(string) - 1;
	MOVLW       43
	MOVWF       _total+0 
	MOVLW       0
	MOVWF       _total+1 
;16x kpad.c,13 :: 		total *= 26;
	MOVLW       94
	MOVWF       _total+0 
	MOVLW       4
	MOVWF       _total+1 
;16x kpad.c,14 :: 		for(scroll=0;scroll<53;scroll++){
	CLRF        fontLOAD_scroll_L0+0 
	CLRF        fontLOAD_scroll_L0+1 
L_fontLOAD0:
	MOVLW       0
	SUBWF       fontLOAD_scroll_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__fontLOAD19
	MOVLW       53
	SUBWF       fontLOAD_scroll_L0+0, 0 
L__fontLOAD19:
	BTFSC       STATUS+0, 0 
	GOTO        L_fontLOAD1
;16x kpad.c,15 :: 		adrs = string[scroll] - 32;
	MOVLW       _string+0
	ADDWF       fontLOAD_scroll_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_string+0)
	ADDWFC      fontLOAD_scroll_L0+1, 0 
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
	MOVWF       fontLOAD_adrs_L0+0 
	MOVF        R1, 0 
	MOVWF       fontLOAD_adrs_L0+1 
;16x kpad.c,16 :: 		adrs = adrs * 26;
	MOVLW       26
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       fontLOAD_adrs_L0+0 
	MOVF        R1, 0 
	MOVWF       fontLOAD_adrs_L0+1 
;16x kpad.c,17 :: 		for(count=adrs;count<adrs+26;count++){
	MOVF        R0, 0 
	MOVWF       fontLOAD_count_L0+0 
	MOVF        R1, 0 
	MOVWF       fontLOAD_count_L0+1 
L_fontLOAD3:
	MOVLW       26
	ADDWF       fontLOAD_adrs_L0+0, 0 
	MOVWF       R1 
	MOVLW       0
	ADDWFC      fontLOAD_adrs_L0+1, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	SUBWF       fontLOAD_count_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__fontLOAD20
	MOVF        R1, 0 
	SUBWF       fontLOAD_count_L0+0, 0 
L__fontLOAD20:
	BTFSC       STATUS+0, 0 
	GOTO        L_fontLOAD4
;16x kpad.c,18 :: 		temp[count2] = font[count];
	MOVLW       _temp+0
	ADDWF       fontLOAD_count2_L0+0, 0 
	MOVWF       FSR1 
	MOVLW       hi_addr(_temp+0)
	ADDWFC      fontLOAD_count2_L0+1, 0 
	MOVWF       FSR1H 
	MOVLW       _font+0
	ADDWF       fontLOAD_count_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_font+0)
	ADDWFC      fontLOAD_count_L0+1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_font+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, R0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;16x kpad.c,19 :: 		count2++;
	INFSNZ      fontLOAD_count2_L0+0, 1 
	INCF        fontLOAD_count2_L0+1, 1 
;16x kpad.c,17 :: 		for(count=adrs;count<adrs+26;count++){
	INFSNZ      fontLOAD_count_L0+0, 1 
	INCF        fontLOAD_count_L0+1, 1 
;16x kpad.c,20 :: 		}
	GOTO        L_fontLOAD3
L_fontLOAD4:
;16x kpad.c,14 :: 		for(scroll=0;scroll<53;scroll++){
	INFSNZ      fontLOAD_scroll_L0+0, 1 
	INCF        fontLOAD_scroll_L0+1, 1 
;16x kpad.c,21 :: 		}
	GOTO        L_fontLOAD0
L_fontLOAD1:
;16x kpad.c,22 :: 		}
L_end_fontLOAD:
	RETURN      0
; end of _fontLOAD

_main:

;16x kpad.c,24 :: 		void main() {
;16x kpad.c,27 :: 		ADCON1 = 0x07;
	MOVLW       7
	MOVWF       ADCON1+0 
;16x kpad.c,28 :: 		trisA = 0;trisB = 0;trisC = 0;trisD = 0xFF;
	CLRF        TRISA+0 
	CLRF        TRISB+0 
	CLRF        TRISC+0 
	MOVLW       255
	MOVWF       TRISD+0 
;16x kpad.c,29 :: 		portA = 0;portB = 0;portC = 0;portD = 0;
	CLRF        PORTA+0 
	CLRF        PORTB+0 
	CLRF        PORTC+0 
	CLRF        PORTD+0 
;16x kpad.c,30 :: 		fontLOAD();
	CALL        _fontLOAD+0, 0
;16x kpad.c,33 :: 		while(1){
L_main6:
;16x kpad.c,34 :: 		for(scroll=0;scroll<total;scroll+=2){
	CLRF        main_scroll_L0+0 
	CLRF        main_scroll_L0+1 
L_main8:
	MOVF        _total+1, 0 
	SUBWF       main_scroll_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main22
	MOVF        _total+0, 0 
	SUBWF       main_scroll_L0+0, 0 
L__main22:
	BTFSC       STATUS+0, 0 
	GOTO        L_main9
;16x kpad.c,35 :: 		for(speed=0;speed<15;speed++){
	CLRF        main_speed_L0+0 
L_main11:
	MOVLW       15
	SUBWF       main_speed_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main12
;16x kpad.c,36 :: 		disp = 0;
	CLRF        main_disp_L0+0 
	CLRF        main_disp_L0+1 
;16x kpad.c,37 :: 		SH = 1; SH = 0; DS = 1; ST = 1; ST = 0;
	BSF         PORTA+0, 0 
	BCF         PORTA+0, 0 
	BSF         PORTA+0, 1 
	BSF         PORTA+0, 2 
	BCF         PORTA+0, 2 
;16x kpad.c,38 :: 		for(col=0;col<32;col++){
	CLRF        main_col_L0+0 
L_main14:
	MOVLW       32
	SUBWF       main_col_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main15
;16x kpad.c,39 :: 		portb =~ temp[scroll + disp];
	MOVF        main_disp_L0+0, 0 
	ADDWF       main_scroll_L0+0, 0 
	MOVWF       R0 
	MOVF        main_disp_L0+1, 0 
	ADDWFC      main_scroll_L0+1, 0 
	MOVWF       R1 
	MOVLW       _temp+0
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(_temp+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	COMF        POSTINC0+0, 0 
	MOVWF       PORTB+0 
;16x kpad.c,40 :: 		disp++;
	INFSNZ      main_disp_L0+0, 1 
	INCF        main_disp_L0+1, 1 
;16x kpad.c,41 :: 		portc =~ temp[scroll + disp];
	MOVF        main_disp_L0+0, 0 
	ADDWF       main_scroll_L0+0, 0 
	MOVWF       R0 
	MOVF        main_disp_L0+1, 0 
	ADDWFC      main_scroll_L0+1, 0 
	MOVWF       R1 
	MOVLW       _temp+0
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVLW       hi_addr(_temp+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	COMF        POSTINC0+0, 0 
	MOVWF       PORTC+0 
;16x kpad.c,42 :: 		disp++;
	INFSNZ      main_disp_L0+0, 1 
	INCF        main_disp_L0+1, 1 
;16x kpad.c,43 :: 		delay_us(100);
	MOVLW       166
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 1
	BRA         L_main17
	NOP
;16x kpad.c,44 :: 		SH = 1; SH = 0; DS = 0; ST = 1; ST = 0;
	BSF         PORTA+0, 0 
	BCF         PORTA+0, 0 
	BCF         PORTA+0, 1 
	BSF         PORTA+0, 2 
	BCF         PORTA+0, 2 
;16x kpad.c,38 :: 		for(col=0;col<32;col++){
	INCF        main_col_L0+0, 1 
;16x kpad.c,45 :: 		}
	GOTO        L_main14
L_main15:
;16x kpad.c,35 :: 		for(speed=0;speed<15;speed++){
	INCF        main_speed_L0+0, 1 
;16x kpad.c,46 :: 		}
	GOTO        L_main11
L_main12:
;16x kpad.c,34 :: 		for(scroll=0;scroll<total;scroll+=2){
	MOVLW       2
	ADDWF       main_scroll_L0+0, 1 
	MOVLW       0
	ADDWFC      main_scroll_L0+1, 1 
;16x kpad.c,47 :: 		}
	GOTO        L_main8
L_main9:
;16x kpad.c,48 :: 		}
	GOTO        L_main6
;16x kpad.c,49 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
