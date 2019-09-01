
_DTMF_read:

;define.h,30 :: 		char DTMF_read(){
;define.h,31 :: 		char out = 0;
	CLRF       DTMF_read_out_L0+0
;define.h,32 :: 		if(dtmf_std){
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_DTMF_read0
;define.h,33 :: 		out.b0 = dtmf_q1;
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L__DTMF_read17
	BCF        DTMF_read_out_L0+0, 0
	GOTO       L__DTMF_read18
L__DTMF_read17:
	BSF        DTMF_read_out_L0+0, 0
L__DTMF_read18:
;define.h,34 :: 		out.b1 = dtmf_q2;
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L__DTMF_read19
	BCF        DTMF_read_out_L0+0, 1
	GOTO       L__DTMF_read20
L__DTMF_read19:
	BSF        DTMF_read_out_L0+0, 1
L__DTMF_read20:
;define.h,35 :: 		out.b2 = dtmf_q3;
	BTFSC      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L__DTMF_read21
	BCF        DTMF_read_out_L0+0, 2
	GOTO       L__DTMF_read22
L__DTMF_read21:
	BSF        DTMF_read_out_L0+0, 2
L__DTMF_read22:
;define.h,36 :: 		out.b3 = dtmf_q4;
	BTFSC      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L__DTMF_read23
	BCF        DTMF_read_out_L0+0, 3
	GOTO       L__DTMF_read24
L__DTMF_read23:
	BSF        DTMF_read_out_L0+0, 3
L__DTMF_read24:
;define.h,37 :: 		}
L_DTMF_read0:
;define.h,38 :: 		return out;
	MOVF       DTMF_read_out_L0+0, 0
	MOVWF      R0+0
;define.h,39 :: 		}
L_end_DTMF_read:
	RETURN
; end of _DTMF_read

_stop_car:

;DTMFcar.c,13 :: 		void stop_car(){
;DTMFcar.c,14 :: 		lcd_out(1,1, not_move);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _not_move+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,15 :: 		motor1_a = 0; motor1_b = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,16 :: 		motor2_a = 0; motor2_b = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,17 :: 		}
L_end_stop_car:
	RETURN
; end of _stop_car

_moving_txt:

;DTMFcar.c,19 :: 		void moving_txt() {lcd_out(1,1, move);}
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _move+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_end_moving_txt:
	RETURN
; end of _moving_txt

_move_car:

