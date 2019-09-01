
_read_ds1307:

;ds1307.h,9 :: 		unsigned short read_ds1307(unsigned short address){
;ds1307.h,11 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;ds1307.h,12 :: 		Soft_I2C_Write(0xD0);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;ds1307.h,13 :: 		Soft_I2C_Write(address);
	MOVF       FARG_read_ds1307_address+0, 0
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;ds1307.h,14 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;ds1307.h,15 :: 		Soft_I2C_Write(0xD1);
	MOVLW      209
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;ds1307.h,16 :: 		r_data=Soft_I2C_Read(0);
	CLRF       FARG_Soft_I2C_Read_ack+0
	CLRF       FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      read_ds1307_r_data_L0+0
;ds1307.h,17 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;ds1307.h,18 :: 		if(address != 2)r_data = bcd2dec(r_data);
	MOVF       FARG_read_ds1307_address+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_read_ds13070
	MOVF       read_ds1307_r_data_L0+0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0+0, 0
	MOVWF      read_ds1307_r_data_L0+0
L_read_ds13070:
;ds1307.h,19 :: 		return r_data;
	MOVF       read_ds1307_r_data_L0+0, 0
	MOVWF      R0+0
;ds1307.h,20 :: 		}
L_end_read_ds1307:
	RETURN
; end of _read_ds1307

_write_ds1307:

;ds1307.h,22 :: 		void write_ds1307(unsigned short address,unsigned short w_data){
;ds1307.h,23 :: 		if(address != 2)w_data = dec2bcd(w_data);
	MOVF       FARG_write_ds1307_address+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_write_ds13071
	MOVF       FARG_write_ds1307_w_data+0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0+0, 0
	MOVWF      FARG_write_ds1307_w_data+0
L_write_ds13071:
;ds1307.h,24 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;ds1307.h,25 :: 		Soft_I2C_Write(0xD0);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;ds1307.h,26 :: 		Soft_I2C_Write(address);
	MOVF       FARG_write_ds1307_address+0, 0
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;ds1307.h,27 :: 		Soft_I2C_Write(w_data);
	MOVF       FARG_write_ds1307_w_data+0, 0
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;ds1307.h,28 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;ds1307.h,29 :: 		}
L_end_write_ds1307:
	RETURN
; end of _write_ds1307

_check_ap:

;ds1307.h,31 :: 		void check_ap(){
;ds1307.h,32 :: 		if(ap & 1){
	BTFSC      _tmp+0, 5
	GOTO       L__check_ap65
	BCF        3, 0
	GOTO       L__check_ap66
L__check_ap65:
	BSF        3, 0
L__check_ap66:
	BTFSS      3, 0
	GOTO       L_check_ap2
;ds1307.h,33 :: 		am = 0; pm = 1;
	BCF        PORTA+0, 0
	BSF        PORTA+0, 1
;ds1307.h,34 :: 		}
	GOTO       L_check_ap3
L_check_ap2:
;ds1307.h,36 :: 		am = 1; pm = 0;
	BSF        PORTA+0, 0
	BCF        PORTA+0, 1
;ds1307.h,37 :: 		}
L_check_ap3:
;ds1307.h,38 :: 		}
L_end_check_ap:
	RETURN
; end of _check_ap

_pic_init:

;7segment.h,9 :: 		void pic_init(){
;7segment.h,10 :: 		ADCON1 = 0x07; trisa = 0x30;
	MOVLW      7
	MOVWF      ADCON1+0
	MOVLW      48
	MOVWF      TRISA+0
;7segment.h,11 :: 		trisb = 0x00; portb = 0x00;
	CLRF       TRISB+0
	CLRF       PORTB+0
;7segment.h,12 :: 		trisc = 0xC0; portc = 0x00;
	MOVLW      192
	MOVWF      TRISC+0
	CLRF       PORTC+0
;7segment.h,13 :: 		soft_I2C_Init();
	CALL       _Soft_I2C_Init+0
;7segment.h,15 :: 		}
L_end_pic_init:
	RETURN
; end of _pic_init

_display_clear:

