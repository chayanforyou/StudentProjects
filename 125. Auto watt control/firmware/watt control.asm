
_dec2ascii:

;watt control.c,41 :: 		void dec2ascii(unsigned short temp, char x, char y){
;watt control.c,42 :: 		Lcd_Chr(x,y,((temp / 10)  + 48));
	MOVF       FARG_dec2ascii_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_dec2ascii_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_dec2ascii_temp+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;watt control.c,43 :: 		Lcd_Chr(x,y+1,((temp % 10)  + 48));
	MOVF       FARG_dec2ascii_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       FARG_dec2ascii_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_dec2ascii_temp+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;watt control.c,44 :: 		}
L_end_dec2ascii:
	RETURN
; end of _dec2ascii

_show_time:

;watt control.c,46 :: 		void show_time(){
;watt control.c,47 :: 		lcd_out(1,2, "Time:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,48 :: 		tasks = read_Hours();
	CALL       _read_Hours+0
	MOVF       R0+0, 0
	MOVWF      _tasks+0
;watt control.c,49 :: 		current_hh = tasks;
	MOVF       R0+0, 0
	MOVWF      _current_hh+0
;watt control.c,50 :: 		dec2ascii(tasks, 1, 8);
	MOVF       R0+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      1
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      8
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,51 :: 		Lcd_Chr(1,10,':');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;watt control.c,53 :: 		tasks = read_Minutes();
	CALL       _read_Minutes+0
	MOVF       R0+0, 0
	MOVWF      _tasks+0
;watt control.c,54 :: 		current_mm = tasks;
	MOVF       R0+0, 0
	MOVWF      _current_mm+0
;watt control.c,55 :: 		dec2ascii(tasks, 1, 11);
	MOVF       R0+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      1
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      11
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,56 :: 		Lcd_Chr(1,13,':');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      13
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;watt control.c,58 :: 		tasks = read_Seconds();
	CALL       _read_Seconds+0
	MOVF       R0+0, 0
	MOVWF      _tasks+0
;watt control.c,59 :: 		dec2ascii(tasks, 1, 14);
	MOVF       R0+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      1
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      14
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,60 :: 		}
L_end_show_time:
	RETURN
; end of _show_time

_time_txt:

;watt control.c,62 :: 		void time_txt(char x){
;watt control.c,63 :: 		lcd_out(2,1, "Time: ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,64 :: 		lcd_out(2,9, ":");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,65 :: 		if(x == 0) lcd_out(2,13, "HH");
	MOVF       FARG_time_txt_x+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_time_txt0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      13
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_time_txt1
L_time_txt0:
;watt control.c,66 :: 		else lcd_out(2,13, "MM");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      13
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_time_txt1:
;watt control.c,67 :: 		}
L_end_time_txt:
	RETURN
; end of _time_txt

_watt_txt:

;watt control.c,69 :: 		void watt_txt(){
;watt control.c,70 :: 		lcd_out(2,1, "Watt: ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,71 :: 		lcd_out(2,9,"      ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,72 :: 		}
L_end_watt_txt:
	RETURN
; end of _watt_txt

_setup:

;watt control.c,74 :: 		void setup(){
;watt control.c,75 :: 		rly_1 = 0; rly_2 = 0; rly_3 = 0;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;watt control.c,76 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;watt control.c,77 :: 		lcd_out(1,1, "Watt per load:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,78 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_setup2:
	DECFSZ     R13+0, 1
	GOTO       L_setup2
	DECFSZ     R12+0, 1
	GOTO       L_setup2
	DECFSZ     R11+0, 1
	GOTO       L_setup2
	NOP
;watt control.c,79 :: 		lcd_out(2,5, "Watt");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,80 :: 		dec2ascii(desire_watt, 2, 1);
	MOVF       _desire_watt+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      1
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,82 :: 		while(!butt_c){                                 //Watt per load
L_setup3:
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_setup4
;watt control.c,83 :: 		if(butt_b){desire_watt++; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_setup5
	INCF       _desire_watt+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup6:
	DECFSZ     R13+0, 1
	GOTO       L_setup6
	DECFSZ     R12+0, 1
	GOTO       L_setup6
	DECFSZ     R11+0, 1
	GOTO       L_setup6
	NOP
	NOP
L_setup5:
;watt control.c,84 :: 		if(butt_a){desire_watt--; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_setup7
	DECF       _desire_watt+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup8:
	DECFSZ     R13+0, 1
	GOTO       L_setup8
	DECFSZ     R12+0, 1
	GOTO       L_setup8
	DECFSZ     R11+0, 1
	GOTO       L_setup8
	NOP
	NOP
L_setup7:
;watt control.c,85 :: 		if(desire_watt > 23) desire_watt = 0;
	MOVF       _desire_watt+0, 0
	SUBLW      23
	BTFSC      STATUS+0, 0
	GOTO       L_setup9
	CLRF       _desire_watt+0
L_setup9:
;watt control.c,86 :: 		dec2ascii(desire_watt, 2, 1);
	MOVF       _desire_watt+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      1
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,87 :: 		if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setup10
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup11:
	DECFSZ     R13+0, 1
	GOTO       L_setup11
	DECFSZ     R12+0, 1
	GOTO       L_setup11
	DECFSZ     R11+0, 1
	GOTO       L_setup11
	NOP
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_end_setup
L_setup10:
;watt control.c,88 :: 		}
	GOTO       L_setup3
L_setup4:
;watt control.c,89 :: 		EEPROM_write(9, desire_watt);
	MOVLW      9
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _desire_watt+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;watt control.c,90 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup12:
	DECFSZ     R13+0, 1
	GOTO       L_setup12
	DECFSZ     R12+0, 1
	GOTO       L_setup12
	DECFSZ     R11+0, 1
	GOTO       L_setup12
	NOP
	NOP
;watt control.c,92 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;watt control.c,93 :: 		lcd_out(1,1, "Morning setup:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,94 :: 		time_txt(0);
	CLRF       FARG_time_txt_x+0
	CALL       _time_txt+0
;watt control.c,95 :: 		dec2ascii(morning_hh, 2, 7);
	MOVF       _morning_hh+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      7
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,96 :: 		dec2ascii(morning_mm, 2, 10);
	MOVF       _morning_mm+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      10
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,98 :: 		while(!butt_c){                                 //morning Hours
L_setup13:
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_setup14
;watt control.c,99 :: 		if(butt_b){morning_hh++; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_setup15
	INCF       _morning_hh+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup16:
	DECFSZ     R13+0, 1
	GOTO       L_setup16
	DECFSZ     R12+0, 1
	GOTO       L_setup16
	DECFSZ     R11+0, 1
	GOTO       L_setup16
	NOP
	NOP
L_setup15:
;watt control.c,100 :: 		if(butt_a){morning_hh--; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_setup17
	DECF       _morning_hh+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup18:
	DECFSZ     R13+0, 1
	GOTO       L_setup18
	DECFSZ     R12+0, 1
	GOTO       L_setup18
	DECFSZ     R11+0, 1
	GOTO       L_setup18
	NOP
	NOP
L_setup17:
;watt control.c,101 :: 		if(morning_hh > 23) morning_hh = 0;
	MOVF       _morning_hh+0, 0
	SUBLW      23
	BTFSC      STATUS+0, 0
	GOTO       L_setup19
	CLRF       _morning_hh+0
L_setup19:
;watt control.c,102 :: 		dec2ascii(morning_hh, 2, 7);
	MOVF       _morning_hh+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      7
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,103 :: 		if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setup20
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup21:
	DECFSZ     R13+0, 1
	GOTO       L_setup21
	DECFSZ     R12+0, 1
	GOTO       L_setup21
	DECFSZ     R11+0, 1
	GOTO       L_setup21
	NOP
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_end_setup
L_setup20:
;watt control.c,104 :: 		}
	GOTO       L_setup13
L_setup14:
;watt control.c,105 :: 		EEPROM_write(0, morning_hh);
	CLRF       FARG_EEPROM_Write_Address+0
	MOVF       _morning_hh+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;watt control.c,106 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup22:
	DECFSZ     R13+0, 1
	GOTO       L_setup22
	DECFSZ     R12+0, 1
	GOTO       L_setup22
	DECFSZ     R11+0, 1
	GOTO       L_setup22
	NOP
	NOP
;watt control.c,108 :: 		time_txt(1);
	MOVLW      1
	MOVWF      FARG_time_txt_x+0
	CALL       _time_txt+0
;watt control.c,110 :: 		while(!butt_c){                                 //morning Minutes
L_setup23:
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_setup24
;watt control.c,111 :: 		if(butt_b){morning_mm++; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_setup25
	INCF       _morning_mm+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup26:
	DECFSZ     R13+0, 1
	GOTO       L_setup26
	DECFSZ     R12+0, 1
	GOTO       L_setup26
	DECFSZ     R11+0, 1
	GOTO       L_setup26
	NOP
	NOP
L_setup25:
;watt control.c,112 :: 		if(butt_a){morning_mm--; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_setup27
	DECF       _morning_mm+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup28:
	DECFSZ     R13+0, 1
	GOTO       L_setup28
	DECFSZ     R12+0, 1
	GOTO       L_setup28
	DECFSZ     R11+0, 1
	GOTO       L_setup28
	NOP
	NOP
L_setup27:
;watt control.c,113 :: 		if(morning_mm > 59) morning_mm = 0;
	MOVF       _morning_mm+0, 0
	SUBLW      59
	BTFSC      STATUS+0, 0
	GOTO       L_setup29
	CLRF       _morning_mm+0
L_setup29:
;watt control.c,114 :: 		dec2ascii(morning_mm, 2, 10);
	MOVF       _morning_mm+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      10
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,115 :: 		if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setup30
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup31:
	DECFSZ     R13+0, 1
	GOTO       L_setup31
	DECFSZ     R12+0, 1
	GOTO       L_setup31
	DECFSZ     R11+0, 1
	GOTO       L_setup31
	NOP
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_end_setup
L_setup30:
;watt control.c,116 :: 		}
	GOTO       L_setup23
L_setup24:
;watt control.c,117 :: 		EEPROM_write(1, morning_mm);
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _morning_mm+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;watt control.c,118 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup32:
	DECFSZ     R13+0, 1
	GOTO       L_setup32
	DECFSZ     R12+0, 1
	GOTO       L_setup32
	DECFSZ     R11+0, 1
	GOTO       L_setup32
	NOP
	NOP
;watt control.c,120 :: 		watt_txt();
	CALL       _watt_txt+0
;watt control.c,122 :: 		while(!butt_c){                                 //morning watt
L_setup33:
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_setup34
;watt control.c,123 :: 		if(butt_b){morning_watt++; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_setup35
	INCF       _morning_watt+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup36:
	DECFSZ     R13+0, 1
	GOTO       L_setup36
	DECFSZ     R12+0, 1
	GOTO       L_setup36
	DECFSZ     R11+0, 1
	GOTO       L_setup36
	NOP
	NOP
L_setup35:
;watt control.c,124 :: 		if(butt_a){morning_watt--; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_setup37
	DECF       _morning_watt+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup38:
	DECFSZ     R13+0, 1
	GOTO       L_setup38
	DECFSZ     R12+0, 1
	GOTO       L_setup38
	DECFSZ     R11+0, 1
	GOTO       L_setup38
	NOP
	NOP
L_setup37:
;watt control.c,125 :: 		if(morning_watt > 99) morning_watt = 0;
	MOVF       _morning_watt+0, 0
	SUBLW      99
	BTFSC      STATUS+0, 0
	GOTO       L_setup39
	CLRF       _morning_watt+0
L_setup39:
;watt control.c,126 :: 		dec2ascii(morning_watt, 2, 7);
	MOVF       _morning_watt+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      7
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,127 :: 		if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setup40
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup41:
	DECFSZ     R13+0, 1
	GOTO       L_setup41
	DECFSZ     R12+0, 1
	GOTO       L_setup41
	DECFSZ     R11+0, 1
	GOTO       L_setup41
	NOP
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_end_setup
L_setup40:
;watt control.c,128 :: 		}
	GOTO       L_setup33
L_setup34:
;watt control.c,129 :: 		EEPROM_write(2, morning_watt);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _morning_watt+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;watt control.c,130 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup42:
	DECFSZ     R13+0, 1
	GOTO       L_setup42
	DECFSZ     R12+0, 1
	GOTO       L_setup42
	DECFSZ     R11+0, 1
	GOTO       L_setup42
	NOP
	NOP
;watt control.c,132 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;watt control.c,133 :: 		lcd_out(1,1, "Midday setup:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,134 :: 		time_txt(0);
	CLRF       FARG_time_txt_x+0
	CALL       _time_txt+0
;watt control.c,135 :: 		dec2ascii(midday_hh, 2, 7);
	MOVF       _midday_hh+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      7
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,136 :: 		dec2ascii(midday_mm, 2, 10);
	MOVF       _midday_mm+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      10
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,138 :: 		while(!butt_c){                                 //Midday Hours
L_setup43:
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_setup44
;watt control.c,139 :: 		lcd_out(2,9, ":");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,140 :: 		lcd_out(2,13, "HH");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      13
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,141 :: 		if(butt_b){midday_hh++; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_setup45
	INCF       _midday_hh+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup46:
	DECFSZ     R13+0, 1
	GOTO       L_setup46
	DECFSZ     R12+0, 1
	GOTO       L_setup46
	DECFSZ     R11+0, 1
	GOTO       L_setup46
	NOP
	NOP
L_setup45:
;watt control.c,142 :: 		if(butt_a){midday_hh--; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_setup47
	DECF       _midday_hh+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup48:
	DECFSZ     R13+0, 1
	GOTO       L_setup48
	DECFSZ     R12+0, 1
	GOTO       L_setup48
	DECFSZ     R11+0, 1
	GOTO       L_setup48
	NOP
	NOP
L_setup47:
;watt control.c,143 :: 		if(midday_hh > 23) midday_hh = 0;
	MOVF       _midday_hh+0, 0
	SUBLW      23
	BTFSC      STATUS+0, 0
	GOTO       L_setup49
	CLRF       _midday_hh+0
L_setup49:
;watt control.c,144 :: 		dec2ascii(midday_hh, 2, 7);
	MOVF       _midday_hh+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      7
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,145 :: 		if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setup50
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup51:
	DECFSZ     R13+0, 1
	GOTO       L_setup51
	DECFSZ     R12+0, 1
	GOTO       L_setup51
	DECFSZ     R11+0, 1
	GOTO       L_setup51
	NOP
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_end_setup
L_setup50:
;watt control.c,146 :: 		}
	GOTO       L_setup43
L_setup44:
;watt control.c,147 :: 		EEPROM_write(3, midday_hh);
	MOVLW      3
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _midday_hh+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;watt control.c,148 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup52:
	DECFSZ     R13+0, 1
	GOTO       L_setup52
	DECFSZ     R12+0, 1
	GOTO       L_setup52
	DECFSZ     R11+0, 1
	GOTO       L_setup52
	NOP
	NOP
;watt control.c,150 :: 		time_txt(1);
	MOVLW      1
	MOVWF      FARG_time_txt_x+0
	CALL       _time_txt+0
;watt control.c,152 :: 		while(!butt_c){                                 //Midday Minutes
L_setup53:
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_setup54
;watt control.c,153 :: 		if(butt_b){midday_mm++; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_setup55
	INCF       _midday_mm+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup56:
	DECFSZ     R13+0, 1
	GOTO       L_setup56
	DECFSZ     R12+0, 1
	GOTO       L_setup56
	DECFSZ     R11+0, 1
	GOTO       L_setup56
	NOP
	NOP
L_setup55:
;watt control.c,154 :: 		if(butt_a){midday_mm--; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_setup57
	DECF       _midday_mm+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup58:
	DECFSZ     R13+0, 1
	GOTO       L_setup58
	DECFSZ     R12+0, 1
	GOTO       L_setup58
	DECFSZ     R11+0, 1
	GOTO       L_setup58
	NOP
	NOP
L_setup57:
;watt control.c,155 :: 		if(midday_mm > 59) midday_mm = 0;
	MOVF       _midday_mm+0, 0
	SUBLW      59
	BTFSC      STATUS+0, 0
	GOTO       L_setup59
	CLRF       _midday_mm+0
L_setup59:
;watt control.c,156 :: 		dec2ascii(midday_mm, 2, 10);
	MOVF       _midday_mm+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      10
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,157 :: 		if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setup60
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup61:
	DECFSZ     R13+0, 1
	GOTO       L_setup61
	DECFSZ     R12+0, 1
	GOTO       L_setup61
	DECFSZ     R11+0, 1
	GOTO       L_setup61
	NOP
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_end_setup
L_setup60:
;watt control.c,158 :: 		}
	GOTO       L_setup53
L_setup54:
;watt control.c,159 :: 		EEPROM_write(4, midday_mm);
	MOVLW      4
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _midday_mm+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;watt control.c,160 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup62:
	DECFSZ     R13+0, 1
	GOTO       L_setup62
	DECFSZ     R12+0, 1
	GOTO       L_setup62
	DECFSZ     R11+0, 1
	GOTO       L_setup62
	NOP
	NOP
;watt control.c,162 :: 		watt_txt();
	CALL       _watt_txt+0
;watt control.c,164 :: 		while(!butt_c){                                 //Midday watt
L_setup63:
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_setup64
;watt control.c,165 :: 		if(butt_b){midday_watt++; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_setup65
	INCF       _midday_watt+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup66:
	DECFSZ     R13+0, 1
	GOTO       L_setup66
	DECFSZ     R12+0, 1
	GOTO       L_setup66
	DECFSZ     R11+0, 1
	GOTO       L_setup66
	NOP
	NOP
L_setup65:
;watt control.c,166 :: 		if(butt_a){midday_watt--; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_setup67
	DECF       _midday_watt+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup68:
	DECFSZ     R13+0, 1
	GOTO       L_setup68
	DECFSZ     R12+0, 1
	GOTO       L_setup68
	DECFSZ     R11+0, 1
	GOTO       L_setup68
	NOP
	NOP
L_setup67:
;watt control.c,167 :: 		if(midday_watt > 99) midday_watt = 0;
	MOVF       _midday_watt+0, 0
	SUBLW      99
	BTFSC      STATUS+0, 0
	GOTO       L_setup69
	CLRF       _midday_watt+0
L_setup69:
;watt control.c,168 :: 		dec2ascii(midday_watt, 2, 7);
	MOVF       _midday_watt+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      7
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,169 :: 		if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setup70
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup71:
	DECFSZ     R13+0, 1
	GOTO       L_setup71
	DECFSZ     R12+0, 1
	GOTO       L_setup71
	DECFSZ     R11+0, 1
	GOTO       L_setup71
	NOP
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_end_setup
L_setup70:
;watt control.c,170 :: 		}
	GOTO       L_setup63
L_setup64:
;watt control.c,171 :: 		EEPROM_write(5, midday_watt);
	MOVLW      5
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _midday_watt+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;watt control.c,172 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup72:
	DECFSZ     R13+0, 1
	GOTO       L_setup72
	DECFSZ     R12+0, 1
	GOTO       L_setup72
	DECFSZ     R11+0, 1
	GOTO       L_setup72
	NOP
	NOP
;watt control.c,174 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;watt control.c,175 :: 		lcd_out(1,1, "Night setup:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr14_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,176 :: 		time_txt(0);
	CLRF       FARG_time_txt_x+0
	CALL       _time_txt+0
;watt control.c,177 :: 		dec2ascii(night_hh, 2, 7);
	MOVF       _night_hh+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      7
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,178 :: 		dec2ascii(night_mm, 2, 10);
	MOVF       _night_mm+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      10
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,180 :: 		while(!butt_c){                                 //night Hours
L_setup73:
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_setup74
;watt control.c,181 :: 		if(butt_b){night_hh++; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_setup75
	INCF       _night_hh+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup76:
	DECFSZ     R13+0, 1
	GOTO       L_setup76
	DECFSZ     R12+0, 1
	GOTO       L_setup76
	DECFSZ     R11+0, 1
	GOTO       L_setup76
	NOP
	NOP
L_setup75:
;watt control.c,182 :: 		if(butt_a){night_hh--; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_setup77
	DECF       _night_hh+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup78:
	DECFSZ     R13+0, 1
	GOTO       L_setup78
	DECFSZ     R12+0, 1
	GOTO       L_setup78
	DECFSZ     R11+0, 1
	GOTO       L_setup78
	NOP
	NOP
L_setup77:
;watt control.c,183 :: 		if(night_hh > 23) night_hh = 0;
	MOVF       _night_hh+0, 0
	SUBLW      23
	BTFSC      STATUS+0, 0
	GOTO       L_setup79
	CLRF       _night_hh+0
L_setup79:
;watt control.c,184 :: 		dec2ascii(night_hh, 2, 7);
	MOVF       _night_hh+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      7
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,185 :: 		if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setup80
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup81:
	DECFSZ     R13+0, 1
	GOTO       L_setup81
	DECFSZ     R12+0, 1
	GOTO       L_setup81
	DECFSZ     R11+0, 1
	GOTO       L_setup81
	NOP
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_end_setup
L_setup80:
;watt control.c,186 :: 		}
	GOTO       L_setup73
L_setup74:
;watt control.c,187 :: 		EEPROM_write(6, night_hh);
	MOVLW      6
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _night_hh+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;watt control.c,188 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup82:
	DECFSZ     R13+0, 1
	GOTO       L_setup82
	DECFSZ     R12+0, 1
	GOTO       L_setup82
	DECFSZ     R11+0, 1
	GOTO       L_setup82
	NOP
	NOP
;watt control.c,190 :: 		time_txt(1);
	MOVLW      1
	MOVWF      FARG_time_txt_x+0
	CALL       _time_txt+0
;watt control.c,192 :: 		while(!butt_c){                                 //night Minutes
L_setup83:
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_setup84
;watt control.c,193 :: 		if(butt_b){night_mm++; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_setup85
	INCF       _night_mm+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup86:
	DECFSZ     R13+0, 1
	GOTO       L_setup86
	DECFSZ     R12+0, 1
	GOTO       L_setup86
	DECFSZ     R11+0, 1
	GOTO       L_setup86
	NOP
	NOP
L_setup85:
;watt control.c,194 :: 		if(butt_a){night_mm--; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_setup87
	DECF       _night_mm+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup88:
	DECFSZ     R13+0, 1
	GOTO       L_setup88
	DECFSZ     R12+0, 1
	GOTO       L_setup88
	DECFSZ     R11+0, 1
	GOTO       L_setup88
	NOP
	NOP
L_setup87:
;watt control.c,195 :: 		if(night_mm > 59) night_mm = 0;
	MOVF       _night_mm+0, 0
	SUBLW      59
	BTFSC      STATUS+0, 0
	GOTO       L_setup89
	CLRF       _night_mm+0
L_setup89:
;watt control.c,196 :: 		dec2ascii(night_mm, 2, 10);
	MOVF       _night_mm+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      10
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,197 :: 		if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setup90
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup91:
	DECFSZ     R13+0, 1
	GOTO       L_setup91
	DECFSZ     R12+0, 1
	GOTO       L_setup91
	DECFSZ     R11+0, 1
	GOTO       L_setup91
	NOP
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_end_setup
L_setup90:
;watt control.c,198 :: 		}
	GOTO       L_setup83
L_setup84:
;watt control.c,199 :: 		EEPROM_write(7, night_mm);
	MOVLW      7
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _night_mm+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;watt control.c,200 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup92:
	DECFSZ     R13+0, 1
	GOTO       L_setup92
	DECFSZ     R12+0, 1
	GOTO       L_setup92
	DECFSZ     R11+0, 1
	GOTO       L_setup92
	NOP
	NOP
;watt control.c,202 :: 		watt_txt();
	CALL       _watt_txt+0
;watt control.c,204 :: 		while(!butt_c){                                 //night watt
L_setup93:
	BTFSC      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_setup94
;watt control.c,205 :: 		if(butt_b){night_watt++; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_setup95
	INCF       _night_watt+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup96:
	DECFSZ     R13+0, 1
	GOTO       L_setup96
	DECFSZ     R12+0, 1
	GOTO       L_setup96
	DECFSZ     R11+0, 1
	GOTO       L_setup96
	NOP
	NOP
L_setup95:
;watt control.c,206 :: 		if(butt_a){night_watt--; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_setup97
	DECF       _night_watt+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup98:
	DECFSZ     R13+0, 1
	GOTO       L_setup98
	DECFSZ     R12+0, 1
	GOTO       L_setup98
	DECFSZ     R11+0, 1
	GOTO       L_setup98
	NOP
	NOP
L_setup97:
;watt control.c,207 :: 		if(night_watt > 99) night_watt = 0;
	MOVF       _night_watt+0, 0
	SUBLW      99
	BTFSC      STATUS+0, 0
	GOTO       L_setup99
	CLRF       _night_watt+0
L_setup99:
;watt control.c,208 :: 		dec2ascii(night_watt, 2, 7);
	MOVF       _night_watt+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      7
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,209 :: 		if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setup100
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup101:
	DECFSZ     R13+0, 1
	GOTO       L_setup101
	DECFSZ     R12+0, 1
	GOTO       L_setup101
	DECFSZ     R11+0, 1
	GOTO       L_setup101
	NOP
	NOP
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_end_setup
L_setup100:
;watt control.c,210 :: 		}
	GOTO       L_setup93
L_setup94:
;watt control.c,211 :: 		EEPROM_write(8, night_watt);
	MOVLW      8
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _night_watt+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;watt control.c,212 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup102:
	DECFSZ     R13+0, 1
	GOTO       L_setup102
	DECFSZ     R12+0, 1
	GOTO       L_setup102
	DECFSZ     R11+0, 1
	GOTO       L_setup102
	NOP
	NOP
;watt control.c,213 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;watt control.c,214 :: 		}
L_end_setup:
	RETURN
; end of _setup

_current_load:

;watt control.c,216 :: 		void current_load(){
;watt control.c,217 :: 		if(rly_1 && !rly_2 && !rly_3) current_watt = desire_watt;
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_current_load105
	BTFSC      RC5_bit+0, BitPos(RC5_bit+0)
	GOTO       L_current_load105
	BTFSC      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_current_load105
L__current_load180:
	MOVF       _desire_watt+0, 0
	MOVWF      _current_watt+0
	GOTO       L_current_load106
L_current_load105:
;watt control.c,218 :: 		else if(!rly_1 && rly_2 && !rly_3) current_watt = desire_watt;
	BTFSC      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_current_load109
	BTFSS      RC5_bit+0, BitPos(RC5_bit+0)
	GOTO       L_current_load109
	BTFSC      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_current_load109
L__current_load179:
	MOVF       _desire_watt+0, 0
	MOVWF      _current_watt+0
	GOTO       L_current_load110
L_current_load109:
;watt control.c,219 :: 		else if(!rly_1 && !rly_2 && rly_3) current_watt = desire_watt;
	BTFSC      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_current_load113
	BTFSC      RC5_bit+0, BitPos(RC5_bit+0)
	GOTO       L_current_load113
	BTFSS      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_current_load113
L__current_load178:
	MOVF       _desire_watt+0, 0
	MOVWF      _current_watt+0
	GOTO       L_current_load114
L_current_load113:
;watt control.c,220 :: 		else if(rly_1 && rly_2 && !rly_3) current_watt = 2 * desire_watt;
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_current_load117
	BTFSS      RC5_bit+0, BitPos(RC5_bit+0)
	GOTO       L_current_load117
	BTFSC      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_current_load117
L__current_load177:
	MOVF       _desire_watt+0, 0
	MOVWF      _current_watt+0
	RLF        _current_watt+0, 1
	BCF        _current_watt+0, 0
	GOTO       L_current_load118
L_current_load117:
;watt control.c,221 :: 		else if(rly_1 && rly_3 && !rly_2) current_watt = 2 * desire_watt;
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_current_load121
	BTFSS      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_current_load121
	BTFSC      RC5_bit+0, BitPos(RC5_bit+0)
	GOTO       L_current_load121
L__current_load176:
	MOVF       _desire_watt+0, 0
	MOVWF      _current_watt+0
	RLF        _current_watt+0, 1
	BCF        _current_watt+0, 0
	GOTO       L_current_load122
L_current_load121:
;watt control.c,222 :: 		else if(rly_2 && rly_3 && !rly_1) current_watt = 2 * desire_watt;
	BTFSS      RC5_bit+0, BitPos(RC5_bit+0)
	GOTO       L_current_load125
	BTFSS      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_current_load125
	BTFSC      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_current_load125
L__current_load175:
	MOVF       _desire_watt+0, 0
	MOVWF      _current_watt+0
	RLF        _current_watt+0, 1
	BCF        _current_watt+0, 0
	GOTO       L_current_load126
L_current_load125:
;watt control.c,223 :: 		else if(rly_1 && rly_2 && rly_3) current_watt = 3 * desire_watt;
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_current_load129
	BTFSS      RC5_bit+0, BitPos(RC5_bit+0)
	GOTO       L_current_load129
	BTFSS      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_current_load129
L__current_load174:
	MOVLW      3
	MOVWF      R0+0
	MOVF       _desire_watt+0, 0
	MOVWF      R4+0
	CALL       _Mul_8X8_U+0
	MOVF       R0+0, 0
	MOVWF      _current_watt+0
	GOTO       L_current_load130
L_current_load129:
;watt control.c,224 :: 		else current_watt = 0;
	CLRF       _current_watt+0
L_current_load130:
L_current_load126:
L_current_load122:
L_current_load118:
L_current_load114:
L_current_load110:
L_current_load106:
;watt control.c,225 :: 		}
L_end_current_load:
	RETURN
; end of _current_load

_auto_adjust:

;watt control.c,227 :: 		void auto_adjust(char watt){
;watt control.c,228 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;watt control.c,229 :: 		lcd_out(2,2, "!! Overload !!");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr15_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,230 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_auto_adjust131:
	DECFSZ     R13+0, 1
	GOTO       L_auto_adjust131
	DECFSZ     R12+0, 1
	GOTO       L_auto_adjust131
	DECFSZ     R11+0, 1
	GOTO       L_auto_adjust131
	NOP
;watt control.c,232 :: 		while(1){
L_auto_adjust132:
;watt control.c,233 :: 		rly_1 = 0;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
;watt control.c,234 :: 		current_load();
	CALL       _current_load+0
;watt control.c,235 :: 		if(current_watt <= watt) break;
	MOVF       _current_watt+0, 0
	SUBWF      FARG_auto_adjust_watt+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_auto_adjust134
	GOTO       L_auto_adjust133
L_auto_adjust134:
;watt control.c,236 :: 		rly_2 = 0;
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
;watt control.c,237 :: 		current_load();
	CALL       _current_load+0
;watt control.c,238 :: 		if(current_watt <= watt) break;
	MOVF       _current_watt+0, 0
	SUBWF      FARG_auto_adjust_watt+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_auto_adjust135
	GOTO       L_auto_adjust133
L_auto_adjust135:
;watt control.c,239 :: 		rly_3 = 0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;watt control.c,240 :: 		current_load();
	CALL       _current_load+0
;watt control.c,241 :: 		if(current_watt <= watt) break;
	MOVF       _current_watt+0, 0
	SUBWF      FARG_auto_adjust_watt+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_auto_adjust136
	GOTO       L_auto_adjust133
L_auto_adjust136:
;watt control.c,242 :: 		}
	GOTO       L_auto_adjust132
L_auto_adjust133:
;watt control.c,243 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;watt control.c,244 :: 		return;
;watt control.c,245 :: 		}
L_end_auto_adjust:
	RETURN
; end of _auto_adjust

_default_work:

;watt control.c,247 :: 		void default_work(){
;watt control.c,248 :: 		show_time();
	CALL       _show_time+0
;watt control.c,249 :: 		if(set_key) setup();
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_default_work137
	CALL       _setup+0
L_default_work137:
;watt control.c,251 :: 		current_load();
	CALL       _current_load+0
;watt control.c,252 :: 		dec2ascii(current_watt, 2, 7);
	MOVF       _current_watt+0, 0
	MOVWF      FARG_dec2ascii_temp+0
	MOVLW      2
	MOVWF      FARG_dec2ascii_x+0
	MOVLW      7
	MOVWF      FARG_dec2ascii_y+0
	CALL       _dec2ascii+0
;watt control.c,253 :: 		lcd_out(2,1, "Load: ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr16_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,254 :: 		lcd_out(2,9, " Watt");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr17_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,255 :: 		}
L_end_default_work:
	RETURN
; end of _default_work

_dec2int:

;watt control.c,257 :: 		int dec2int(char hi, char low){
;watt control.c,258 :: 		return (hi * 1000) + low;
	MOVF       FARG_dec2int_hi+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       FARG_dec2int_low+0, 0
	ADDWF      R0+0, 1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
;watt control.c,259 :: 		}
L_end_dec2int:
	RETURN
; end of _dec2int

_main:

;watt control.c,261 :: 		void main(){
;watt control.c,262 :: 		ADCON1 = 0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;watt control.c,263 :: 		TRISA = 0x3F;
	MOVLW      63
	MOVWF      TRISA+0
;watt control.c,264 :: 		TRISC = 0x01;
	MOVLW      1
	MOVWF      TRISC+0
;watt control.c,265 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;watt control.c,266 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;watt control.c,267 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;watt control.c,268 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;watt control.c,269 :: 		DS1302_Init();
	CALL       _DS1302_Init+0
;watt control.c,270 :: 		morning_hh = EEPROM_read(0);
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _morning_hh+0
;watt control.c,271 :: 		morning_mm = EEPROM_read(1);
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _morning_mm+0
;watt control.c,272 :: 		morning_watt = EEPROM_read(2);
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _morning_watt+0
;watt control.c,273 :: 		midday_hh = EEPROM_read(3);
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _midday_hh+0
;watt control.c,274 :: 		midday_mm = EEPROM_read(4);
	MOVLW      4
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _midday_mm+0
;watt control.c,275 :: 		midday_watt = EEPROM_read(5);
	MOVLW      5
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _midday_watt+0
;watt control.c,276 :: 		night_hh = EEPROM_read(6);
	MOVLW      6
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _night_hh+0
;watt control.c,277 :: 		night_mm = EEPROM_read(7);
	MOVLW      7
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _night_mm+0
;watt control.c,278 :: 		night_watt = EEPROM_read(8);
	MOVLW      8
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _night_watt+0
;watt control.c,279 :: 		desire_watt = EEPROM_read(9);
	MOVLW      9
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _desire_watt+0
;watt control.c,280 :: 		current_watt = 0;
	CLRF       _current_watt+0
;watt control.c,281 :: 		morning_flag = 0;
	BCF        _morning_flag+0, BitPos(_morning_flag+0)
;watt control.c,282 :: 		midday_flag = 0;
	BCF        _midday_flag+0, BitPos(_midday_flag+0)
;watt control.c,283 :: 		night_flag = 0;
	BCF        _night_flag+0, BitPos(_night_flag+0)
;watt control.c,284 :: 		current_int = 0;
	CLRF       _current_int+0
	CLRF       _current_int+1
;watt control.c,285 :: 		morning_int = 0;
	CLRF       _morning_int+0
	CLRF       _morning_int+1
;watt control.c,286 :: 		midday_int = 0;
	CLRF       _midday_int+0
	CLRF       _midday_int+1
;watt control.c,287 :: 		night_int = 0;
	CLRF       _night_int+0
	CLRF       _night_int+1
;watt control.c,291 :: 		lcd_out(2,1, "Please wait..");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr18_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,292 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main138:
	DECFSZ     R13+0, 1
	GOTO       L_main138
	DECFSZ     R12+0, 1
	GOTO       L_main138
	DECFSZ     R11+0, 1
	GOTO       L_main138
	NOP
;watt control.c,293 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;watt control.c,296 :: 		while(1){
L_main139:
;watt control.c,297 :: 		default_work();
	CALL       _default_work+0
;watt control.c,298 :: 		rly_1 = 0; rly_2 = 0; rly_3 = 0;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;watt control.c,299 :: 		lcd_out(2,15,"--");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr19_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,300 :: 		current_int = dec2int(current_hh, current_mm);
	MOVF       _current_hh+0, 0
	MOVWF      FARG_dec2int_hi+0
	MOVF       _current_mm+0, 0
	MOVWF      FARG_dec2int_low+0
	CALL       _dec2int+0
	MOVF       R0+0, 0
	MOVWF      _current_int+0
	MOVF       R0+1, 0
	MOVWF      _current_int+1
;watt control.c,302 :: 		morning_int = dec2int(morning_hh, morning_mm);
	MOVF       _morning_hh+0, 0
	MOVWF      FARG_dec2int_hi+0
	MOVF       _morning_mm+0, 0
	MOVWF      FARG_dec2int_low+0
	CALL       _dec2int+0
	MOVF       R0+0, 0
	MOVWF      _morning_int+0
	MOVF       R0+1, 0
	MOVWF      _morning_int+1
;watt control.c,303 :: 		if(current_int <= morning_int) morning_flag = 1;
	MOVF       _current_int+1, 0
	SUBWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main191
	MOVF       _current_int+0, 0
	SUBWF      R0+0, 0
L__main191:
	BTFSS      STATUS+0, 0
	GOTO       L_main141
	BSF        _morning_flag+0, BitPos(_morning_flag+0)
L_main141:
;watt control.c,305 :: 		while(morning_flag){
L_main142:
	BTFSS      _morning_flag+0, BitPos(_morning_flag+0)
	GOTO       L_main143
;watt control.c,306 :: 		if(current_int > morning_int) morning_flag = 0;
	MOVF       _current_int+1, 0
	SUBWF      _morning_int+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main192
	MOVF       _current_int+0, 0
	SUBWF      _morning_int+0, 0
L__main192:
	BTFSC      STATUS+0, 0
	GOTO       L_main144
	BCF        _morning_flag+0, BitPos(_morning_flag+0)
L_main144:
;watt control.c,307 :: 		default_work();
	CALL       _default_work+0
;watt control.c,309 :: 		if(butt_a) {rly_1 =~ rly_1; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_main145
	MOVLW
	XORWF      RC4_bit+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main146:
	DECFSZ     R13+0, 1
	GOTO       L_main146
	DECFSZ     R12+0, 1
	GOTO       L_main146
	DECFSZ     R11+0, 1
	GOTO       L_main146
	NOP
	NOP
L_main145:
;watt control.c,310 :: 		if(butt_b) {rly_2 =~ rly_2; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_main147
	MOVLW
	XORWF      RC5_bit+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main148:
	DECFSZ     R13+0, 1
	GOTO       L_main148
	DECFSZ     R12+0, 1
	GOTO       L_main148
	DECFSZ     R11+0, 1
	GOTO       L_main148
	NOP
	NOP
L_main147:
;watt control.c,311 :: 		if(butt_c) {rly_3 =~ rly_3; delay_ms(500);}
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_main149
	MOVLW
	XORWF      RC6_bit+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main150:
	DECFSZ     R13+0, 1
	GOTO       L_main150
	DECFSZ     R12+0, 1
	GOTO       L_main150
	DECFSZ     R11+0, 1
	GOTO       L_main150
	NOP
	NOP
L_main149:
;watt control.c,312 :: 		if(current_watt > morning_watt) auto_adjust(morning_watt);
	MOVF       _current_watt+0, 0
	SUBWF      _morning_watt+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main151
	MOVF       _morning_watt+0, 0
	MOVWF      FARG_auto_adjust_watt+0
	CALL       _auto_adjust+0
L_main151:
;watt control.c,313 :: 		lcd_out(2,15,"Mo");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr20_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,314 :: 		}
	GOTO       L_main142
L_main143:
;watt control.c,316 :: 		midday_int = dec2int(midday_hh, midday_mm);
	MOVF       _midday_hh+0, 0
	MOVWF      FARG_dec2int_hi+0
	MOVF       _midday_mm+0, 0
	MOVWF      FARG_dec2int_low+0
	CALL       _dec2int+0
	MOVF       R0+0, 0
	MOVWF      _midday_int+0
	MOVF       R0+1, 0
	MOVWF      _midday_int+1
;watt control.c,317 :: 		if(current_int <= midday_int) midday_flag = 1;
	MOVF       _current_int+1, 0
	SUBWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main193
	MOVF       _current_int+0, 0
	SUBWF      R0+0, 0
L__main193:
	BTFSS      STATUS+0, 0
	GOTO       L_main152
	BSF        _midday_flag+0, BitPos(_midday_flag+0)
L_main152:
;watt control.c,319 :: 		while(midday_flag){
L_main153:
	BTFSS      _midday_flag+0, BitPos(_midday_flag+0)
	GOTO       L_main154
;watt control.c,320 :: 		if(current_int > midday_int) midday_flag = 0;
	MOVF       _current_int+1, 0
	SUBWF      _midday_int+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main194
	MOVF       _current_int+0, 0
	SUBWF      _midday_int+0, 0
L__main194:
	BTFSC      STATUS+0, 0
	GOTO       L_main155
	BCF        _midday_flag+0, BitPos(_midday_flag+0)
L_main155:
;watt control.c,321 :: 		default_work();
	CALL       _default_work+0
;watt control.c,323 :: 		if(butt_a) {rly_1 =~ rly_1; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_main156
	MOVLW
	XORWF      RC4_bit+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main157:
	DECFSZ     R13+0, 1
	GOTO       L_main157
	DECFSZ     R12+0, 1
	GOTO       L_main157
	DECFSZ     R11+0, 1
	GOTO       L_main157
	NOP
	NOP
L_main156:
;watt control.c,324 :: 		if(butt_b) {rly_2 =~ rly_2; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_main158
	MOVLW
	XORWF      RC5_bit+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main159:
	DECFSZ     R13+0, 1
	GOTO       L_main159
	DECFSZ     R12+0, 1
	GOTO       L_main159
	DECFSZ     R11+0, 1
	GOTO       L_main159
	NOP
	NOP
L_main158:
;watt control.c,325 :: 		if(butt_c) {rly_3 =~ rly_3; delay_ms(500);}
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_main160
	MOVLW
	XORWF      RC6_bit+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main161:
	DECFSZ     R13+0, 1
	GOTO       L_main161
	DECFSZ     R12+0, 1
	GOTO       L_main161
	DECFSZ     R11+0, 1
	GOTO       L_main161
	NOP
	NOP
L_main160:
;watt control.c,326 :: 		if(current_watt > midday_watt) auto_adjust(midday_watt);
	MOVF       _current_watt+0, 0
	SUBWF      _midday_watt+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main162
	MOVF       _midday_watt+0, 0
	MOVWF      FARG_auto_adjust_watt+0
	CALL       _auto_adjust+0
L_main162:
;watt control.c,327 :: 		lcd_out(2,15,"Md");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr21_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,328 :: 		}
	GOTO       L_main153
L_main154:
;watt control.c,330 :: 		night_int = dec2int(night_hh, night_mm);
	MOVF       _night_hh+0, 0
	MOVWF      FARG_dec2int_hi+0
	MOVF       _night_mm+0, 0
	MOVWF      FARG_dec2int_low+0
	CALL       _dec2int+0
	MOVF       R0+0, 0
	MOVWF      _night_int+0
	MOVF       R0+1, 0
	MOVWF      _night_int+1
;watt control.c,331 :: 		if(current_int <= night_int) night_flag = 1;
	MOVF       _current_int+1, 0
	SUBWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main195
	MOVF       _current_int+0, 0
	SUBWF      R0+0, 0
L__main195:
	BTFSS      STATUS+0, 0
	GOTO       L_main163
	BSF        _night_flag+0, BitPos(_night_flag+0)
L_main163:
;watt control.c,333 :: 		while(night_flag){
L_main164:
	BTFSS      _night_flag+0, BitPos(_night_flag+0)
	GOTO       L_main165
;watt control.c,334 :: 		if(current_int > night_int) night_flag = 0;
	MOVF       _current_int+1, 0
	SUBWF      _night_int+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main196
	MOVF       _current_int+0, 0
	SUBWF      _night_int+0, 0
L__main196:
	BTFSC      STATUS+0, 0
	GOTO       L_main166
	BCF        _night_flag+0, BitPos(_night_flag+0)
L_main166:
;watt control.c,335 :: 		default_work();
	CALL       _default_work+0
;watt control.c,337 :: 		if(butt_a) {rly_1 =~ rly_1; delay_ms(500);}
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_main167
	MOVLW
	XORWF      RC4_bit+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main168:
	DECFSZ     R13+0, 1
	GOTO       L_main168
	DECFSZ     R12+0, 1
	GOTO       L_main168
	DECFSZ     R11+0, 1
	GOTO       L_main168
	NOP
	NOP
L_main167:
;watt control.c,338 :: 		if(butt_b) {rly_2 =~ rly_2; delay_ms(500);}
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_main169
	MOVLW
	XORWF      RC5_bit+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main170:
	DECFSZ     R13+0, 1
	GOTO       L_main170
	DECFSZ     R12+0, 1
	GOTO       L_main170
	DECFSZ     R11+0, 1
	GOTO       L_main170
	NOP
	NOP
L_main169:
;watt control.c,339 :: 		if(butt_c) {rly_3 =~ rly_3; delay_ms(500);}
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_main171
	MOVLW
	XORWF      RC6_bit+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main172:
	DECFSZ     R13+0, 1
	GOTO       L_main172
	DECFSZ     R12+0, 1
	GOTO       L_main172
	DECFSZ     R11+0, 1
	GOTO       L_main172
	NOP
	NOP
L_main171:
;watt control.c,340 :: 		if(current_watt > night_watt) auto_adjust(night_watt);
	MOVF       _current_watt+0, 0
	SUBWF      _night_watt+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main173
	MOVF       _night_watt+0, 0
	MOVWF      FARG_auto_adjust_watt+0
	CALL       _auto_adjust+0
L_main173:
;watt control.c,341 :: 		lcd_out(2,15,"Ni");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr22_watt_32control+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;watt control.c,342 :: 		}
	GOTO       L_main164
L_main165:
;watt control.c,343 :: 		}
	GOTO       L_main139
;watt control.c,344 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
