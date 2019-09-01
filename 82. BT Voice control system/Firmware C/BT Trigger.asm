
_main:

;BT Trigger.c,22 :: 		void main() {
;BT Trigger.c,23 :: 		adcon1 = 0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;BT Trigger.c,24 :: 		trisA = 0x00;
	CLRF       TRISA+0
;BT Trigger.c,25 :: 		lcd_init();
	CALL       _Lcd_Init+0
;BT Trigger.c,26 :: 		uart1_init(9600);
	MOVLW      129
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;BT Trigger.c,27 :: 		rly1 = 0; rly2 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;BT Trigger.c,28 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;BT Trigger.c,29 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;BT Trigger.c,31 :: 		while(1){
L_main0:
;BT Trigger.c,32 :: 		lcd_out(1,1, "BT Voice Control");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Trigger.c,33 :: 		lcd_out(2,1, "Li8:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Trigger.c,34 :: 		lcd_out(2,10, "Fan:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Trigger.c,35 :: 		if(rly1 == 1){lcd_out(2,5, "ON ");}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main2
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main3
L_main2:
;BT Trigger.c,36 :: 		else{lcd_out(2,5, "OFF");}
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main3:
;BT Trigger.c,37 :: 		if(rly2 == 1){lcd_out(2,14, "ON ");}
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main4
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main5
L_main4:
;BT Trigger.c,38 :: 		else{lcd_out(2,14, "OFF");}
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main5:
;BT Trigger.c,39 :: 		uart1_read_text(msg, "#", 15);
	MOVLW      _msg+0
	MOVWF      FARG_UART1_Read_Text_Output+0
	MOVLW      ?lstr8_BT_32Trigger+0
	MOVWF      FARG_UART1_Read_Text_Delimiter+0
	MOVLW      15
	MOVWF      FARG_UART1_Read_Text_Attempts+0
	CALL       _UART1_Read_Text+0
;BT Trigger.c,40 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;BT Trigger.c,41 :: 		lcd_out(1,1, "Voice Command:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Trigger.c,42 :: 		if(msg[1] == 'l' && msg[8] == 'n'){  //*light on
	MOVF       _msg+1, 0
	XORLW      108
	BTFSS      STATUS+0, 2
	GOTO       L_main8
	MOVF       _msg+8, 0
	XORLW      110
	BTFSS      STATUS+0, 2
	GOTO       L_main8
L__main26:
;BT Trigger.c,43 :: 		lcd_out(2,1, "Light On");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Trigger.c,44 :: 		rly1 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;BT Trigger.c,45 :: 		}
	GOTO       L_main9
L_main8:
;BT Trigger.c,46 :: 		else if(msg[1] == 'l' && msg[9] == 'f'){  //*light off
	MOVF       _msg+1, 0
	XORLW      108
	BTFSS      STATUS+0, 2
	GOTO       L_main12
	MOVF       _msg+9, 0
	XORLW      102
	BTFSS      STATUS+0, 2
	GOTO       L_main12
L__main25:
;BT Trigger.c,47 :: 		lcd_out(2,1, "Light Off");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Trigger.c,48 :: 		rly1 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;BT Trigger.c,49 :: 		}
	GOTO       L_main13
L_main12:
;BT Trigger.c,50 :: 		else if(msg[1] == 'f' && msg[6] == 'n'){  //*fan on
	MOVF       _msg+1, 0
	XORLW      102
	BTFSS      STATUS+0, 2
	GOTO       L_main16
	MOVF       _msg+6, 0
	XORLW      110
	BTFSS      STATUS+0, 2
	GOTO       L_main16
L__main24:
;BT Trigger.c,51 :: 		lcd_out(2,1, "Fan On");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Trigger.c,52 :: 		rly2 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;BT Trigger.c,53 :: 		}
	GOTO       L_main17
L_main16:
;BT Trigger.c,54 :: 		else if(msg[1] == 'f' && msg[6] == 'f'){  //*fan off
	MOVF       _msg+1, 0
	XORLW      102
	BTFSS      STATUS+0, 2
	GOTO       L_main20
	MOVF       _msg+6, 0
	XORLW      102
	BTFSS      STATUS+0, 2
	GOTO       L_main20
L__main23:
;BT Trigger.c,55 :: 		lcd_out(2,1, "Fan Off");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Trigger.c,56 :: 		rly2 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;BT Trigger.c,57 :: 		}
	GOTO       L_main21
L_main20:
;BT Trigger.c,59 :: 		lcd_out(2,1, "Unknown cmd..");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr14_BT_32Trigger+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;BT Trigger.c,60 :: 		}
L_main21:
L_main17:
L_main13:
L_main9:
;BT Trigger.c,61 :: 		delay_ms(2000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
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
;BT Trigger.c,62 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;BT Trigger.c,63 :: 		}
	GOTO       L_main0
;BT Trigger.c,64 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
