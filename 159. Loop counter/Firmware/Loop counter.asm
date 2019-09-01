
_kp_init:

;keypad4x3.h,16 :: 		void kp_init(){
;keypad4x3.h,17 :: 		kp_row1_dir = 0;
	BCF        TRISC6_bit+0, BitPos(TRISC6_bit+0)
;keypad4x3.h,18 :: 		kp_row2_dir = 0;
	BCF        TRISC5_bit+0, BitPos(TRISC5_bit+0)
;keypad4x3.h,19 :: 		kp_row3_dir = 0;
	BCF        TRISC4_bit+0, BitPos(TRISC4_bit+0)
;keypad4x3.h,20 :: 		kp_row4_dir = 0;
	BCF        TRISC3_bit+0, BitPos(TRISC3_bit+0)
;keypad4x3.h,21 :: 		kp_col1_dir = 1;
	BSF        TRISC2_bit+0, BitPos(TRISC2_bit+0)
;keypad4x3.h,22 :: 		kp_col2_dir = 1;
	BSF        TRISC1_bit+0, BitPos(TRISC1_bit+0)
;keypad4x3.h,23 :: 		kp_col3_dir = 1;
	BSF        TRISC0_bit+0, BitPos(TRISC0_bit+0)
;keypad4x3.h,24 :: 		kp_row1 = 0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;keypad4x3.h,25 :: 		kp_row2 = 0;
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
;keypad4x3.h,26 :: 		kp_row3 = 0;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
;keypad4x3.h,27 :: 		kp_row4 = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;keypad4x3.h,28 :: 		}
L_end_kp_init:
	RETURN
; end of _kp_init

_kp_scan:

;keypad4x3.h,30 :: 		char kp_scan(){
;keypad4x3.h,31 :: 		char key = 0;
	CLRF       kp_scan_key_L0+0
;keypad4x3.h,32 :: 		kp_row1 = 1; kp_row2 = 0; kp_row3 = 0; kp_row4 = 0;
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;keypad4x3.h,33 :: 		delay_1ms();
	CALL       _Delay_1ms+0
;keypad4x3.h,34 :: 		if(kp_col1 == 1) key = '1';
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_kp_scan0
	MOVLW      49
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan1
L_kp_scan0:
;keypad4x3.h,35 :: 		else if(kp_col2 == 1) key = '2';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_kp_scan2
	MOVLW      50
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan3
L_kp_scan2:
;keypad4x3.h,36 :: 		else if(kp_col3 == 1) key = '3';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_kp_scan4
	MOVLW      51
	MOVWF      kp_scan_key_L0+0
L_kp_scan4:
L_kp_scan3:
L_kp_scan1:
;keypad4x3.h,37 :: 		kp_row1 = 0; kp_row2 = 1; kp_row3 = 0; kp_row4 = 0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;keypad4x3.h,38 :: 		delay_1ms();
	CALL       _Delay_1ms+0
;keypad4x3.h,39 :: 		if(kp_col1 == 1) key = '4';
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_kp_scan5
	MOVLW      52
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan6
L_kp_scan5:
;keypad4x3.h,40 :: 		else if(kp_col2 == 1) key = '5';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_kp_scan7
	MOVLW      53
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan8
L_kp_scan7:
;keypad4x3.h,41 :: 		else if(kp_col3 == 1) key = '6';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_kp_scan9
	MOVLW      54
	MOVWF      kp_scan_key_L0+0
L_kp_scan9:
L_kp_scan8:
L_kp_scan6:
;keypad4x3.h,42 :: 		kp_row1 = 0; kp_row2 = 0; kp_row3 = 1; kp_row4 = 0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;keypad4x3.h,43 :: 		delay_1ms();
	CALL       _Delay_1ms+0
;keypad4x3.h,44 :: 		if(kp_col1 == 1) key = '7';
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_kp_scan10
	MOVLW      55
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan11
L_kp_scan10:
;keypad4x3.h,45 :: 		else if(kp_col2 == 1) key = '8';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_kp_scan12
	MOVLW      56
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan13
L_kp_scan12:
;keypad4x3.h,46 :: 		else if(kp_col3 == 1) key = '9';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_kp_scan14
	MOVLW      57
	MOVWF      kp_scan_key_L0+0
L_kp_scan14:
L_kp_scan13:
L_kp_scan11:
;keypad4x3.h,47 :: 		kp_row1 = 0; kp_row2 = 0; kp_row3 = 0; kp_row4 = 1;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
;keypad4x3.h,48 :: 		delay_1ms();
	CALL       _Delay_1ms+0
;keypad4x3.h,49 :: 		if(kp_col1 == 1) key = '*';
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_kp_scan15
	MOVLW      42
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan16
L_kp_scan15:
;keypad4x3.h,50 :: 		else if(kp_col2 == 1) key = '0';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_kp_scan17
	MOVLW      48
	MOVWF      kp_scan_key_L0+0
	GOTO       L_kp_scan18
L_kp_scan17:
;keypad4x3.h,51 :: 		else if(kp_col3 == 1) key = '#';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_kp_scan19
	MOVLW      35
	MOVWF      kp_scan_key_L0+0
L_kp_scan19:
L_kp_scan18:
L_kp_scan16:
;keypad4x3.h,52 :: 		return key;
	MOVF       kp_scan_key_L0+0, 0
	MOVWF      R0+0
;keypad4x3.h,53 :: 		}
L_end_kp_scan:
	RETURN
