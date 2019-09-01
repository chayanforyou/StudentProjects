
_send_data:

;simu.c,18 :: 		void send_data(int adrs){
;simu.c,21 :: 		temp = Character[adrs];
	MOVF       FARG_send_data_adrs+0, 0
	ADDLW      _Character+0
	MOVWF      R0+0
	MOVLW      hi_addr(_Character+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      FARG_send_data_adrs+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      R1+0
;simu.c,22 :: 		dta = temp << 4;
	MOVLW      4
	MOVWF      R0+0
	MOVF       R1+0, 0
	MOVWF      R3+0
	CLRF       R3+1
	MOVF       R0+0, 0
L__send_data54:
	BTFSC      STATUS+0, 2
	GOTO       L__send_data55
	RLF        R3+0, 1
	RLF        R3+1, 1
	BCF        R3+0, 0
	ADDLW      255
	GOTO       L__send_data54
L__send_data55:
;simu.c,23 :: 		row1 = dta;
	MOVF       R3+0, 0
	MOVWF      PORTB+0
;simu.c,24 :: 		row2 = dta >> 8;
	MOVF       R3+1, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSC      R3+1, 7
	MOVLW      255
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;simu.c,25 :: 		}
L_end_send_data:
	RETURN
; end of _send_data

_show_text:

;simu.c,27 :: 		void show_text(char l, char *txt){
;simu.c,28 :: 		short x = 0, y = 0, col;
	CLRF       show_text_x_L0+0
	CLRF       show_text_y_L0+0
;simu.c,30 :: 		ds = 0; sh = 1; sh = 0; st = 1; st = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;simu.c,31 :: 		for(col = 0; col <= 64; col++){
	CLRF       show_text_col_L0+0
L_show_text0:
	MOVLW      128
	XORLW      64
	MOVWF      R0+0
	MOVLW      128
	XORWF      show_text_col_L0+0, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_show_text1
;simu.c,32 :: 		if(col == 0) {x = 0; y = 0;}
	MOVF       show_text_col_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_text3
	CLRF       show_text_x_L0+0
	CLRF       show_text_y_L0+0
	GOTO       L_show_text4
L_show_text3:
;simu.c,33 :: 		else if(col == 8) {x = 1; y = 0;}
	MOVF       show_text_col_L0+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L_show_text5
	MOVLW      1
	MOVWF      show_text_x_L0+0
	CLRF       show_text_y_L0+0
	GOTO       L_show_text6
L_show_text5:
;simu.c,34 :: 		else if(col == 16) {x = 2; y = 0;}
	MOVF       show_text_col_L0+0, 0
	XORLW      16
	BTFSS      STATUS+0, 2
	GOTO       L_show_text7
	MOVLW      2
	MOVWF      show_text_x_L0+0
	CLRF       show_text_y_L0+0
	GOTO       L_show_text8
L_show_text7:
;simu.c,35 :: 		else if(col == 24) {x = 3; y = 0;}
	MOVF       show_text_col_L0+0, 0
	XORLW      24
	BTFSS      STATUS+0, 2
	GOTO       L_show_text9
	MOVLW      3
	MOVWF      show_text_x_L0+0
	CLRF       show_text_y_L0+0
	GOTO       L_show_text10
L_show_text9:
;simu.c,36 :: 		else if(col == 32) {x = 4; y = 0;}
	MOVF       show_text_col_L0+0, 0
	XORLW      32
	BTFSS      STATUS+0, 2
	GOTO       L_show_text11
	MOVLW      4
	MOVWF      show_text_x_L0+0
	CLRF       show_text_y_L0+0
	GOTO       L_show_text12
L_show_text11:
;simu.c,37 :: 		else if(col == 40) {x = 5; y = 0;}
	MOVF       show_text_col_L0+0, 0
	XORLW      40
	BTFSS      STATUS+0, 2
	GOTO       L_show_text13
	MOVLW      5
	MOVWF      show_text_x_L0+0
	CLRF       show_text_y_L0+0
	GOTO       L_show_text14
L_show_text13:
;simu.c,38 :: 		else if(col == 48) {x = 6; y = 0;}
	MOVF       show_text_col_L0+0, 0
	XORLW      48
	BTFSS      STATUS+0, 2
	GOTO       L_show_text15
	MOVLW      6
	MOVWF      show_text_x_L0+0
	CLRF       show_text_y_L0+0
	GOTO       L_show_text16
L_show_text15:
;simu.c,39 :: 		else if(col == 56) {x = 7; y = 0;}
	MOVF       show_text_col_L0+0, 0
	XORLW      56
	BTFSS      STATUS+0, 2
	GOTO       L_show_text17
	MOVLW      7
	MOVWF      show_text_x_L0+0
	CLRF       show_text_y_L0+0
L_show_text17:
L_show_text16:
L_show_text14:
L_show_text12:
L_show_text10:
L_show_text8:
L_show_text6:
L_show_text4:
;simu.c,40 :: 		adrs = (txt[x] - 32) * 8;
	MOVF       show_text_x_L0+0, 0
	ADDWF      FARG_show_text_txt+0, 0
	MOVWF      FSR
	MOVLW      32
	SUBWF      INDF+0, 0
	MOVWF      show_text_adrs_L0+0
	CLRF       show_text_adrs_L0+1
	BTFSS      STATUS+0, 0
	DECF       show_text_adrs_L0+1, 1
	MOVLW      3
	MOVWF      R0+0
	MOVF       R0+0, 0
L__show_text57:
	BTFSC      STATUS+0, 2
	GOTO       L__show_text58
	RLF        show_text_adrs_L0+0, 1
	RLF        show_text_adrs_L0+1, 1
	BCF        show_text_adrs_L0+0, 0
	ADDLW      255
	GOTO       L__show_text57
L__show_text58:
;simu.c,41 :: 		if(l == 0) send_data(adrs + y);
	MOVF       FARG_show_text_l+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_text18
	MOVF       show_text_y_L0+0, 0
	ADDWF      show_text_adrs_L0+0, 0
	MOVWF      FARG_send_data_adrs+0
	MOVF       show_text_adrs_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      FARG_send_data_adrs+1
	MOVLW      0
	BTFSC      show_text_y_L0+0, 7
	MOVLW      255
	ADDWF      FARG_send_data_adrs+1, 1
	CALL       _send_data+0
	GOTO       L_show_text19
L_show_text18:
;simu.c,42 :: 		else if(l == 1) row1 = Character[adrs + y];
	MOVF       FARG_show_text_l+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_text20
	MOVF       show_text_y_L0+0, 0
	ADDWF      show_text_adrs_L0+0, 0
	MOVWF      R0+0
	MOVF       show_text_adrs_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVLW      0
	BTFSC      show_text_y_L0+0, 7
	MOVLW      255
	ADDWF      R0+1, 1
	MOVLW      _Character+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_Character+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
	GOTO       L_show_text21
L_show_text20:
;simu.c,43 :: 		else row2 = Character[adrs + y];
	MOVF       show_text_y_L0+0, 0
	ADDWF      show_text_adrs_L0+0, 0
	MOVWF      R0+0
	MOVF       show_text_adrs_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVLW      0
	BTFSC      show_text_y_L0+0, 7
	MOVLW      255
	ADDWF      R0+1, 1
	MOVLW      _Character+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_Character+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
L_show_text21:
L_show_text19:
;simu.c,44 :: 		delay_us(100);
	MOVLW      166
	MOVWF      R13+0
L_show_text22:
	DECFSZ     R13+0, 1
	GOTO       L_show_text22
	NOP
;simu.c,45 :: 		row1 = 0x00; row2 = 0x00;
	CLRF       PORTB+0
	CLRF       PORTC+0
;simu.c,46 :: 		ds = 1; sh = 1; sh = 0; st = 1; st = 0;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;simu.c,47 :: 		y++;
	INCF       show_text_y_L0+0, 1
;simu.c,31 :: 		for(col = 0; col <= 64; col++){
	INCF       show_text_col_L0+0, 1
;simu.c,48 :: 		}
	GOTO       L_show_text0
L_show_text1:
;simu.c,49 :: 		}
L_end_show_text:
	RETURN
; end of _show_text

_check_sensor:

;simu.c,51 :: 		void check_sensor(){
;simu.c,52 :: 		if(w_key) for(de = 0; de < 200; de++) show_text(0, "Welcome!");
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_check_sensor23
	CLRF       _de+0
	CLRF       _de+1
L_check_sensor24:
	MOVLW      128
	XORWF      _de+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_sensor60
	MOVLW      200
	SUBWF      _de+0, 0
L__check_sensor60:
	BTFSC      STATUS+0, 0
	GOTO       L_check_sensor25
	CLRF       FARG_show_text_l+0
	MOVLW      ?lstr1_simu+0
	MOVWF      FARG_show_text_txt+0
	CALL       _show_text+0
	INCF       _de+0, 1
	BTFSC      STATUS+0, 2
	INCF       _de+1, 1
	GOTO       L_check_sensor24
L_check_sensor25:
L_check_sensor23:
;simu.c,53 :: 		if(t_key) {
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_check_sensor27
;simu.c,54 :: 		for(de = 0; de < 200; de++) {
	CLRF       _de+0
	CLRF       _de+1
L_check_sensor28:
	MOVLW      128
	XORWF      _de+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_sensor61
	MOVLW      200
	SUBWF      _de+0, 0
L__check_sensor61:
	BTFSC      STATUS+0, 0
	GOTO       L_check_sensor29
;simu.c,55 :: 		show_text(1, " Thank  ");
	MOVLW      1
	MOVWF      FARG_show_text_l+0
	MOVLW      ?lstr2_simu+0
	MOVWF      FARG_show_text_txt+0
	CALL       _show_text+0
;simu.c,56 :: 		show_text(2, "    You!");
	MOVLW      2
	MOVWF      FARG_show_text_l+0
	MOVLW      ?lstr3_simu+0
	MOVWF      FARG_show_text_txt+0
	CALL       _show_text+0
;simu.c,54 :: 		for(de = 0; de < 200; de++) {
	INCF       _de+0, 1
	BTFSC      STATUS+0, 2
	INCF       _de+1, 1
;simu.c,57 :: 		}
	GOTO       L_check_sensor28
L_check_sensor29:
;simu.c,58 :: 		}
L_check_sensor27:
;simu.c,59 :: 		if(b_key) {
	BTFSS      RA4_bit+0, BitPos(RA4_bit+0)
	GOTO       L_check_sensor31
;simu.c,60 :: 		text_f = ~text_f;
	MOVLW
	XORWF      _text_f+0, 1
;simu.c,61 :: 		if(text_f == 1) for(de = 0; de < 200; de++) show_text(1, "Text ON ");
	BTFSS      _text_f+0, BitPos(_text_f+0)
	GOTO       L_check_sensor32
	CLRF       _de+0
	CLRF       _de+1
L_check_sensor33:
	MOVLW      128
	XORWF      _de+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_sensor62
	MOVLW      200
	SUBWF      _de+0, 0
L__check_sensor62:
	BTFSC      STATUS+0, 0
	GOTO       L_check_sensor34
	MOVLW      1
	MOVWF      FARG_show_text_l+0
	MOVLW      ?lstr4_simu+0
	MOVWF      FARG_show_text_txt+0
	CALL       _show_text+0
	INCF       _de+0, 1
	BTFSC      STATUS+0, 2
	INCF       _de+1, 1
	GOTO       L_check_sensor33
L_check_sensor34:
L_check_sensor32:
;simu.c,62 :: 		}
L_check_sensor31:
;simu.c,63 :: 		if(text_f == 0) for(de = 0; de < 200; de++) show_text(2, "Text OFF");
	BTFSC      _text_f+0, BitPos(_text_f+0)
	GOTO       L_check_sensor36
	CLRF       _de+0
	CLRF       _de+1
L_check_sensor37:
	MOVLW      128
	XORWF      _de+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_sensor63
	MOVLW      200
	SUBWF      _de+0, 0
L__check_sensor63:
	BTFSC      STATUS+0, 0
	GOTO       L_check_sensor38
	MOVLW      2
	MOVWF      FARG_show_text_l+0
	MOVLW      ?lstr5_simu+0
	MOVWF      FARG_show_text_txt+0
	CALL       _show_text+0
	INCF       _de+0, 1
	BTFSC      STATUS+0, 2
	INCF       _de+1, 1
	GOTO       L_check_sensor37
L_check_sensor38:
L_check_sensor36:
;simu.c,64 :: 		}
L_end_check_sensor:
	RETURN
; end of _check_sensor

_scroll_text:

;simu.c,66 :: 		void scroll_text(){
;simu.c,69 :: 		i = (text_line * text_per_line) - 64;
	MOVLW      176
	MOVWF      scroll_text_i_L0+0
	CLRF       scroll_text_i_L0+1
;simu.c,70 :: 		for(s = 0; s < i; s+=2){
	CLRF       scroll_text_s_L0+0
	CLRF       scroll_text_s_L0+1
L_scroll_text40:
	MOVLW      128
	XORWF      scroll_text_s_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      scroll_text_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__scroll_text65
	MOVF       scroll_text_i_L0+0, 0
	SUBWF      scroll_text_s_L0+0, 0
L__scroll_text65:
	BTFSC      STATUS+0, 0
	GOTO       L_scroll_text41
;simu.c,71 :: 		for(r = 0; r < 20; r++){
	CLRF       scroll_text_r_L0+0
L_scroll_text43:
	MOVLW      20
	SUBWF      scroll_text_r_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_scroll_text44
;simu.c,72 :: 		ds = 0; sh = 1; sh = 0; st = 1; st = 0; y = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	CLRF       scroll_text_y_L0+0
;simu.c,73 :: 		for(col = 0; col <= 64; col++){
	CLRF       scroll_text_col_L0+0
L_scroll_text46:
	MOVF       scroll_text_col_L0+0, 0
	SUBLW      64
	BTFSS      STATUS+0, 0
	GOTO       L_scroll_text47
;simu.c,74 :: 		row1 = text[y + s];
	MOVF       scroll_text_s_L0+0, 0
	ADDWF      scroll_text_y_L0+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      scroll_text_s_L0+1, 0
	MOVWF      R0+1
	MOVLW      _text+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_text+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;simu.c,75 :: 		row2 = text[y + 1 + s];
	MOVF       scroll_text_y_L0+0, 0
	ADDLW      1
	MOVWF      R0+0
	CLRF       R0+1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	MOVF       scroll_text_s_L0+0, 0
	ADDWF      R0+0, 1
	MOVF       scroll_text_s_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _text+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_text+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;simu.c,76 :: 		delay_us(100);
	MOVLW      166
	MOVWF      R13+0
L_scroll_text49:
	DECFSZ     R13+0, 1
	GOTO       L_scroll_text49
	NOP
;simu.c,77 :: 		row1 = 0x00; row2 = 0x00;
	CLRF       PORTB+0
	CLRF       PORTC+0
;simu.c,78 :: 		ds = 1; sh = 1; sh = 0; st = 1; st = 0;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;simu.c,79 :: 		y+=2;
	MOVLW      2
	ADDWF      scroll_text_y_L0+0, 1
;simu.c,80 :: 		check_sensor();
	CALL       _check_sensor+0
;simu.c,73 :: 		for(col = 0; col <= 64; col++){
	INCF       scroll_text_col_L0+0, 1
;simu.c,81 :: 		}
	GOTO       L_scroll_text46
L_scroll_text47:
;simu.c,71 :: 		for(r = 0; r < 20; r++){
	INCF       scroll_text_r_L0+0, 1
;simu.c,82 :: 		}
	GOTO       L_scroll_text43
L_scroll_text44:
;simu.c,70 :: 		for(s = 0; s < i; s+=2){
	MOVLW      2
	ADDWF      scroll_text_s_L0+0, 1
	BTFSC      STATUS+0, 0
	INCF       scroll_text_s_L0+1, 1
;simu.c,83 :: 		}
	GOTO       L_scroll_text40
L_scroll_text41:
;simu.c,84 :: 		}
L_end_scroll_text:
	RETURN
; end of _scroll_text

_main:

;simu.c,86 :: 		void main() {
;simu.c,87 :: 		adcon1 = 7;
	MOVLW      7
	MOVWF      ADCON1+0
;simu.c,88 :: 		trisa = 0x38; porta = 0;
	MOVLW      56
	MOVWF      TRISA+0
	CLRF       PORTA+0
;simu.c,89 :: 		trisb = 0x00; portb = 0;
	CLRF       TRISB+0
	CLRF       PORTB+0
;simu.c,90 :: 		trisc = 0x00; portc = 0;
	CLRF       TRISC+0
	CLRF       PORTC+0
;simu.c,91 :: 		text_f = 0;
	BCF        _text_f+0, BitPos(_text_f+0)
;simu.c,93 :: 		while(1){
L_main50:
;simu.c,94 :: 		check_sensor();
	CALL       _check_sensor+0
;simu.c,95 :: 		if (text_f == 1) scroll_text();
	BTFSS      _text_f+0, BitPos(_text_f+0)
	GOTO       L_main52
	CALL       _scroll_text+0
L_main52:
;simu.c,96 :: 		}
	GOTO       L_main50
;simu.c,97 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
