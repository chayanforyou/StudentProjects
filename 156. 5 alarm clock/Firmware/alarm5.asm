
_dec_print_lcd:

;alarm5.c,42 :: 		void dec_print_lcd(char temp, char x, char y){
;alarm5.c,43 :: 		Lcd_Chr(x, y, ((temp / 10)  + 48));
	MOVF       FARG_dec_print_lcd_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_dec_print_lcd_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_dec_print_lcd_temp+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,44 :: 		Lcd_Chr(x, y+1,((temp % 10)  + 48));
	MOVF       FARG_dec_print_lcd_x+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       FARG_dec_print_lcd_y+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_dec_print_lcd_temp+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,45 :: 		}
L_end_dec_print_lcd:
	RETURN
; end of _dec_print_lcd

_show_clock:

;alarm5.c,47 :: 		void show_clock(){
;alarm5.c,48 :: 		task = read_Hours();
	CALL       _read_Hours+0
	MOVF       R0+0, 0
	MOVWF      _task+0
;alarm5.c,49 :: 		current_hh = task;
	MOVF       R0+0, 0
	MOVWF      _current_hh+0
;alarm5.c,50 :: 		dec_print_lcd(task, 1, 5);
	MOVF       R0+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      5
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,51 :: 		Lcd_Chr(1,7,':');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,52 :: 		task = read_Minutes();
	CALL       _read_Minutes+0
	MOVF       R0+0, 0
	MOVWF      _task+0
;alarm5.c,53 :: 		current_mm = task;
	MOVF       R0+0, 0
	MOVWF      _current_mm+0
;alarm5.c,54 :: 		dec_print_lcd(task, 1, 8);
	MOVF       R0+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      8
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,55 :: 		Lcd_Chr(1,10,':');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,56 :: 		task = read_Seconds();
	CALL       _read_Seconds+0
	MOVF       R0+0, 0
	MOVWF      _task+0
;alarm5.c,57 :: 		dec_print_lcd(task, 1, 11);
	MOVF       R0+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      11
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,58 :: 		}
L_end_show_clock:
	RETURN
; end of _show_clock

_alarm_select:

;alarm5.c,60 :: 		void alarm_select(char temp){
;alarm5.c,61 :: 		switch(temp){
	GOTO       L_alarm_select0
;alarm5.c,62 :: 		case 1:
L_alarm_select2:
;alarm5.c,63 :: 		dec_print_lcd(alarm1_hh, 1, 8);
	MOVF       _alarm1_hh+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      8
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,64 :: 		dec_print_lcd(alarm1_mm, 1, 11);
	MOVF       _alarm1_mm+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      11
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,65 :: 		break;
	GOTO       L_alarm_select1
;alarm5.c,66 :: 		case 2:
L_alarm_select3:
;alarm5.c,67 :: 		dec_print_lcd(alarm2_hh, 1, 8);
	MOVF       _alarm2_hh+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      8
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,68 :: 		dec_print_lcd(alarm2_mm, 1, 11);
	MOVF       _alarm2_mm+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      11
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,69 :: 		break;
	GOTO       L_alarm_select1
;alarm5.c,70 :: 		case 3:
L_alarm_select4:
;alarm5.c,71 :: 		dec_print_lcd(alarm3_hh, 1, 8);
	MOVF       _alarm3_hh+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      8
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,72 :: 		dec_print_lcd(alarm3_mm, 1, 11);
	MOVF       _alarm3_mm+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      11
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,73 :: 		break;
	GOTO       L_alarm_select1
;alarm5.c,74 :: 		case 4:
L_alarm_select5:
;alarm5.c,75 :: 		dec_print_lcd(alarm4_hh, 1, 8);
	MOVF       _alarm4_hh+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      8
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,76 :: 		dec_print_lcd(alarm4_mm, 1, 11);
	MOVF       _alarm4_mm+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      11
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,77 :: 		break;
	GOTO       L_alarm_select1
;alarm5.c,78 :: 		case 5:
L_alarm_select6:
;alarm5.c,79 :: 		dec_print_lcd(alarm5_hh, 1, 8);
	MOVF       _alarm5_hh+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      8
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,80 :: 		dec_print_lcd(alarm5_mm, 1, 11);
	MOVF       _alarm5_mm+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      11
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,81 :: 		break;
	GOTO       L_alarm_select1
;alarm5.c,82 :: 		}
L_alarm_select0:
	MOVF       FARG_alarm_select_temp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_alarm_select2
	MOVF       FARG_alarm_select_temp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_alarm_select3
	MOVF       FARG_alarm_select_temp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_alarm_select4
	MOVF       FARG_alarm_select_temp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_alarm_select5
	MOVF       FARG_alarm_select_temp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_alarm_select6
L_alarm_select1:
;alarm5.c,83 :: 		}
L_end_alarm_select:
	RETURN
; end of _alarm_select

_setup_time:

