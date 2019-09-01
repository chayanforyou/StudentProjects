
_main:

;auto 3 relay switch.c,29 :: 		void main(){
;auto 3 relay switch.c,30 :: 		adcon1 = 0b00000111;
	MOVLW      7
	MOVWF      ADCON1+0
;auto 3 relay switch.c,31 :: 		trisA = 0b000000;
	CLRF       TRISA+0
;auto 3 relay switch.c,32 :: 		trisc = 0b00011110;
	MOVLW      30
	MOVWF      TRISC+0
;auto 3 relay switch.c,33 :: 		portA = 0;
	CLRF       PORTA+0
;auto 3 relay switch.c,34 :: 		lcd_init();
	CALL       _Lcd_Init+0
;auto 3 relay switch.c,35 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;auto 3 relay switch.c,36 :: 		auto_flag = 0;
	BCF        _auto_flag+0, BitPos(_auto_flag+0)
;auto 3 relay switch.c,38 :: 		lcd_out(1,1,"Mode: ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,39 :: 		lcd_out(2,1,"R1:   R2:   R3:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,41 :: 		while(1){
L_main0:
;auto 3 relay switch.c,42 :: 		if(auto_sw == 1){auto_flag =~ auto_flag; delay_ms(300);}
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_main2
	MOVLW
	XORWF      _auto_flag+0, 1
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
L_main2:
;auto 3 relay switch.c,44 :: 		start:
___main_start:
;auto 3 relay switch.c,45 :: 		if(auto_flag == 0){
	BTFSC      _auto_flag+0, BitPos(_auto_flag+0)
	GOTO       L_main4
;auto 3 relay switch.c,46 :: 		lcd_out(1,7,"Manual");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,48 :: 		if(sw_1 == 1){rly1_flag =~ rly1_flag; delay_ms(300);}
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_main5
	MOVLW
	XORWF      _rly1_flag+0, 1
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
L_main5:
;auto 3 relay switch.c,49 :: 		if(sw_2 == 1){rly2_flag =~ rly2_flag; delay_ms(300);}
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_main7
	MOVLW
	XORWF      _rly2_flag+0, 1
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
L_main7:
;auto 3 relay switch.c,50 :: 		if(sw_3 == 1){rly3_flag =~ rly3_flag; delay_ms(300);}
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_main9
	MOVLW
	XORWF      _rly3_flag+0, 1
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
L_main9:
;auto 3 relay switch.c,52 :: 		if(rly1_flag == 0){
	BTFSC      _rly1_flag+0, BitPos(_rly1_flag+0)
	GOTO       L_main11
;auto 3 relay switch.c,53 :: 		relay_1 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;auto 3 relay switch.c,54 :: 		lcd_out(2,4,"1");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,55 :: 		}
	GOTO       L_main12
L_main11:
;auto 3 relay switch.c,57 :: 		relay_1 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;auto 3 relay switch.c,58 :: 		lcd_out(2,4,"0");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,59 :: 		}
L_main12:
;auto 3 relay switch.c,61 :: 		if(rly2_flag == 0){
	BTFSC      _rly2_flag+0, BitPos(_rly2_flag+0)
	GOTO       L_main13
;auto 3 relay switch.c,62 :: 		relay_2 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;auto 3 relay switch.c,63 :: 		lcd_out(2,10,"1");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,64 :: 		}
	GOTO       L_main14
L_main13:
;auto 3 relay switch.c,66 :: 		relay_2 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;auto 3 relay switch.c,67 :: 		lcd_out(2,10,"0");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,68 :: 		}
L_main14:
;auto 3 relay switch.c,70 :: 		if(rly3_flag == 0){
	BTFSC      _rly3_flag+0, BitPos(_rly3_flag+0)
	GOTO       L_main15
;auto 3 relay switch.c,71 :: 		relay_3 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;auto 3 relay switch.c,72 :: 		lcd_out(2,16,"1");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,73 :: 		}
	GOTO       L_main16
L_main15:
;auto 3 relay switch.c,75 :: 		relay_3 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;auto 3 relay switch.c,76 :: 		lcd_out(2,16,"0");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,77 :: 		}
L_main16:
;auto 3 relay switch.c,78 :: 		}
	GOTO       L_main17