;7segment.h,20 :: 		void display_clear(){
;7segment.h,21 :: 		digit1 = 0; digit2 = 0; digit3 = 0;
	BCF        PORTC+0, 0
	BCF        PORTC+0, 1
	BCF        PORTC+0, 2
;7segment.h,22 :: 		digit4 = 0; digit5 = 0; digit6 = 0;
	BCF        PORTC+0, 3
	BCF        PORTC+0, 4
	BCF        PORTC+0, 5
;7segment.h,23 :: 		}
L_end_display_clear:
	RETURN
; end of _display_clear

_show_display:

;7segment.h,25 :: 		void show_display(char y, unsigned short x){ // y for digit select, x for data.
;7segment.h,27 :: 		if(y == 'H'){
	MOVF       FARG_show_display_y+0, 0
	XORLW      72
	BTFSS      STATUS+0, 2
	GOTO       L_show_display4
;7segment.h,28 :: 		temp = x / 10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_show_display_x+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
;7segment.h,29 :: 		segdata = anode[temp];
	MOVLW      0
	MOVWF      R0+1
	MOVLW      _anode+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_anode+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;7segment.h,30 :: 		digit1 = 1; delay_ms(1); display_clear();
	BSF        PORTC+0, 0
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_show_display5:
	DECFSZ     R13+0, 1
	GOTO       L_show_display5
	DECFSZ     R12+0, 1
	GOTO       L_show_display5
	CALL       _display_clear+0
;7segment.h,31 :: 		temp = x % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_show_display_x+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
;7segment.h,32 :: 		segdata = anode[temp];
	MOVLW      0
	MOVWF      R0+1
	MOVLW      _anode+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_anode+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;7segment.h,33 :: 		digit2 = 1; delay_ms(1); display_clear();
	BSF        PORTC+0, 1
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_show_display6:
	DECFSZ     R13+0, 1
	GOTO       L_show_display6
	DECFSZ     R12+0, 1
	GOTO       L_show_display6
	CALL       _display_clear+0
;7segment.h,34 :: 		}
	GOTO       L_show_display7
L_show_display4:
;7segment.h,35 :: 		else if(y == 'M'){
	MOVF       FARG_show_display_y+0, 0
	XORLW      77
	BTFSS      STATUS+0, 2
	GOTO       L_show_display8
;7segment.h,36 :: 		temp = x / 10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_show_display_x+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
;7segment.h,37 :: 		segdata = anode[temp];
	MOVLW      0
	MOVWF      R0+1
	MOVLW      _anode+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_anode+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;7segment.h,38 :: 		digit3 = 1; delay_ms(1); display_clear();
	BSF        PORTC+0, 2
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_show_display9:
	DECFSZ     R13+0, 1
	GOTO       L_show_display9
	DECFSZ     R12+0, 1
	GOTO       L_show_display9
	CALL       _display_clear+0
;7segment.h,39 :: 		temp = x % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_show_display_x+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
;7segment.h,40 :: 		segdata = anode[temp];
	MOVLW      0
	MOVWF      R0+1
	MOVLW      _anode+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_anode+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;7segment.h,41 :: 		digit4 = 1; delay_ms(1); display_clear();
	BSF        PORTC+0, 3
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_show_display10:
	DECFSZ     R13+0, 1
	GOTO       L_show_display10
	DECFSZ     R12+0, 1
	GOTO       L_show_display10
	CALL       _display_clear+0
;7segment.h,42 :: 		}
	GOTO       L_show_display11
L_show_display8:
;7segment.h,43 :: 		else if(y == 'S'){
	MOVF       FARG_show_display_y+0, 0
	XORLW      83
	BTFSS      STATUS+0, 2
	GOTO       L_show_display12
;7segment.h,44 :: 		temp = x / 10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_show_display_x+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
;7segment.h,45 :: 		segdata = anode[temp];
	MOVLW      0
	MOVWF      R0+1
	MOVLW      _anode+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_anode+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;7segment.h,46 :: 		digit5 = 1; delay_ms(1); display_clear();
	BSF        PORTC+0, 4
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_show_display13:
	DECFSZ     R13+0, 1
	GOTO       L_show_display13
	DECFSZ     R12+0, 1
	GOTO       L_show_display13
	CALL       _display_clear+0
;7segment.h,47 :: 		temp = x % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_show_display_x+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
;7segment.h,48 :: 		segdata = anode[temp];
	MOVLW      0
	MOVWF      R0+1
	MOVLW      _anode+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_anode+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;7segment.h,49 :: 		digit6 = 1; delay_ms(1); display_clear();
	BSF        PORTC+0, 5
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_show_display14:
	DECFSZ     R13+0, 1
	GOTO       L_show_display14
	DECFSZ     R12+0, 1
	GOTO       L_show_display14
	CALL       _display_clear+0
;7segment.h,50 :: 		}
L_show_display12:
L_show_display11:
L_show_display7:
;7segment.h,51 :: 		}
L_end_show_display:
	RETURN
