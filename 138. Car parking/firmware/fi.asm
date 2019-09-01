
_main:

;fi.c,23 :: 		void main() {
;fi.c,24 :: 		lcd_init();
	CALL       _Lcd_Init+0
;fi.c,25 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;fi.c,26 :: 		adcon1 = 0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;fi.c,27 :: 		trisa = 0x00; porta = 0x00;
	CLRF       TRISA+0
	CLRF       PORTA+0
;fi.c,28 :: 		trisc = 0x0f; portc = 0x00;
	MOVLW      15
	MOVWF      TRISC+0
	CLRF       PORTC+0
;fi.c,29 :: 		lcd_out(1,1,"Car1:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;fi.c,30 :: 		lcd_out(1,11,"C2:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;fi.c,31 :: 		lcd_out(2,1,"Car3:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;fi.c,32 :: 		lcd_out(2,11,"C4:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;fi.c,34 :: 		while(1){
L_main0:
;fi.c,35 :: 		car_tx = 0b000001;
	MOVLW      1
	MOVWF      PORTA+0
;fi.c,36 :: 		if(car1 == 0){lcd_out(1,6,"YES");portc.f7 = 1;}
	BTFSC      PORTC+0, 0
	GOTO       L_main2
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	BSF        PORTC+0, 7
	GOTO       L_main3
L_main2:
;fi.c,37 :: 		else{lcd_out(1,6,"NO ");portc.f7 = 0;}
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	BCF        PORTC+0, 7
L_main3:
;fi.c,38 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
;fi.c,39 :: 		car_tx = 0b000010;
	MOVLW      2
	MOVWF      PORTA+0
;fi.c,40 :: 		if(car2 == 0){lcd_out(1,14,"YES");portc.f6 = 1;}
	BTFSC      PORTC+0, 1
	GOTO       L_main5
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	BSF        PORTC+0, 6
	GOTO       L_main6
L_main5:
;fi.c,41 :: 		else{lcd_out(1,14,"NO  ");portc.f6 = 0;}
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	BCF        PORTC+0, 6
L_main6:
;fi.c,42 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;fi.c,43 :: 		car_tx = 0b000100;
	MOVLW      4
	MOVWF      PORTA+0
;fi.c,44 :: 		if(car3 == 0){lcd_out(2,6,"YES");portc.f5 = 1;}
	BTFSC      PORTC+0, 2
	GOTO       L_main8
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	BSF        PORTC+0, 5
	GOTO       L_main9
L_main8:
;fi.c,45 :: 		else{lcd_out(2,6,"NO ");portc.f5 = 0;}
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	BCF        PORTC+0, 5
L_main9:
;fi.c,46 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
;fi.c,47 :: 		car_tx = 0b001000;
	MOVLW      8
	MOVWF      PORTA+0
;fi.c,48 :: 		if(car4 == 0){lcd_out(2,14,"YES");portc.f4 = 1;}
	BTFSC      PORTC+0, 3
	GOTO       L_main11
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	BSF        PORTC+0, 4
	GOTO       L_main12
L_main11:
;fi.c,49 :: 		else{lcd_out(2,14,"NO  ");portc.f4 = 0;}
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_fi+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	BCF        PORTC+0, 4
L_main12:
;fi.c,50 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
;fi.c,51 :: 		}
	GOTO       L_main0
;fi.c,52 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