;DTMFcar.c,21 :: 		void move_car(){
;DTMFcar.c,22 :: 		char DTMF = DTMF_read();
	CALL       _DTMF_read+0
	MOVF       R0+0, 0
	MOVWF      move_car_DTMF_L0+0
;DTMFcar.c,23 :: 		lcd_out(2,1, dtmf_str);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _dtmf_str+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,24 :: 		lcd_chr(2,14, DTMF + 48);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      48
	ADDWF      move_car_DTMF_L0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;DTMFcar.c,26 :: 		switch(DTMF){
	GOTO       L_move_car1
;DTMFcar.c,28 :: 		case 2:                         //forward
L_move_car3:
;DTMFcar.c,29 :: 		if(IR_f){
	BTFSS      RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_move_car4
;DTMFcar.c,30 :: 		moving_txt();
	CALL       _moving_txt+0
;DTMFcar.c,31 :: 		lcd_out(1,8, up);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _up+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,32 :: 		motor1_a = 1; motor1_b = 0;
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,33 :: 		motor2_a = 1; motor2_b = 0;
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,34 :: 		}
	GOTO       L_move_car5
L_move_car4:
;DTMFcar.c,35 :: 		else stop_car();
	CALL       _stop_car+0
L_move_car5:
;DTMFcar.c,36 :: 		break;
	GOTO       L_move_car2
;DTMFcar.c,37 :: 		case 8:                         //backward
L_move_car6:
;DTMFcar.c,38 :: 		if(IR_b){
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_move_car7
;DTMFcar.c,39 :: 		moving_txt();
	CALL       _moving_txt+0
;DTMFcar.c,40 :: 		lcd_out(1,8, down);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _down+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,41 :: 		motor1_a = 0; motor1_b = 1;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,42 :: 		motor2_a = 0; motor2_b = 1;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,43 :: 		}
	GOTO       L_move_car8
L_move_car7:
;DTMFcar.c,44 :: 		else stop_car();
	CALL       _stop_car+0
L_move_car8:
;DTMFcar.c,45 :: 		break;
	GOTO       L_move_car2
;DTMFcar.c,46 :: 		case 4:                         //for-left
L_move_car9:
;DTMFcar.c,47 :: 		moving_txt();
	CALL       _moving_txt+0
;DTMFcar.c,48 :: 		lcd_out(1,8, fleft);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _fleft+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,49 :: 		motor1_a = 0; motor1_b = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,50 :: 		motor2_a = 1; motor2_b = 0;
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,51 :: 		break;
	GOTO       L_move_car2
;DTMFcar.c,52 :: 		case 6:                         //for-right
L_move_car10:
;DTMFcar.c,53 :: 		moving_txt();
	CALL       _moving_txt+0
;DTMFcar.c,54 :: 		lcd_out(1,8, fright);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _fright+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,55 :: 		motor1_a = 1; motor1_b = 0;
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,56 :: 		motor2_a = 0; motor2_b = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,57 :: 		break;
	GOTO       L_move_car2
;DTMFcar.c,58 :: 		case 7:                         //Back-left
L_move_car11:
;DTMFcar.c,59 :: 		moving_txt();
	CALL       _moving_txt+0
;DTMFcar.c,60 :: 		lcd_out(1,8, bleft);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _bleft+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,61 :: 		motor1_a = 0; motor1_b = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,62 :: 		motor2_a = 0; motor2_b = 1;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,63 :: 		break;
	GOTO       L_move_car2
;DTMFcar.c,64 :: 		case 9:                         //back-right
L_move_car12:
;DTMFcar.c,65 :: 		moving_txt();
	CALL       _moving_txt+0
;DTMFcar.c,66 :: 		lcd_out(1,8, bright);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _bright+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;DTMFcar.c,67 :: 		motor1_a = 0; motor1_b = 1;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
;DTMFcar.c,68 :: 		motor2_a = 0; motor2_b = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;DTMFcar.c,69 :: 		break;
	GOTO       L_move_car2
;DTMFcar.c,71 :: 		default:
L_move_car13:
;DTMFcar.c,72 :: 		stop_car();
	CALL       _stop_car+0
;DTMFcar.c,73 :: 		}
	GOTO       L_move_car2
L_move_car1:
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_move_car3
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_move_car6
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_move_car9
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_move_car10
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_move_car11
	MOVF       move_car_DTMF_L0+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_move_car12
	GOTO       L_move_car13
L_move_car2:
;DTMFcar.c,75 :: 		}
L_end_move_car:
	RETURN
; end of _move_car

_main:

;DTMFcar.c,77 :: 		void main() {
;DTMFcar.c,78 :: 		lcd_init();
	CALL       _Lcd_Init+0
;DTMFcar.c,79 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;DTMFcar.c,80 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;DTMFcar.c,81 :: 		ADCON1 = 7;
	MOVLW      7
	MOVWF      ADCON1+0
;DTMFcar.c,82 :: 		TRISA = 0b11111111;
	MOVLW      255
	MOVWF      TRISA+0
;DTMFcar.c,83 :: 		TRISC = 0b01110000;
	MOVLW      112
	MOVWF      TRISC+0
;DTMFcar.c,84 :: 		TRISC7_bit = 1;
	BSF        TRISC7_bit+0, BitPos(TRISC7_bit+0)
;DTMFcar.c,85 :: 		PORTC = 0;
	CLRF       PORTC+0
;DTMFcar.c,87 :: 		while(1){
L_main14:
;DTMFcar.c,88 :: 		move_car();
	CALL       _move_car+0
;DTMFcar.c,89 :: 		}
	GOTO       L_main14
;DTMFcar.c,90 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