; end of _kp_scan

_kp_get_key:

;keypad4x3.h,55 :: 		char kp_get_key(){
;keypad4x3.h,56 :: 		char key = 0;
	CLRF       kp_get_key_key_L0+0
;keypad4x3.h,57 :: 		while(!key){
L_kp_get_key20:
	MOVF       kp_get_key_key_L0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_kp_get_key21
;keypad4x3.h,58 :: 		key = kp_scan();
	CALL       _kp_scan+0
	MOVF       R0+0, 0
	MOVWF      kp_get_key_key_L0+0
;keypad4x3.h,59 :: 		}
	GOTO       L_kp_get_key20
L_kp_get_key21:
;keypad4x3.h,60 :: 		return key;
	MOVF       kp_get_key_key_L0+0, 0
	MOVWF      R0+0
;keypad4x3.h,61 :: 		}
L_end_kp_get_key:
	RETURN
; end of _kp_get_key

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Loop counter.c,28 :: 		void interrupt(){
;Loop counter.c,29 :: 		if(INTF_bit){
	BTFSS      INTF_bit+0, BitPos(INTF_bit+0)
	GOTO       L_interrupt22
;Loop counter.c,30 :: 		INTF_bit = 0;
	BCF        INTF_bit+0, BitPos(INTF_bit+0)
;Loop counter.c,31 :: 		IRF = 1;
	BSF        _IRF+0, BitPos(_IRF+0)
;Loop counter.c,32 :: 		}
L_interrupt22:
;Loop counter.c,33 :: 		}
L_end_interrupt:
L__interrupt60:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_setup:

;Loop counter.c,35 :: 		void setup(){
;Loop counter.c,36 :: 		char dta[7], x = 0;
	CLRF       setup_x_L0+0
;Loop counter.c,37 :: 		lcd_cmd(_LCD_UNDERLINE_ON);
	MOVLW      14
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,38 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,39 :: 		lcd_out(1,1, "Countup to:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Loop_32counter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Loop counter.c,40 :: 		lcd_cmd(_LCD_SECOND_ROW);
	MOVLW      192
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,41 :: 		delay_1sec();
	CALL       _Delay_1sec+0
;Loop counter.c,42 :: 		while(1){
L_setup23:
;Loop counter.c,43 :: 		key = kp_get_key();
	CALL       _kp_get_key+0
	MOVF       R0+0, 0
	MOVWF      _key+0
;Loop counter.c,44 :: 		if(key == '#') break;
	MOVF       R0+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_setup25
	GOTO       L_setup24
L_setup25:
;Loop counter.c,45 :: 		if(key != '*'){
	MOVF       _key+0, 0
	XORLW      42
	BTFSC      STATUS+0, 2
	GOTO       L_setup26
;Loop counter.c,46 :: 		dta[x] = key;
	MOVF       setup_x_L0+0, 0
	ADDLW      setup_dta_L0+0
	MOVWF      FSR
	MOVF       _key+0, 0
	MOVWF      INDF+0
;Loop counter.c,47 :: 		lcd_chr_cp(key);
	MOVF       _key+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;Loop counter.c,48 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_setup27:
	DECFSZ     R13+0, 1
	GOTO       L_setup27
	DECFSZ     R12+0, 1
	GOTO       L_setup27
	DECFSZ     R11+0, 1
	GOTO       L_setup27
	NOP
	NOP
;Loop counter.c,49 :: 		x++;
	INCF       setup_x_L0+0, 1
;Loop counter.c,50 :: 		}
L_setup26:
;Loop counter.c,51 :: 		if(key == '*'){
	MOVF       _key+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_setup28
;Loop counter.c,52 :: 		lcd_cmd(_lcd_move_cursor_left);
	MOVLW      16
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,53 :: 		--x;
	DECF       setup_x_L0+0, 1
;Loop counter.c,54 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_setup29:
	DECFSZ     R13+0, 1
	GOTO       L_setup29
	DECFSZ     R12+0, 1
	GOTO       L_setup29
	DECFSZ     R11+0, 1
	GOTO       L_setup29
	NOP
	NOP
;Loop counter.c,55 :: 		}
L_setup28:
;Loop counter.c,56 :: 		}
	GOTO       L_setup23
L_setup24:
;Loop counter.c,57 :: 		dta[x] = 0;
	MOVF       setup_x_L0+0, 0
	ADDLW      setup_dta_L0+0
	MOVWF      FSR
	CLRF       INDF+0
;Loop counter.c,58 :: 		countup.full = atoi(dta);
	MOVLW      setup_dta_L0+0
	MOVWF      FARG_atoi_s+0
	CALL       _atoi+0
	MOVF       R0+0, 0
	MOVWF      _countup+0
	MOVF       R0+1, 0
	MOVWF      _countup+1
;Loop counter.c,59 :: 		EEPROM_write(2, countup.lsb);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _countup+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Loop counter.c,60 :: 		EEPROM_write(3, countup.msb);
	MOVLW      3
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _countup+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Loop counter.c,61 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,62 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,63 :: 		counter.full = 0;
	CLRF       _counter+0
	CLRF       _counter+1
;Loop counter.c,64 :: 		delay_1sec();
	CALL       _Delay_1sec+0
;Loop counter.c,65 :: 		}
L_end_setup:
	RETURN
; end of _setup

_decrease_counter:

;Loop counter.c,67 :: 		void decrease_counter(){
;Loop counter.c,68 :: 		char dta[7], x = 0, y;
	CLRF       decrease_counter_x_L0+0
;Loop counter.c,69 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,70 :: 		lcd_cmd(_LCD_UNDERLINE_ON);
	MOVLW      14
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,71 :: 		lcd_out(1,1, "Minus Counter:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Loop_32counter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Loop counter.c,72 :: 		lcd_cmd(_LCD_SECOND_ROW);
	MOVLW      192
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,73 :: 		delay_1sec();
	CALL       _Delay_1sec+0
;Loop counter.c,74 :: 		while(1){
L_decrease_counter30:
;Loop counter.c,75 :: 		key = kp_get_key();
	CALL       _kp_get_key+0
	MOVF       R0+0, 0
	MOVWF      _key+0
;Loop counter.c,76 :: 		if(key == '#') break;
	MOVF       R0+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_decrease_counter32
	GOTO       L_decrease_counter31
L_decrease_counter32:
;Loop counter.c,77 :: 		if(key != '*'){
	MOVF       _key+0, 0
	XORLW      42
	BTFSC      STATUS+0, 2
	GOTO       L_decrease_counter33
;Loop counter.c,78 :: 		dta[x] = key;
	MOVF       decrease_counter_x_L0+0, 0
	ADDLW      decrease_counter_dta_L0+0
	MOVWF      FSR
	MOVF       _key+0, 0
	MOVWF      INDF+0
;Loop counter.c,79 :: 		lcd_chr_cp(key);
	MOVF       _key+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;Loop counter.c,80 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_decrease_counter34:
	DECFSZ     R13+0, 1
	GOTO       L_decrease_counter34
	DECFSZ     R12+0, 1
	GOTO       L_decrease_counter34
	DECFSZ     R11+0, 1
	GOTO       L_decrease_counter34
	NOP
	NOP
;Loop counter.c,81 :: 		x++;
	INCF       decrease_counter_x_L0+0, 1
;Loop counter.c,82 :: 		}
L_decrease_counter33:
;Loop counter.c,83 :: 		if(key == '*'){
	MOVF       _key+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_decrease_counter35
;Loop counter.c,84 :: 		lcd_cmd(_lcd_move_cursor_left);
	MOVLW      16
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,85 :: 		--x;
	DECF       decrease_counter_x_L0+0, 1
;Loop counter.c,86 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_decrease_counter36:
	DECFSZ     R13+0, 1
	GOTO       L_decrease_counter36
	DECFSZ     R12+0, 1
	GOTO       L_decrease_counter36
	DECFSZ     R11+0, 1
	GOTO       L_decrease_counter36
	NOP
	NOP
;Loop counter.c,87 :: 		}
L_decrease_counter35:
;Loop counter.c,88 :: 		}
	GOTO       L_decrease_counter30
L_decrease_counter31:
;Loop counter.c,89 :: 		dta[x] = 0;
	MOVF       decrease_counter_x_L0+0, 0
	ADDLW      decrease_counter_dta_L0+0
	MOVWF      FSR
	CLRF       INDF+0
;Loop counter.c,90 :: 		y = atoi(dta);
	MOVLW      decrease_counter_dta_L0+0
	MOVWF      FARG_atoi_s+0
	CALL       _atoi+0
;Loop counter.c,91 :: 		counter.full -= y;
	MOVF       R0+0, 0
	SUBWF      _counter+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _counter+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _counter+0
	MOVF       R0+1, 0
	MOVWF      _counter+1
;Loop counter.c,92 :: 		EEPROM_write(0, counter.lsb);
	CLRF       FARG_EEPROM_Write_Address+0
	MOVF       _counter+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Loop counter.c,93 :: 		EEPROM_write(1, counter.msb);
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _counter+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Loop counter.c,94 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,95 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,96 :: 		delay_1sec();
	CALL       _Delay_1sec+0
;Loop counter.c,97 :: 		}
L_end_decrease_counter:
	RETURN
; end of _decrease_counter

_main:

;Loop counter.c,99 :: 		void main() {
;Loop counter.c,100 :: 		lcd_init();
	CALL       _Lcd_Init+0
;Loop counter.c,101 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,102 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Loop counter.c,103 :: 		kp_init();
	CALL       _kp_init+0
;Loop counter.c,104 :: 		ADCON1 = 7;
	MOVLW      7
	MOVWF      ADCON1+0
;Loop counter.c,105 :: 		relay_dir = 0;
	BCF        TRISA0_bit+0, BitPos(TRISA0_bit+0)
;Loop counter.c,106 :: 		INTE_bit = 1;
	BSF        INTE_bit+0, BitPos(INTE_bit+0)
;Loop counter.c,107 :: 		INTF_bit = 0;
	BCF        INTF_bit+0, BitPos(INTF_bit+0)
;Loop counter.c,108 :: 		INTEDG_bit = 0;
	BCF        INTEDG_bit+0, BitPos(INTEDG_bit+0)
;Loop counter.c,109 :: 		GIE_bit = 1;
	BSF        GIE_bit+0, BitPos(GIE_bit+0)
;Loop counter.c,110 :: 		IRF = 0;
	BCF        _IRF+0, BitPos(_IRF+0)
;Loop counter.c,111 :: 		counter.lsb = EEPROM_read(0);
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _counter+0
;Loop counter.c,112 :: 		counter.msb = EEPROM_read(1);
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _counter+0
;Loop counter.c,113 :: 		countup.lsb = EEPROM_read(2);
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _countup+0
;Loop counter.c,114 :: 		countup.msb = EEPROM_read(3);
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _countup+0
;Loop counter.c,116 :: 		while(1){
L_main37:
;Loop counter.c,117 :: 		lcd_out(1,1, "WireLoop Counter");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Loop_32counter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Loop counter.c,118 :: 		key = kp_scan();
	CALL       _kp_scan+0
	MOVF       R0+0, 0
	MOVWF      _key+0
;Loop counter.c,119 :: 		if(key == '*') setup();
	MOVF       R0+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_main39
	CALL       _setup+0
L_main39:
;Loop counter.c,120 :: 		if(key == '0') decrease_counter();
	MOVF       _key+0, 0
	XORLW      48
	BTFSS      STATUS+0, 2
	GOTO       L_main40
	CALL       _decrease_counter+0
L_main40:
;Loop counter.c,121 :: 		if(key == '#') {
	MOVF       _key+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_main41
;Loop counter.c,122 :: 		relay_f = ~relay_f;
	MOVLW
	XORWF      _relay_f+0, 1
;Loop counter.c,123 :: 		if(relay_f) lcd_out(2,11, "RlyON ");
	BTFSS      _relay_f+0, BitPos(_relay_f+0)
	GOTO       L_main42
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_Loop_32counter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main43
L_main42:
;Loop counter.c,124 :: 		else lcd_out(2,11, "RlyOFF");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_Loop_32counter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main43:
;Loop counter.c,125 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main44:
	DECFSZ     R13+0, 1
	GOTO       L_main44
	DECFSZ     R12+0, 1
	GOTO       L_main44
	DECFSZ     R11+0, 1
	GOTO       L_main44
	NOP
	NOP
;Loop counter.c,126 :: 		}
L_main41:
;Loop counter.c,127 :: 		if(IRF && counter.full < countup.full){
	BTFSS      _IRF+0, BitPos(_IRF+0)
	GOTO       L_main47
	MOVF       _countup+1, 0
	SUBWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main64
	MOVF       _countup+0, 0
	SUBWF      _counter+0, 0
L__main64:
	BTFSC      STATUS+0, 0
	GOTO       L_main47
L__main55:
;Loop counter.c,128 :: 		if(key == '5') counter.full--;
	MOVF       _key+0, 0
	XORLW      53
	BTFSS      STATUS+0, 2
	GOTO       L_main48
	MOVLW      1
	SUBWF      _counter+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _counter+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _counter+0
	MOVF       R0+1, 0
	MOVWF      _counter+1
	GOTO       L_main49
L_main48:
;Loop counter.c,129 :: 		else counter.full++;
	MOVF       _counter+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _counter+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _counter+0
	MOVF       R0+1, 0
	MOVWF      _counter+1
L_main49:
;Loop counter.c,130 :: 		EEPROM_write(0, counter.lsb);
	CLRF       FARG_EEPROM_Write_Address+0
	MOVF       _counter+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Loop counter.c,131 :: 		EEPROM_write(1, counter.msb);
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _counter+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Loop counter.c,132 :: 		IRF = 0;
	BCF        _IRF+0, BitPos(_IRF+0)
;Loop counter.c,133 :: 		}
	GOTO       L_main50
L_main47:
;Loop counter.c,134 :: 		else relay = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
L_main50:
;Loop counter.c,135 :: 		if(relay_f && counter.full < countup.full) relay = 1;
	BTFSS      _relay_f+0, BitPos(_relay_f+0)
	GOTO       L_main53
	MOVF       _countup+1, 0
	SUBWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main65
	MOVF       _countup+0, 0
	SUBWF      _counter+0, 0
L__main65:
	BTFSC      STATUS+0, 0
	GOTO       L_main53
L__main54:
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
L_main53:
;Loop counter.c,136 :: 		IntToStrWithZeros(counter.full, txt);
	MOVF       _counter+0, 0
	MOVWF      FARG_IntToStrWithZeros_input+0
	MOVF       _counter+1, 0
	MOVWF      FARG_IntToStrWithZeros_input+1
	MOVLW      _txt+0
	MOVWF      FARG_IntToStrWithZeros_output+0
	CALL       _IntToStrWithZeros+0
;Loop counter.c,137 :: 		lcd_out(2,1, txt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Loop counter.c,138 :: 		}
	GOTO       L_main37
;Loop counter.c,139 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