;alarm5.c,85 :: 		void setup_time(){
;alarm5.c,86 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_setup_time7:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time7
	DECFSZ     R12+0, 1
	GOTO       L_setup_time7
	DECFSZ     R11+0, 1
	GOTO       L_setup_time7
	NOP
	NOP
;alarm5.c,87 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;alarm5.c,88 :: 		lcd_out(1,1,"Alarm");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_alarm5+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;alarm5.c,90 :: 		x = 1;
	MOVLW      1
	MOVWF      _x+0
;alarm5.c,91 :: 		lcd_chr(1,6,x+48);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      49
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,92 :: 		Lcd_Chr(1,7,':');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,93 :: 		Lcd_Chr(1,10,':');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,95 :: 		Lcd_Chr(1,8,'H');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      72
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,96 :: 		while(!butt_a){                 //alarm 1 HH
L_setup_time8:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time9
;alarm5.c,97 :: 		if(butt_b) {alarm1_hh++; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time10
	INCF       _alarm1_hh+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time11:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time11
	DECFSZ     R12+0, 1
	GOTO       L_setup_time11
	DECFSZ     R11+0, 1
	GOTO       L_setup_time11
	NOP
	NOP
L_setup_time10:
;alarm5.c,98 :: 		if(alarm1_hh > 23) alarm1_hh = 0;
	MOVF       _alarm1_hh+0, 0
	SUBLW      23
	BTFSC      STATUS+0, 0
	GOTO       L_setup_time12
	CLRF       _alarm1_hh+0
L_setup_time12:
;alarm5.c,99 :: 		alarm_select(x);
	MOVF       _x+0, 0
	MOVWF      FARG_alarm_select_temp+0
	CALL       _alarm_select+0
;alarm5.c,100 :: 		}
	GOTO       L_setup_time8
L_setup_time9:
;alarm5.c,101 :: 		EEPROM_write(0, alarm1_hh);
	CLRF       FARG_EEPROM_Write_Address+0
	MOVF       _alarm1_hh+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,102 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time13:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time13
	DECFSZ     R12+0, 1
	GOTO       L_setup_time13
	DECFSZ     R11+0, 1
	GOTO       L_setup_time13
	NOP
	NOP
;alarm5.c,104 :: 		Lcd_Chr(1,8,'M');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      77
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,105 :: 		while(!butt_a){                 //alarm 1 MM
L_setup_time14:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time15
;alarm5.c,106 :: 		if(butt_b) {alarm1_mm++; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time16
	INCF       _alarm1_mm+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time17:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time17
	DECFSZ     R12+0, 1
	GOTO       L_setup_time17
	DECFSZ     R11+0, 1
	GOTO       L_setup_time17
	NOP
	NOP
L_setup_time16:
;alarm5.c,107 :: 		if(alarm1_mm > 59) alarm1_mm = 0;
	MOVF       _alarm1_mm+0, 0
	SUBLW      59
	BTFSC      STATUS+0, 0
	GOTO       L_setup_time18
	CLRF       _alarm1_mm+0
L_setup_time18:
;alarm5.c,108 :: 		alarm_select(x);
	MOVF       _x+0, 0
	MOVWF      FARG_alarm_select_temp+0
	CALL       _alarm_select+0
;alarm5.c,109 :: 		}
	GOTO       L_setup_time14
L_setup_time15:
;alarm5.c,110 :: 		EEPROM_write(1, alarm1_mm);
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm1_mm+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,111 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time19:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time19
	DECFSZ     R12+0, 1
	GOTO       L_setup_time19
	DECFSZ     R11+0, 1
	GOTO       L_setup_time19
	NOP
	NOP
;alarm5.c,113 :: 		Lcd_Chr(1,8,'S');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      83
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,114 :: 		while(!butt_a){                 //alarm 1 Status
L_setup_time20:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time21
;alarm5.c,115 :: 		if(butt_b) {flag_1 =~ flag_1; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time22
	MOVLW      1
	XORWF      _alarm_flag+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time23:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time23
	DECFSZ     R12+0, 1
	GOTO       L_setup_time23
	DECFSZ     R11+0, 1
	GOTO       L_setup_time23
	NOP
	NOP
L_setup_time22:
;alarm5.c,116 :: 		if(flag_1) Lcd_Chr(1,6,'1');
	BTFSS      _alarm_flag+0, 0
	GOTO       L_setup_time24
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      49
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	GOTO       L_setup_time25
L_setup_time24:
;alarm5.c,117 :: 		else Lcd_Chr(1,6,'0');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_setup_time25:
;alarm5.c,118 :: 		}
	GOTO       L_setup_time20
L_setup_time21:
;alarm5.c,119 :: 		EEPROM_write(11, alarm_flag);
	MOVLW      11
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm_flag+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,120 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time26:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time26
	DECFSZ     R12+0, 1
	GOTO       L_setup_time26
	DECFSZ     R11+0, 1
	GOTO       L_setup_time26
	NOP
	NOP
;alarm5.c,122 :: 		x = 2;
	MOVLW      2
	MOVWF      _x+0
;alarm5.c,123 :: 		lcd_chr(1,6,x+48);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      50
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,125 :: 		Lcd_Chr(1,8,'H');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      72
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,126 :: 		while(!butt_a){                 //alarm 2 HH
L_setup_time27:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time28
;alarm5.c,127 :: 		if(butt_b) {alarm2_hh++; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time29
	INCF       _alarm2_hh+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time30:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time30
	DECFSZ     R12+0, 1
	GOTO       L_setup_time30
	DECFSZ     R11+0, 1
	GOTO       L_setup_time30
	NOP
	NOP
L_setup_time29:
;alarm5.c,128 :: 		if(alarm2_hh > 23) alarm2_hh = 0;
	MOVF       _alarm2_hh+0, 0
	SUBLW      23
	BTFSC      STATUS+0, 0
	GOTO       L_setup_time31
	CLRF       _alarm2_hh+0
L_setup_time31:
;alarm5.c,129 :: 		alarm_select(x);
	MOVF       _x+0, 0
	MOVWF      FARG_alarm_select_temp+0
	CALL       _alarm_select+0
;alarm5.c,130 :: 		}
	GOTO       L_setup_time27
L_setup_time28:
;alarm5.c,131 :: 		EEPROM_write(2, alarm2_hh);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm2_hh+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,132 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time32:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time32
	DECFSZ     R12+0, 1
	GOTO       L_setup_time32
	DECFSZ     R11+0, 1
	GOTO       L_setup_time32
	NOP
	NOP
;alarm5.c,134 :: 		Lcd_Chr(1,8,'M');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      77
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,135 :: 		while(!butt_a){                 //alarm 2 MM
L_setup_time33:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time34
;alarm5.c,136 :: 		if(butt_b) {alarm2_mm++; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time35
	INCF       _alarm2_mm+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time36:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time36
	DECFSZ     R12+0, 1
	GOTO       L_setup_time36
	DECFSZ     R11+0, 1
	GOTO       L_setup_time36
	NOP
	NOP
L_setup_time35:
;alarm5.c,137 :: 		if(alarm2_mm > 59) alarm2_mm = 0;
	MOVF       _alarm2_mm+0, 0
	SUBLW      59
	BTFSC      STATUS+0, 0
	GOTO       L_setup_time37
	CLRF       _alarm2_mm+0
L_setup_time37:
;alarm5.c,138 :: 		alarm_select(x);
	MOVF       _x+0, 0
	MOVWF      FARG_alarm_select_temp+0
	CALL       _alarm_select+0
;alarm5.c,139 :: 		}
	GOTO       L_setup_time33
L_setup_time34:
;alarm5.c,140 :: 		EEPROM_write(3, alarm2_mm);
	MOVLW      3
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm2_mm+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,141 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time38:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time38
	DECFSZ     R12+0, 1
	GOTO       L_setup_time38
	DECFSZ     R11+0, 1
	GOTO       L_setup_time38
	NOP
	NOP
;alarm5.c,143 :: 		Lcd_Chr(1,8,'S');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      83
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,144 :: 		while(!butt_a){                 //alarm 2 Status
L_setup_time39:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time40
;alarm5.c,145 :: 		if(butt_b) {flag_2 =~ flag_2; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time41
	MOVLW      2
	XORWF      _alarm_flag+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time42:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time42
	DECFSZ     R12+0, 1
	GOTO       L_setup_time42
	DECFSZ     R11+0, 1
	GOTO       L_setup_time42
	NOP
	NOP
L_setup_time41:
;alarm5.c,146 :: 		if(flag_2) Lcd_Chr(1,6,'1');
	BTFSS      _alarm_flag+0, 1
	GOTO       L_setup_time43
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      49
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	GOTO       L_setup_time44
L_setup_time43:
;alarm5.c,147 :: 		else Lcd_Chr(1,6,'0');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_setup_time44:
;alarm5.c,148 :: 		}
	GOTO       L_setup_time39
L_setup_time40:
;alarm5.c,149 :: 		EEPROM_write(11, alarm_flag);
	MOVLW      11
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm_flag+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,150 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time45:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time45
	DECFSZ     R12+0, 1
	GOTO       L_setup_time45
	DECFSZ     R11+0, 1
	GOTO       L_setup_time45
	NOP
	NOP
;alarm5.c,152 :: 		x = 3;
	MOVLW      3
	MOVWF      _x+0
;alarm5.c,153 :: 		lcd_chr(1,6,x+48);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      51
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,155 :: 		Lcd_Chr(1,8,'H');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      72
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,156 :: 		while(!butt_a){                 //alarm 3 HH
L_setup_time46:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time47
;alarm5.c,157 :: 		if(butt_b) {alarm3_hh++; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time48
	INCF       _alarm3_hh+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time49:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time49
	DECFSZ     R12+0, 1
	GOTO       L_setup_time49
	DECFSZ     R11+0, 1
	GOTO       L_setup_time49
	NOP
	NOP
L_setup_time48:
;alarm5.c,158 :: 		if(alarm3_hh > 23) alarm3_hh = 0;
	MOVF       _alarm3_hh+0, 0
	SUBLW      23
	BTFSC      STATUS+0, 0
	GOTO       L_setup_time50
	CLRF       _alarm3_hh+0
L_setup_time50:
;alarm5.c,159 :: 		alarm_select(x);
	MOVF       _x+0, 0
	MOVWF      FARG_alarm_select_temp+0
	CALL       _alarm_select+0
;alarm5.c,160 :: 		}
	GOTO       L_setup_time46
L_setup_time47:
;alarm5.c,161 :: 		EEPROM_write(4, alarm3_hh);
	MOVLW      4
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm3_hh+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,162 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time51:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time51
	DECFSZ     R12+0, 1
	GOTO       L_setup_time51
	DECFSZ     R11+0, 1
	GOTO       L_setup_time51
	NOP
	NOP
;alarm5.c,165 :: 		Lcd_Chr(1,8,'M');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      77
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,166 :: 		while(!butt_a){                 //alarm 3 MM
L_setup_time52:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time53
;alarm5.c,167 :: 		if(butt_b) {alarm3_mm++; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time54
	INCF       _alarm3_mm+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time55:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time55
	DECFSZ     R12+0, 1
	GOTO       L_setup_time55
	DECFSZ     R11+0, 1
	GOTO       L_setup_time55
	NOP
	NOP
L_setup_time54:
;alarm5.c,168 :: 		if(alarm3_mm > 59) alarm3_mm = 0;
	MOVF       _alarm3_mm+0, 0
	SUBLW      59
	BTFSC      STATUS+0, 0
	GOTO       L_setup_time56
	CLRF       _alarm3_mm+0
L_setup_time56:
;alarm5.c,169 :: 		alarm_select(x);
	MOVF       _x+0, 0
	MOVWF      FARG_alarm_select_temp+0
	CALL       _alarm_select+0
;alarm5.c,170 :: 		}
	GOTO       L_setup_time52
L_setup_time53:
;alarm5.c,171 :: 		EEPROM_write(5, alarm3_mm);
	MOVLW      5
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm3_mm+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,172 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time57:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time57
	DECFSZ     R12+0, 1
	GOTO       L_setup_time57
	DECFSZ     R11+0, 1
	GOTO       L_setup_time57
	NOP
	NOP
;alarm5.c,174 :: 		Lcd_Chr(1,8,'S');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      83
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,175 :: 		while(!butt_a){                 //alarm 3 Status
L_setup_time58:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time59
;alarm5.c,176 :: 		if(butt_b) {flag_3 =~ flag_3; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time60
	MOVLW      4
	XORWF      _alarm_flag+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time61:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time61
	DECFSZ     R12+0, 1
	GOTO       L_setup_time61
	DECFSZ     R11+0, 1
	GOTO       L_setup_time61
	NOP
	NOP
L_setup_time60:
;alarm5.c,177 :: 		if(flag_3) Lcd_Chr(1,6,'1');
	BTFSS      _alarm_flag+0, 2
	GOTO       L_setup_time62
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      49
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	GOTO       L_setup_time63
L_setup_time62:
;alarm5.c,178 :: 		else Lcd_Chr(1,6,'0');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_setup_time63:
;alarm5.c,179 :: 		}
	GOTO       L_setup_time58
L_setup_time59:
;alarm5.c,180 :: 		EEPROM_write(11, alarm_flag);
	MOVLW      11
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm_flag+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,181 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time64:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time64
	DECFSZ     R12+0, 1
	GOTO       L_setup_time64
	DECFSZ     R11+0, 1
	GOTO       L_setup_time64
	NOP
	NOP
;alarm5.c,183 :: 		x = 4;
	MOVLW      4
	MOVWF      _x+0
;alarm5.c,184 :: 		lcd_chr(1,6,x+48);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      52
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,186 :: 		Lcd_Chr(1,8,'H');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      72
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,187 :: 		while(!butt_a){                 //alarm 4 HH
L_setup_time65:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time66
;alarm5.c,188 :: 		if(butt_b) {alarm4_hh++; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time67
	INCF       _alarm4_hh+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time68:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time68
	DECFSZ     R12+0, 1
	GOTO       L_setup_time68
	DECFSZ     R11+0, 1
	GOTO       L_setup_time68
	NOP
	NOP
L_setup_time67:
;alarm5.c,189 :: 		if(alarm4_hh > 23) alarm4_hh = 0;
	MOVF       _alarm4_hh+0, 0
	SUBLW      23
	BTFSC      STATUS+0, 0
	GOTO       L_setup_time69
	CLRF       _alarm4_hh+0
L_setup_time69:
;alarm5.c,190 :: 		alarm_select(x);
	MOVF       _x+0, 0
	MOVWF      FARG_alarm_select_temp+0
	CALL       _alarm_select+0
;alarm5.c,191 :: 		}
	GOTO       L_setup_time65
L_setup_time66:
;alarm5.c,192 :: 		EEPROM_write(6, alarm4_hh);
	MOVLW      6
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm4_hh+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,193 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time70:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time70
	DECFSZ     R12+0, 1
	GOTO       L_setup_time70
	DECFSZ     R11+0, 1
	GOTO       L_setup_time70
	NOP
	NOP
;alarm5.c,195 :: 		Lcd_Chr(1,8,'M');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      77
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,196 :: 		while(!butt_a){                 //alarm 4 MM
L_setup_time71:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time72
;alarm5.c,197 :: 		if(butt_b) {alarm4_mm++; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time73
	INCF       _alarm4_mm+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time74:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time74
	DECFSZ     R12+0, 1
	GOTO       L_setup_time74
	DECFSZ     R11+0, 1
	GOTO       L_setup_time74
	NOP
	NOP
L_setup_time73:
;alarm5.c,198 :: 		if(alarm4_mm > 59) alarm4_mm = 0;
	MOVF       _alarm4_mm+0, 0
	SUBLW      59
	BTFSC      STATUS+0, 0
	GOTO       L_setup_time75
	CLRF       _alarm4_mm+0
L_setup_time75:
;alarm5.c,199 :: 		alarm_select(x);
	MOVF       _x+0, 0
	MOVWF      FARG_alarm_select_temp+0
	CALL       _alarm_select+0
;alarm5.c,200 :: 		}
	GOTO       L_setup_time71
L_setup_time72:
;alarm5.c,201 :: 		EEPROM_write(7, alarm4_mm);
	MOVLW      7
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm4_mm+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,202 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time76:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time76
	DECFSZ     R12+0, 1
	GOTO       L_setup_time76
	DECFSZ     R11+0, 1
	GOTO       L_setup_time76
	NOP
	NOP
;alarm5.c,204 :: 		Lcd_Chr(1,8,'S');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      83
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,205 :: 		while(!butt_a){                 //alarm 4 Status
L_setup_time77:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time78
;alarm5.c,206 :: 		if(butt_b) {flag_4 =~ flag_4; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time79
	MOVLW      8
	XORWF      _alarm_flag+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time80:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time80
	DECFSZ     R12+0, 1
	GOTO       L_setup_time80
	DECFSZ     R11+0, 1
	GOTO       L_setup_time80
	NOP
	NOP
L_setup_time79:
;alarm5.c,207 :: 		if(flag_4) Lcd_Chr(1,6,'1');
	BTFSS      _alarm_flag+0, 3
	GOTO       L_setup_time81
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      49
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	GOTO       L_setup_time82
L_setup_time81:
;alarm5.c,208 :: 		else Lcd_Chr(1,6,'0');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_setup_time82:
;alarm5.c,209 :: 		}
	GOTO       L_setup_time77
L_setup_time78:
;alarm5.c,210 :: 		EEPROM_write(11, alarm_flag);
	MOVLW      11
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm_flag+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,211 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time83:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time83
	DECFSZ     R12+0, 1
	GOTO       L_setup_time83
	DECFSZ     R11+0, 1
	GOTO       L_setup_time83
	NOP
	NOP
;alarm5.c,213 :: 		x = 5;
	MOVLW      5
	MOVWF      _x+0
;alarm5.c,214 :: 		lcd_chr(1,6,x+48);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      53
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,216 :: 		Lcd_Chr(1,8,'H');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      72
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,217 :: 		while(!butt_a){                 //alarm 5 HH
L_setup_time84:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time85
;alarm5.c,218 :: 		if(butt_b) {alarm5_hh++; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time86
	INCF       _alarm5_hh+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time87:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time87
	DECFSZ     R12+0, 1
	GOTO       L_setup_time87
	DECFSZ     R11+0, 1
	GOTO       L_setup_time87
	NOP
	NOP
L_setup_time86:
;alarm5.c,219 :: 		if(alarm5_hh > 23) alarm5_hh = 0;
	MOVF       _alarm5_hh+0, 0
	SUBLW      23
	BTFSC      STATUS+0, 0
	GOTO       L_setup_time88
	CLRF       _alarm5_hh+0
L_setup_time88:
;alarm5.c,220 :: 		alarm_select(x);
	MOVF       _x+0, 0
	MOVWF      FARG_alarm_select_temp+0
	CALL       _alarm_select+0
;alarm5.c,221 :: 		}
	GOTO       L_setup_time84
L_setup_time85:
;alarm5.c,222 :: 		EEPROM_write(8, alarm5_hh);
	MOVLW      8
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm5_hh+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,223 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time89:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time89
	DECFSZ     R12+0, 1
	GOTO       L_setup_time89
	DECFSZ     R11+0, 1
	GOTO       L_setup_time89
	NOP
	NOP
;alarm5.c,225 :: 		Lcd_Chr(1,8,'M');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      77
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,226 :: 		while(!butt_a){                 //alarm 5 MM
L_setup_time90:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time91
;alarm5.c,227 :: 		if(butt_b) {alarm5_mm++; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time92
	INCF       _alarm5_mm+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time93:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time93
	DECFSZ     R12+0, 1
	GOTO       L_setup_time93
	DECFSZ     R11+0, 1
	GOTO       L_setup_time93
	NOP
	NOP
L_setup_time92:
;alarm5.c,228 :: 		if(alarm5_mm > 59) alarm5_mm = 0;
	MOVF       _alarm5_mm+0, 0
	SUBLW      59
	BTFSC      STATUS+0, 0
	GOTO       L_setup_time94
	CLRF       _alarm5_mm+0
L_setup_time94:
;alarm5.c,229 :: 		alarm_select(x);
	MOVF       _x+0, 0
	MOVWF      FARG_alarm_select_temp+0
	CALL       _alarm_select+0
;alarm5.c,230 :: 		}
	GOTO       L_setup_time90
L_setup_time91:
;alarm5.c,231 :: 		EEPROM_write(9, alarm5_mm);
	MOVLW      9
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm5_mm+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,232 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time95:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time95
	DECFSZ     R12+0, 1
	GOTO       L_setup_time95
	DECFSZ     R11+0, 1
	GOTO       L_setup_time95
	NOP
	NOP
;alarm5.c,234 :: 		Lcd_Chr(1,8,'S');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      83
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;alarm5.c,235 :: 		while(!butt_a){                 //alarm 5 Status
L_setup_time96:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time97
;alarm5.c,236 :: 		if(butt_b) {flag_5 =~ flag_5; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time98
	MOVLW      16
	XORWF      _alarm_flag+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time99:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time99
	DECFSZ     R12+0, 1
	GOTO       L_setup_time99
	DECFSZ     R11+0, 1
	GOTO       L_setup_time99
	NOP
	NOP
L_setup_time98:
;alarm5.c,237 :: 		if(flag_5) Lcd_Chr(1,6,'1');
	BTFSS      _alarm_flag+0, 4
	GOTO       L_setup_time100
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      49
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	GOTO       L_setup_time101
L_setup_time100:
;alarm5.c,238 :: 		else Lcd_Chr(1,6,'0');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_setup_time101:
;alarm5.c,239 :: 		}
	GOTO       L_setup_time96
L_setup_time97:
;alarm5.c,240 :: 		EEPROM_write(11, alarm_flag);
	MOVLW      11
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _alarm_flag+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,241 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time102:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time102
	DECFSZ     R12+0, 1
	GOTO       L_setup_time102
	DECFSZ     R11+0, 1
	GOTO       L_setup_time102
	NOP
	NOP
;alarm5.c,243 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;alarm5.c,244 :: 		Lcd_out(1,1,"Delay: ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_alarm5+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;alarm5.c,245 :: 		while(!butt_a){                 //alarm delay in second
L_setup_time103:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup_time104
;alarm5.c,246 :: 		if(butt_b) {delay++; delay_ms(500);}
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup_time105
	INCF       _delay+0, 1
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time106:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time106
	DECFSZ     R12+0, 1
	GOTO       L_setup_time106
	DECFSZ     R11+0, 1
	GOTO       L_setup_time106
	NOP
	NOP
L_setup_time105:
;alarm5.c,247 :: 		if(delay > 99) delay = 0;
	MOVF       _delay+0, 0
	SUBLW      99
	BTFSC      STATUS+0, 0
	GOTO       L_setup_time107
	CLRF       _delay+0
L_setup_time107:
;alarm5.c,248 :: 		dec_print_lcd(delay, 1, 8);
	MOVF       _delay+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      8
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,249 :: 		}
	GOTO       L_setup_time103
L_setup_time104:
;alarm5.c,250 :: 		EEPROM_write(10, delay);
	MOVLW      10
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _delay+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;alarm5.c,251 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_setup_time108:
	DECFSZ     R13+0, 1
	GOTO       L_setup_time108
	DECFSZ     R12+0, 1
	GOTO       L_setup_time108
	DECFSZ     R11+0, 1
	GOTO       L_setup_time108
	NOP
	NOP
;alarm5.c,252 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;alarm5.c,253 :: 		}
L_end_setup_time:
	RETURN
; end of _setup_time

_alarming:

;alarm5.c,255 :: 		void alarming(){
;alarm5.c,256 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;alarm5.c,257 :: 		Lcd_out(1,1,"Alarming...");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_alarm5+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;alarm5.c,259 :: 		for(x = delay; x >= 0; x--){
	MOVF       _delay+0, 0
	MOVWF      _x+0
L_alarming109:
	MOVLW      0
	SUBWF      _x+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_alarming110
;alarm5.c,260 :: 		output = 1;
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
;alarm5.c,261 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_alarming112:
	DECFSZ     R13+0, 1
	GOTO       L_alarming112
	DECFSZ     R12+0, 1
	GOTO       L_alarming112
	DECFSZ     R11+0, 1
	GOTO       L_alarming112
	NOP
	NOP
;alarm5.c,262 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_alarming113:
	DECFSZ     R13+0, 1
	GOTO       L_alarming113
	DECFSZ     R12+0, 1
	GOTO       L_alarming113
	DECFSZ     R11+0, 1
	GOTO       L_alarming113
	NOP
	NOP
;alarm5.c,263 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_alarming114:
	DECFSZ     R13+0, 1
	GOTO       L_alarming114
	DECFSZ     R12+0, 1
	GOTO       L_alarming114
	DECFSZ     R11+0, 1
	GOTO       L_alarming114
	NOP
	NOP
;alarm5.c,264 :: 		dec_print_lcd(x, 1, 12);
	MOVF       _x+0, 0
	MOVWF      FARG_dec_print_lcd_temp+0
	MOVLW      1
	MOVWF      FARG_dec_print_lcd_x+0
	MOVLW      12
	MOVWF      FARG_dec_print_lcd_y+0
	CALL       _dec_print_lcd+0
;alarm5.c,265 :: 		if(x == 0) break;
	MOVF       _x+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_alarming115
	GOTO       L_alarming110
L_alarming115:
;alarm5.c,259 :: 		for(x = delay; x >= 0; x--){
	DECF       _x+0, 1
;alarm5.c,266 :: 		}
	GOTO       L_alarming109
L_alarming110:
;alarm5.c,267 :: 		output = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;alarm5.c,269 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_alarming116:
	DECFSZ     R13+0, 1
	GOTO       L_alarming116
	DECFSZ     R12+0, 1
	GOTO       L_alarming116
	DECFSZ     R11+0, 1
	GOTO       L_alarming116
	NOP
;alarm5.c,270 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;alarm5.c,271 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;alarm5.c,272 :: 		Lcd_out(1,1,"Pls Wait 1min...");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_alarm5+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;alarm5.c,274 :: 		for(x = 0; x < 60; x++){
	CLRF       _x+0
L_alarming117:
	MOVLW      60
	SUBWF      _x+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_alarming118
;alarm5.c,275 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_alarming120:
	DECFSZ     R13+0, 1
	GOTO       L_alarming120
	DECFSZ     R12+0, 1
	GOTO       L_alarming120
	DECFSZ     R11+0, 1
	GOTO       L_alarming120
	NOP
	NOP
;alarm5.c,276 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_alarming121:
	DECFSZ     R13+0, 1
	GOTO       L_alarming121
	DECFSZ     R12+0, 1
	GOTO       L_alarming121
	DECFSZ     R11+0, 1
	GOTO       L_alarming121
	NOP
	NOP
;alarm5.c,274 :: 		for(x = 0; x < 60; x++){
	INCF       _x+0, 1
;alarm5.c,277 :: 		}
	GOTO       L_alarming117
L_alarming118:
;alarm5.c,278 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;alarm5.c,279 :: 		}
L_end_alarming:
	RETURN
; end of _alarming

_dec2int:

;alarm5.c,281 :: 		int dec2int(char hi, char low){
;alarm5.c,282 :: 		return (hi * 100) + low;
	MOVF       FARG_dec2int_hi+0, 0
	MOVWF      R0+0
	MOVLW      100
	MOVWF      R4+0
	CALL       _Mul_8X8_U+0
	MOVF       FARG_dec2int_low+0, 0
	ADDWF      R0+0, 1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
;alarm5.c,283 :: 		}
L_end_dec2int:
	RETURN
; end of _dec2int

_main:

;alarm5.c,285 :: 		void main(){
;alarm5.c,286 :: 		ADCON1 = 7;
	MOVLW      7
	MOVWF      ADCON1+0
;alarm5.c,288 :: 		trisB0_bit = 1;
	BSF        TRISB0_bit+0, BitPos(TRISB0_bit+0)
;alarm5.c,289 :: 		trisB1_bit = 1;
	BSF        TRISB1_bit+0, BitPos(TRISB1_bit+0)
;alarm5.c,290 :: 		trisC3_bit = 0;
	BCF        TRISC3_bit+0, BitPos(TRISC3_bit+0)
;alarm5.c,292 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;alarm5.c,293 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;alarm5.c,294 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;alarm5.c,295 :: 		DS1302_Init();
	CALL       _DS1302_Init+0
;alarm5.c,296 :: 		output = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;alarm5.c,300 :: 		alarm1_hh = EEPROM_read(0);
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _alarm1_hh+0
;alarm5.c,301 :: 		alarm1_mm = EEPROM_read(1);
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _alarm1_mm+0
;alarm5.c,302 :: 		alarm2_hh = EEPROM_read(2);
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _alarm2_hh+0
;alarm5.c,303 :: 		alarm2_mm = EEPROM_read(3);
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _alarm2_mm+0
;alarm5.c,304 :: 		alarm3_hh = EEPROM_read(4);
	MOVLW      4
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _alarm3_hh+0
;alarm5.c,305 :: 		alarm3_mm = EEPROM_read(5);
	MOVLW      5
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _alarm3_mm+0
;alarm5.c,306 :: 		alarm4_hh = EEPROM_read(6);
	MOVLW      6
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _alarm4_hh+0
;alarm5.c,307 :: 		alarm4_mm = EEPROM_read(7);
	MOVLW      7
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _alarm4_mm+0
;alarm5.c,308 :: 		alarm5_hh = EEPROM_read(8);
	MOVLW      8
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _alarm5_hh+0
;alarm5.c,309 :: 		alarm5_mm = EEPROM_read(9);
	MOVLW      9
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _alarm5_mm+0
;alarm5.c,310 :: 		delay = EEPROM_read(10);
	MOVLW      10
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _delay+0
;alarm5.c,311 :: 		alarm_flag = EEPROM_read(11);
	MOVLW      11
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _alarm_flag+0
;alarm5.c,313 :: 		while(1){
L_main122:
;alarm5.c,314 :: 		show_clock();
	CALL       _show_clock+0
;alarm5.c,315 :: 		if(butt_a) setup_time();
	BTFSS      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_main124
	CALL       _setup_time+0
L_main124:
;alarm5.c,317 :: 		current_int = dec2int(current_hh, current_mm);
	MOVF       _current_hh+0, 0
	MOVWF      FARG_dec2int_hi+0
	MOVF       _current_mm+0, 0
	MOVWF      FARG_dec2int_low+0
	CALL       _dec2int+0
	MOVF       R0+0, 0
	MOVWF      _current_int+0
	MOVF       R0+1, 0
	MOVWF      _current_int+1
;alarm5.c,318 :: 		alarm1_int = dec2int(alarm1_hh, alarm1_mm);
	MOVF       _alarm1_hh+0, 0
	MOVWF      FARG_dec2int_hi+0
	MOVF       _alarm1_mm+0, 0
	MOVWF      FARG_dec2int_low+0
	CALL       _dec2int+0
	MOVF       R0+0, 0
	MOVWF      _alarm1_int+0
	MOVF       R0+1, 0
	MOVWF      _alarm1_int+1
;alarm5.c,319 :: 		alarm2_int = dec2int(alarm2_hh, alarm2_mm);
	MOVF       _alarm2_hh+0, 0
	MOVWF      FARG_dec2int_hi+0
	MOVF       _alarm2_mm+0, 0
	MOVWF      FARG_dec2int_low+0
	CALL       _dec2int+0
	MOVF       R0+0, 0
	MOVWF      _alarm2_int+0
	MOVF       R0+1, 0
	MOVWF      _alarm2_int+1
;alarm5.c,320 :: 		alarm3_int = dec2int(alarm3_hh, alarm3_mm);
	MOVF       _alarm3_hh+0, 0
	MOVWF      FARG_dec2int_hi+0
	MOVF       _alarm3_mm+0, 0
	MOVWF      FARG_dec2int_low+0
	CALL       _dec2int+0
	MOVF       R0+0, 0
	MOVWF      _alarm3_int+0
	MOVF       R0+1, 0
	MOVWF      _alarm3_int+1
;alarm5.c,321 :: 		alarm4_int = dec2int(alarm4_hh, alarm4_mm);
	MOVF       _alarm4_hh+0, 0
	MOVWF      FARG_dec2int_hi+0
	MOVF       _alarm4_mm+0, 0
	MOVWF      FARG_dec2int_low+0
	CALL       _dec2int+0
	MOVF       R0+0, 0
	MOVWF      _alarm4_int+0
	MOVF       R0+1, 0
	MOVWF      _alarm4_int+1
;alarm5.c,322 :: 		alarm5_int = dec2int(alarm5_hh, alarm5_mm);
	MOVF       _alarm5_hh+0, 0
	MOVWF      FARG_dec2int_hi+0
	MOVF       _alarm5_mm+0, 0
	MOVWF      FARG_dec2int_low+0
	CALL       _dec2int+0
	MOVF       R0+0, 0
	MOVWF      _alarm5_int+0
	MOVF       R0+1, 0
	MOVWF      _alarm5_int+1
;alarm5.c,324 :: 		if(flag_1) if(current_int == alarm1_int) alarming();
	BTFSS      _alarm_flag+0, 0
	GOTO       L_main125
	MOVF       _current_int+1, 0
	XORWF      _alarm1_int+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main142
	MOVF       _alarm1_int+0, 0
	XORWF      _current_int+0, 0
L__main142:
	BTFSS      STATUS+0, 2
	GOTO       L_main126
	CALL       _alarming+0
L_main126:
L_main125:
;alarm5.c,325 :: 		if(flag_2) if(current_int == alarm2_int) alarming();
	BTFSS      _alarm_flag+0, 1
	GOTO       L_main127
	MOVF       _current_int+1, 0
	XORWF      _alarm2_int+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main143
	MOVF       _alarm2_int+0, 0
	XORWF      _current_int+0, 0
L__main143:
	BTFSS      STATUS+0, 2
	GOTO       L_main128
	CALL       _alarming+0
L_main128:
L_main127:
;alarm5.c,326 :: 		if(flag_3) if(current_int == alarm3_int) alarming();
	BTFSS      _alarm_flag+0, 2
	GOTO       L_main129
	MOVF       _current_int+1, 0
	XORWF      _alarm3_int+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main144
	MOVF       _alarm3_int+0, 0
	XORWF      _current_int+0, 0
L__main144:
	BTFSS      STATUS+0, 2
	GOTO       L_main130
	CALL       _alarming+0
L_main130:
L_main129:
;alarm5.c,327 :: 		if(flag_4) if(current_int == alarm4_int) alarming();
	BTFSS      _alarm_flag+0, 3
	GOTO       L_main131
	MOVF       _current_int+1, 0
	XORWF      _alarm4_int+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main145
	MOVF       _alarm4_int+0, 0
	XORWF      _current_int+0, 0
L__main145:
	BTFSS      STATUS+0, 2
	GOTO       L_main132
	CALL       _alarming+0
L_main132:
L_main131:
;alarm5.c,328 :: 		if(flag_5) if(current_int == alarm5_int) alarming();
	BTFSS      _alarm_flag+0, 4
	GOTO       L_main133
	MOVF       _current_int+1, 0
	XORWF      _alarm5_int+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main146
	MOVF       _alarm5_int+0, 0
	XORWF      _current_int+0, 0
L__main146:
	BTFSS      STATUS+0, 2
	GOTO       L_main134
	CALL       _alarming+0
L_main134:
L_main133:
;alarm5.c,329 :: 		}
	GOTO       L_main122
;alarm5.c,330 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
