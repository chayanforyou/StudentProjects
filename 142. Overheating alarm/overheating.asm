
_showdegree:

;overheating.c,31 :: 		void showdegree(char pos_row, char pos_char) {
;overheating.c,33 :: 		Lcd_Cmd(64);
	MOVLW      64
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;overheating.c,34 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
	CLRF       showdegree_i_L0+0
L_showdegree0:
	MOVF       showdegree_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_showdegree1
	MOVF       showdegree_i_L0+0, 0
	ADDLW      _character+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       showdegree_i_L0+0, 1
	GOTO       L_showdegree0
L_showdegree1:
;overheating.c,35 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;overheating.c,36 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF       FARG_showdegree_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_showdegree_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	CLRF       FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;overheating.c,37 :: 		}
L_end_showdegree:
	RETURN
; end of _showdegree

_action:

;overheating.c,40 :: 		void action(char temp){
;overheating.c,41 :: 		if(temp >= 40){
	MOVLW      40
	SUBWF      FARG_action_temp+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_action3
;overheating.c,42 :: 		motor = on;
	BSF        PORTC+0, 5
;overheating.c,43 :: 		buzz = on;
	BSF        PORTC+0, 3
;overheating.c,44 :: 		lcd_out(2,1, msg2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;overheating.c,45 :: 		}
	GOTO       L_action4
L_action3:
;overheating.c,47 :: 		motor = off;
	BCF        PORTC+0, 5
;overheating.c,48 :: 		buzz = off;
	BCF        PORTC+0, 3
;overheating.c,49 :: 		lcd_out(2,1, "                ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_overheating+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;overheating.c,50 :: 		}
L_action4:
;overheating.c,51 :: 		}
L_end_action:
	RETURN
; end of _action

_main:

;overheating.c,53 :: 		void main() {
;overheating.c,54 :: 		lcd_init();
	CALL       _Lcd_Init+0
;overheating.c,55 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;overheating.c,56 :: 		trisc = 0x00; portc = 0x00;
	CLRF       TRISC+0
	CLRF       PORTC+0
;overheating.c,58 :: 		while(1){
L_main5:
;overheating.c,59 :: 		value = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _value+0
;overheating.c,60 :: 		volt =  value * 0.0197;
	CALL       _byte2double+0
	MOVLW      229
	MOVWF      R4+0
	MOVLW      97
	MOVWF      R4+1
	MOVLW      33
	MOVWF      R4+2
	MOVLW      121
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _volt+0
	MOVF       R0+1, 0
	MOVWF      _volt+1
	MOVF       R0+2, 0
	MOVWF      _volt+2
	MOVF       R0+3, 0
	MOVWF      _volt+3
;overheating.c,61 :: 		temp = volt * 100;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2byte+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       FLOC__main+0, 0
	MOVWF      _temp+0
;overheating.c,62 :: 		txt[0] = (temp / 10) + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _txt+0
;overheating.c,63 :: 		txt[1] = (temp % 10) + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _txt+1
;overheating.c,64 :: 		lcd_out(1,1, msg1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;overheating.c,65 :: 		lcd_out(1,7, txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;overheating.c,66 :: 		showdegree(1,9);
	MOVLW      1
	MOVWF      FARG_showdegree_pos_row+0
	MOVLW      9
	MOVWF      FARG_showdegree_pos_char+0
	CALL       _showdegree+0
;overheating.c,67 :: 		lcd_out(1,10, "C");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_overheating+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;overheating.c,68 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;overheating.c,69 :: 		action(temp);
	MOVF       _temp+0, 0
	MOVWF      FARG_action_temp+0
	CALL       _action+0
;overheating.c,70 :: 		}
	GOTO       L_main5
;overheating.c,71 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