; end of _show_display

_default_time:

;simpleRTCclcok.c,16 :: 		void default_time(){
;simpleRTCclcok.c,17 :: 		hh = 0x51;    //PM = 0x61[1] - 0x72[12]
	MOVLW      81
	MOVWF      _hh+0
;simpleRTCclcok.c,19 :: 		mm = 59;
	MOVLW      59
	MOVWF      _mm+0
;simpleRTCclcok.c,20 :: 		ss = 0;
	CLRF       _ss+0
;simpleRTCclcok.c,21 :: 		write_ds1307(0, ss);
	CLRF       FARG_write_ds1307_address+0
	CLRF       FARG_write_ds1307_w_data+0
	CALL       _write_ds1307+0
;simpleRTCclcok.c,22 :: 		write_ds1307(1, mm);
	MOVLW      1
	MOVWF      FARG_write_ds1307_address+0
	MOVF       _mm+0, 0
	MOVWF      FARG_write_ds1307_w_data+0
	CALL       _write_ds1307+0
;simpleRTCclcok.c,23 :: 		write_ds1307(2, hh);
	MOVLW      2
	MOVWF      FARG_write_ds1307_address+0
	MOVF       _hh+0, 0
	MOVWF      FARG_write_ds1307_w_data+0
	CALL       _write_ds1307+0
;simpleRTCclcok.c,24 :: 		}
L_end_default_time:
	RETURN
; end of _default_time

_calibrate:

;simpleRTCclcok.c,26 :: 		void calibrate(){
;simpleRTCclcok.c,27 :: 		hh = 12; mm = 0; ss = 0; hh_tmp = hh;
	MOVLW      12
	MOVWF      _hh+0
	CLRF       _mm+0
	CLRF       _ss+0
	MOVLW      12
	MOVWF      _hh_tmp+0
;simpleRTCclcok.c,28 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_calibrate15:
	DECFSZ     R13+0, 1
	GOTO       L_calibrate15
	DECFSZ     R12+0, 1
	GOTO       L_calibrate15
	DECFSZ     R11+0, 1
	GOTO       L_calibrate15
	NOP
;simpleRTCclcok.c,30 :: 		hour:
___calibrate_hour:
;simpleRTCclcok.c,31 :: 		for(delay=0;delay<100;delay++){
	CLRF       _delay+0
L_calibrate18:
	MOVLW      128
	XORWF      _delay+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      100
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate19
;simpleRTCclcok.c,32 :: 		show_display('H', hh);
	MOVLW      72
	MOVWF      FARG_show_display_y+0
	MOVF       _hh+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,33 :: 		show_display('M', mm);
	MOVLW      77
	MOVWF      FARG_show_display_y+0
	MOVF       _mm+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,34 :: 		show_display('S', ss);
	MOVLW      83
	MOVWF      FARG_show_display_y+0
	MOVF       _ss+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,31 :: 		for(delay=0;delay<100;delay++){
	INCF       _delay+0, 1
;simpleRTCclcok.c,35 :: 		}
	GOTO       L_calibrate18
L_calibrate19:
;simpleRTCclcok.c,36 :: 		for(delay=0;delay<100;delay++){
	CLRF       _delay+0
L_calibrate21:
	MOVLW      128
	XORWF      _delay+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      100
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate22
;simpleRTCclcok.c,37 :: 		if(hh > 12)hh = 1; if(hh < 1)hh = 12;
	MOVF       _hh+0, 0
	SUBLW      12
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate24
	MOVLW      1
	MOVWF      _hh+0
L_calibrate24:
	MOVLW      1
	SUBWF      _hh+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate25
	MOVLW      12
	MOVWF      _hh+0
L_calibrate25:
;simpleRTCclcok.c,38 :: 		if(up){hh += 1; hh_tmp += 1; break;}
	BTFSS      PORTC+0, 6
	GOTO       L_calibrate26
	INCF       _hh+0, 1
	INCF       _hh_tmp+0, 1
	GOTO       L_calibrate22
L_calibrate26:
;simpleRTCclcok.c,39 :: 		if(down){hh -= 1; hh_tmp -= 1; break;}
	BTFSS      PORTC+0, 7
	GOTO       L_calibrate27
	DECF       _hh+0, 1
	DECF       _hh_tmp+0, 1
	GOTO       L_calibrate22
L_calibrate27:
;simpleRTCclcok.c,40 :: 		if(hh_tmp > 24)hh_tmp = 1;
	MOVF       _hh_tmp+0, 0
	SUBLW      24
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate28
	MOVLW      1
	MOVWF      _hh_tmp+0
L_calibrate28:
;simpleRTCclcok.c,41 :: 		if(hh_tmp < 1)hh_tmp = 24;
	MOVLW      1
	SUBWF      _hh_tmp+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate29
	MOVLW      24
	MOVWF      _hh_tmp+0
L_calibrate29:
;simpleRTCclcok.c,42 :: 		if(hh_tmp > 11 & hh_tmp < 24){am=1; pm=0;}
	MOVF       _hh_tmp+0, 0
	SUBLW      11
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1+0
	MOVLW      24
	SUBWF      _hh_tmp+0, 0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_calibrate30
	BSF        PORTA+0, 0
	BCF        PORTA+0, 1
	GOTO       L_calibrate31
L_calibrate30:
;simpleRTCclcok.c,43 :: 		else{am=0; pm=1;}
	BCF        PORTA+0, 0
	BSF        PORTA+0, 1
L_calibrate31:
;simpleRTCclcok.c,44 :: 		show_display('M', mm);
	MOVLW      77
	MOVWF      FARG_show_display_y+0
	MOVF       _mm+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,45 :: 		show_display('S', ss);
	MOVLW      83
	MOVWF      FARG_show_display_y+0
	MOVF       _ss+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,36 :: 		for(delay=0;delay<100;delay++){
	INCF       _delay+0, 1
;simpleRTCclcok.c,46 :: 		}
	GOTO       L_calibrate21
L_calibrate22:
;simpleRTCclcok.c,47 :: 		if(select)goto minute;
	BTFSS      PORTA+0, 5
	GOTO       L_calibrate32
	GOTO       ___calibrate_minute
L_calibrate32:
;simpleRTCclcok.c,48 :: 		goto hour;
	GOTO       ___calibrate_hour
;simpleRTCclcok.c,49 :: 		minute:
___calibrate_minute:
;simpleRTCclcok.c,50 :: 		for(delay=0;delay<100;delay++){
	CLRF       _delay+0
L_calibrate33:
	MOVLW      128
	XORWF      _delay+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      100
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate34
;simpleRTCclcok.c,51 :: 		show_display('H', hh);
	MOVLW      72
	MOVWF      FARG_show_display_y+0
	MOVF       _hh+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,52 :: 		show_display('M', mm);
	MOVLW      77
	MOVWF      FARG_show_display_y+0
	MOVF       _mm+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,53 :: 		show_display('S', ss);
	MOVLW      83
	MOVWF      FARG_show_display_y+0
	MOVF       _ss+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,50 :: 		for(delay=0;delay<100;delay++){
	INCF       _delay+0, 1
;simpleRTCclcok.c,54 :: 		}
	GOTO       L_calibrate33
L_calibrate34:
;simpleRTCclcok.c,55 :: 		for(delay=0;delay<100;delay++){
	CLRF       _delay+0
L_calibrate36:
	MOVLW      128
	XORWF      _delay+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      100
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate37
;simpleRTCclcok.c,56 :: 		if(up){mm += 1; break;}
	BTFSS      PORTC+0, 6
	GOTO       L_calibrate39
	INCF       _mm+0, 1
	GOTO       L_calibrate37
L_calibrate39:
;simpleRTCclcok.c,57 :: 		if(down){mm -= 1; break;}
	BTFSS      PORTC+0, 7
	GOTO       L_calibrate40
	DECF       _mm+0, 1
	GOTO       L_calibrate37
L_calibrate40:
;simpleRTCclcok.c,58 :: 		if(mm > 60)mm = 0; if(mm < 0)mm = 59;
	MOVF       _mm+0, 0
	SUBLW      60
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate41
	CLRF       _mm+0
L_calibrate41:
	MOVLW      0
	SUBWF      _mm+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate42
	MOVLW      59
	MOVWF      _mm+0
L_calibrate42:
;simpleRTCclcok.c,59 :: 		show_display('H', hh);
	MOVLW      72
	MOVWF      FARG_show_display_y+0
	MOVF       _hh+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,60 :: 		show_display('S', ss);
	MOVLW      83
	MOVWF      FARG_show_display_y+0
	MOVF       _ss+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,55 :: 		for(delay=0;delay<100;delay++){
	INCF       _delay+0, 1
;simpleRTCclcok.c,61 :: 		}
	GOTO       L_calibrate36
L_calibrate37:
;simpleRTCclcok.c,62 :: 		if(select)goto second;
	BTFSS      PORTA+0, 5
	GOTO       L_calibrate43
	GOTO       ___calibrate_second
L_calibrate43:
;simpleRTCclcok.c,63 :: 		goto minute;
	GOTO       ___calibrate_minute
;simpleRTCclcok.c,64 :: 		second:
___calibrate_second:
;simpleRTCclcok.c,65 :: 		for(delay=0;delay<100;delay++){
	CLRF       _delay+0
L_calibrate44:
	MOVLW      128
	XORWF      _delay+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      100
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate45
;simpleRTCclcok.c,66 :: 		show_display('H', hh);
	MOVLW      72
	MOVWF      FARG_show_display_y+0
	MOVF       _hh+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,67 :: 		show_display('M', mm);
	MOVLW      77
	MOVWF      FARG_show_display_y+0
	MOVF       _mm+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,68 :: 		show_display('S', ss);
	MOVLW      83
	MOVWF      FARG_show_display_y+0
	MOVF       _ss+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,65 :: 		for(delay=0;delay<100;delay++){
	INCF       _delay+0, 1
;simpleRTCclcok.c,69 :: 		}
	GOTO       L_calibrate44
L_calibrate45:
;simpleRTCclcok.c,70 :: 		for(delay=0;delay<100;delay++){
	CLRF       _delay+0
L_calibrate47:
	MOVLW      128
	XORWF      _delay+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      100
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate48
;simpleRTCclcok.c,71 :: 		if(up){ss += 1; break;}
	BTFSS      PORTC+0, 6
	GOTO       L_calibrate50
	INCF       _ss+0, 1
	GOTO       L_calibrate48
L_calibrate50:
;simpleRTCclcok.c,72 :: 		if(down){ss -= 1; break;}
	BTFSS      PORTC+0, 7
	GOTO       L_calibrate51
	DECF       _ss+0, 1
	GOTO       L_calibrate48
L_calibrate51:
;simpleRTCclcok.c,73 :: 		if(ss > 60)ss = 0; if(ss < 0)ss = 59;
	MOVF       _ss+0, 0
	SUBLW      60
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate52
	CLRF       _ss+0
L_calibrate52:
	MOVLW      0
	SUBWF      _ss+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_calibrate53
	MOVLW      59
	MOVWF      _ss+0
L_calibrate53:
;simpleRTCclcok.c,74 :: 		show_display('H', hh);
	MOVLW      72
	MOVWF      FARG_show_display_y+0
	MOVF       _hh+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,75 :: 		show_display('M', mm);
	MOVLW      77
	MOVWF      FARG_show_display_y+0
	MOVF       _mm+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,70 :: 		for(delay=0;delay<100;delay++){
	INCF       _delay+0, 1
;simpleRTCclcok.c,76 :: 		}
	GOTO       L_calibrate47
L_calibrate48:
;simpleRTCclcok.c,77 :: 		if(select)goto write_data;
	BTFSS      PORTA+0, 5
	GOTO       L_calibrate54
	GOTO       ___calibrate_write_data
L_calibrate54:
;simpleRTCclcok.c,78 :: 		goto second;
	GOTO       ___calibrate_second
;simpleRTCclcok.c,79 :: 		write_data:
___calibrate_write_data:
;simpleRTCclcok.c,80 :: 		hh = hh_code[hh_tmp - 1];
	MOVLW      1
	SUBWF      _hh_tmp+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      _hh_code+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_hh_code+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _hh+0
;simpleRTCclcok.c,81 :: 		write_ds1307(2, hh);
	MOVLW      2
	MOVWF      FARG_write_ds1307_address+0
	MOVF       R0+0, 0
	MOVWF      FARG_write_ds1307_w_data+0
	CALL       _write_ds1307+0
;simpleRTCclcok.c,82 :: 		write_ds1307(1, mm);
	MOVLW      1
	MOVWF      FARG_write_ds1307_address+0
	MOVF       _mm+0, 0
	MOVWF      FARG_write_ds1307_w_data+0
	CALL       _write_ds1307+0
;simpleRTCclcok.c,83 :: 		write_ds1307(0, ss);
	CLRF       FARG_write_ds1307_address+0
	MOVF       _ss+0, 0
	MOVWF      FARG_write_ds1307_w_data+0
	CALL       _write_ds1307+0
;simpleRTCclcok.c,85 :: 		}
L_calibrate17:
;simpleRTCclcok.c,86 :: 		}
L_end_calibrate:
	RETURN
; end of _calibrate

_main:

;simpleRTCclcok.c,88 :: 		void main() {
;simpleRTCclcok.c,89 :: 		pic_init();
	CALL       _pic_init+0
;simpleRTCclcok.c,90 :: 		default_time();
	CALL       _default_time+0
;simpleRTCclcok.c,92 :: 		while(1){
L_main55:
;simpleRTCclcok.c,93 :: 		ss = read_ds1307(0);
	CLRF       FARG_read_ds1307_address+0
	CALL       _read_ds1307+0
	MOVF       R0+0, 0
	MOVWF      _ss+0
;simpleRTCclcok.c,94 :: 		mm = read_ds1307(1);
	MOVLW      1
	MOVWF      FARG_read_ds1307_address+0
	CALL       _read_ds1307+0
	MOVF       R0+0, 0
	MOVWF      _mm+0
;simpleRTCclcok.c,95 :: 		tmp = read_ds1307(2);
	MOVLW      2
	MOVWF      FARG_read_ds1307_address+0
	CALL       _read_ds1307+0
	MOVF       R0+0, 0
	MOVWF      _tmp+0
;simpleRTCclcok.c,96 :: 		hh = tmp & 0b00011111;
	MOVLW      31
	ANDWF      R0+0, 0
	MOVWF      R1+0
	MOVF       R1+0, 0
	MOVWF      _hh+0
;simpleRTCclcok.c,97 :: 		if(hh > 9) hh-=6;
	MOVF       R1+0, 0
	SUBLW      9
	BTFSC      STATUS+0, 0
	GOTO       L_main57
	MOVLW      6
	SUBWF      _hh+0, 1
L_main57:
;simpleRTCclcok.c,98 :: 		check_ap();
	CALL       _check_ap+0
;simpleRTCclcok.c,99 :: 		for(delay=0;delay<20;delay++){
	CLRF       _delay+0
L_main58:
	MOVLW      128
	XORWF      _delay+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      20
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main59
;simpleRTCclcok.c,100 :: 		show_display('H', hh);
	MOVLW      72
	MOVWF      FARG_show_display_y+0
	MOVF       _hh+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,101 :: 		show_display('M', mm);
	MOVLW      77
	MOVWF      FARG_show_display_y+0
	MOVF       _mm+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,102 :: 		show_display('S', ss);
	MOVLW      83
	MOVWF      FARG_show_display_y+0
	MOVF       _ss+0, 0
	MOVWF      FARG_show_display_x+0
	CALL       _show_display+0
;simpleRTCclcok.c,99 :: 		for(delay=0;delay<20;delay++){
	INCF       _delay+0, 1
;simpleRTCclcok.c,103 :: 		}
	GOTO       L_main58
L_main59:
;simpleRTCclcok.c,104 :: 		if(setup)calibrate();
	BTFSS      PORTA+0, 4
	GOTO       L_main61
	CALL       _calibrate+0
L_main61:
;simpleRTCclcok.c,105 :: 		}
	GOTO       L_main55
;simpleRTCclcok.c,106 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