L_main4:
;auto 3 relay switch.c,80 :: 		lcd_out(1,7,"Auto  ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,82 :: 		for(delay=0;delay<=500;delay++){
	CLRF       _delay+0
	CLRF       _delay+1
L_main18:
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _delay+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVF       _delay+0, 0
	SUBLW      244
L__main39:
	BTFSS      STATUS+0, 0
	GOTO       L_main19
;auto 3 relay switch.c,83 :: 		relay_1 = 1; relay_2 = 0; relay_3 = 0;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;auto 3 relay switch.c,84 :: 		lcd_out(2,4,"1");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,85 :: 		lcd_out(2,10,"0");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,86 :: 		lcd_out(2,16,"0");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,87 :: 		if(auto_sw == 1){auto_flag = 0; delay_ms(300); break;}
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_main21
	BCF        _auto_flag+0, BitPos(_auto_flag+0)
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
	NOP
	NOP
	GOTO       L_main19
L_main21:
;auto 3 relay switch.c,88 :: 		delay_ms(10);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	NOP
;auto 3 relay switch.c,82 :: 		for(delay=0;delay<=500;delay++){
	INCF       _delay+0, 1
	BTFSC      STATUS+0, 2
	INCF       _delay+1, 1
;auto 3 relay switch.c,89 :: 		}
	GOTO       L_main18
L_main19:
;auto 3 relay switch.c,91 :: 		relay_1 = 0; relay_2 = 0; relay_3 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;auto 3 relay switch.c,92 :: 		if(auto_flag == 0)goto start;
	BTFSC      _auto_flag+0, BitPos(_auto_flag+0)
	GOTO       L_main24
	GOTO       ___main_start
L_main24:
;auto 3 relay switch.c,94 :: 		for(delay=0;delay<=500;delay++){
	CLRF       _delay+0
	CLRF       _delay+1
L_main25:
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _delay+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVF       _delay+0, 0
	SUBLW      244
L__main40:
	BTFSS      STATUS+0, 0
	GOTO       L_main26
;auto 3 relay switch.c,95 :: 		relay_1 = 0; relay_2 = 1; relay_3 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;auto 3 relay switch.c,96 :: 		lcd_out(2,4,"0");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr14_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,97 :: 		lcd_out(2,10,"1");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr15_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,98 :: 		lcd_out(2,16,"0");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr16_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,99 :: 		if(auto_sw == 1){auto_flag = 0; delay_ms(300); break;}
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_main28
	BCF        _auto_flag+0, BitPos(_auto_flag+0)
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main29:
	DECFSZ     R13+0, 1
	GOTO       L_main29
	DECFSZ     R12+0, 1
	GOTO       L_main29
	DECFSZ     R11+0, 1
	GOTO       L_main29
	NOP
	NOP
	GOTO       L_main26
L_main28:
;auto 3 relay switch.c,100 :: 		delay_ms(10);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main30:
	DECFSZ     R13+0, 1
	GOTO       L_main30
	DECFSZ     R12+0, 1
	GOTO       L_main30
	NOP
;auto 3 relay switch.c,94 :: 		for(delay=0;delay<=500;delay++){
	INCF       _delay+0, 1
	BTFSC      STATUS+0, 2
	INCF       _delay+1, 1
;auto 3 relay switch.c,101 :: 		}
	GOTO       L_main25
L_main26:
;auto 3 relay switch.c,103 :: 		relay_1 = 0; relay_2 = 0; relay_3 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;auto 3 relay switch.c,104 :: 		if(auto_flag == 0)goto start;
	BTFSC      _auto_flag+0, BitPos(_auto_flag+0)
	GOTO       L_main31
	GOTO       ___main_start
L_main31:
;auto 3 relay switch.c,106 :: 		for(delay=0;delay<=500;delay++){
	CLRF       _delay+0
	CLRF       _delay+1
L_main32:
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      _delay+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVF       _delay+0, 0
	SUBLW      244
L__main41:
	BTFSS      STATUS+0, 0
	GOTO       L_main33
;auto 3 relay switch.c,107 :: 		relay_1 = 0; relay_2 = 0; relay_3 = 1;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;auto 3 relay switch.c,108 :: 		lcd_out(2,4,"0");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr17_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,109 :: 		lcd_out(2,10,"0");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr18_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,110 :: 		lcd_out(2,16,"1");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr19_auto_323_32relay_32switch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;auto 3 relay switch.c,111 :: 		if(auto_sw == 1){auto_flag = 0; delay_ms(300); break;}
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_main35
	BCF        _auto_flag+0, BitPos(_auto_flag+0)
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	DECFSZ     R11+0, 1
	GOTO       L_main36
	NOP
	NOP
	GOTO       L_main33
L_main35:
;auto 3 relay switch.c,112 :: 		delay_ms(10);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main37:
	DECFSZ     R13+0, 1
	GOTO       L_main37
	DECFSZ     R12+0, 1
	GOTO       L_main37
	NOP
;auto 3 relay switch.c,106 :: 		for(delay=0;delay<=500;delay++){
	INCF       _delay+0, 1
	BTFSC      STATUS+0, 2
	INCF       _delay+1, 1
;auto 3 relay switch.c,113 :: 		}
	GOTO       L_main32
L_main33:
;auto 3 relay switch.c,115 :: 		relay_1 = 0; relay_2 = 0; relay_3 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;auto 3 relay switch.c,117 :: 		}
L_main17:
;auto 3 relay switch.c,118 :: 		}
	GOTO       L_main0
;auto 3 relay switch.c,120 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
