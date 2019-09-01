
_main:

;sourcemode.c,33 :: 		void main() {
;sourcemode.c,34 :: 		ADCON1 = 7;
	MOVLW      7
	MOVWF      ADCON1+0
;sourcemode.c,35 :: 		TrisC = 0b10011001;
	MOVLW      153
	MOVWF      TRISC+0
;sourcemode.c,36 :: 		portA = 0; portC = 0;
	CLRF       PORTA+0
	CLRF       PORTC+0
;sourcemode.c,37 :: 		LCD_init();
	CALL       _Lcd_Init+0
;sourcemode.c,38 :: 		LCD_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;sourcemode.c,39 :: 		LCD_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;sourcemode.c,41 :: 		while(1){
L_main0:
;sourcemode.c,42 :: 		Relay_1 = 0; Relay_2 = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;sourcemode.c,43 :: 		Relay_3 = 0; Relay_4 = 0;
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;sourcemode.c,44 :: 		lcd_out(1,1,"--NO AC Source--");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_sourcemode+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;sourcemode.c,45 :: 		lcd_out(2,1,"--- NO OUTPUT --");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_sourcemode+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;sourcemode.c,46 :: 		delay_ms(10);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;sourcemode.c,47 :: 		if(AC_1 || AC_2 || AC_3 || AC_4)lcd_cmd(_lcd_clear);
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L__main22
	BTFSC      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L__main22
	BTFSC      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L__main22
	BTFSC      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L__main22
	GOTO       L_main5
L__main22:
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
L_main5:
;sourcemode.c,49 :: 		while(AC_1 == 1){Relay_1 = 1; default_lcd();}
L_main6:
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_main7
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
	CALL       _default_lcd+0
	GOTO       L_main6
L_main7:
;sourcemode.c,50 :: 		Relay_1 = 0; Relay_2 = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;sourcemode.c,51 :: 		Relay_3 = 0; Relay_4 = 0;
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;sourcemode.c,52 :: 		while(AC_2 == 1){Relay_2 = 1; default_lcd();}
L_main8:
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_main9
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
	CALL       _default_lcd+0
	GOTO       L_main8
L_main9:
;sourcemode.c,53 :: 		Relay_1 = 0; Relay_2 = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;sourcemode.c,54 :: 		Relay_3 = 0; Relay_4 = 0;
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;sourcemode.c,55 :: 		while(AC_3 == 1){Relay_3 = 1; default_lcd();}
L_main10:
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_main11
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
	CALL       _default_lcd+0
	GOTO       L_main10
L_main11:
;sourcemode.c,56 :: 		Relay_1 = 0; Relay_2 = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;sourcemode.c,57 :: 		Relay_3 = 0; Relay_4 = 0;
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;sourcemode.c,58 :: 		while(AC_4 == 1){Relay_4 = 1; default_lcd();}
L_main12:
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_main13
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
	CALL       _default_lcd+0
	GOTO       L_main12
L_main13:
;sourcemode.c,59 :: 		}
	GOTO       L_main0
;sourcemode.c,60 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_default_lcd:

;sourcemode.c,62 :: 		void default_lcd(){
;sourcemode.c,63 :: 		lcd_out(1,1,txt1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;sourcemode.c,64 :: 		lcd_out(1,10,txt2);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;sourcemode.c,65 :: 		lcd_out(2,1,txt3);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;sourcemode.c,66 :: 		lcd_out(2,10,txt4);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt4+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;sourcemode.c,67 :: 		if(AC_1){lcd_out(1,7, one);}
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_default_lcd14
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _one+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_default_lcd15
L_default_lcd14:
;sourcemode.c,68 :: 		else{lcd_out(1,7, zero);}
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _zero+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_default_lcd15:
;sourcemode.c,69 :: 		if(AC_2){lcd_out(1,16, one);}
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_default_lcd16
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _one+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_default_lcd17
L_default_lcd16:
;sourcemode.c,70 :: 		else{lcd_out(1,16, zero);}
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _zero+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_default_lcd17:
;sourcemode.c,71 :: 		if(AC_3){lcd_out(2,7, one);}
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_default_lcd18
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _one+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_default_lcd19
L_default_lcd18:
;sourcemode.c,72 :: 		else{lcd_out(2,7, zero);}
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _zero+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_default_lcd19:
;sourcemode.c,73 :: 		if(AC_4){lcd_out(2,16, one);}
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_default_lcd20
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _one+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_default_lcd21
L_default_lcd20:
;sourcemode.c,74 :: 		else{lcd_out(2,16,zero);}
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _zero+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_default_lcd21:
;sourcemode.c,75 :: 		}
L_end_default_lcd:
	RETURN
; end of _default_lcd
