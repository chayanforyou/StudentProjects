
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

;Loop counter.c,20 :: 		void interrupt(){
;Loop counter.c,21 :: 		if(INTF_bit){
	BTFSS      INTF_bit+0, BitPos(INTF_bit+0)
	GOTO       L_interrupt22
;Loop counter.c,22 :: 		INTF_bit = 0;
	BCF        INTF_bit+0, BitPos(INTF_bit+0)
;Loop counter.c,23 :: 		IRF = 1;
	BSF        _IRF+0, BitPos(_IRF+0)
;Loop counter.c,24 :: 		}
L_interrupt22:
;Loop counter.c,25 :: 		}
L_end_interrupt:
L__interrupt82:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_clear_digit:

;Loop counter.c,27 :: 		void clear_digit(){
;Loop counter.c,28 :: 		digit_1 = 0; digit_2 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Loop counter.c,29 :: 		digit_3 = 0; digit_4 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Loop counter.c,30 :: 		}
L_end_clear_digit:
	RETURN
; end of _clear_digit

_masking:

;Loop counter.c,32 :: 		void masking(unsigned short temp){
;Loop counter.c,33 :: 		temp = anode[temp];
	MOVF       FARG_masking_temp+0, 0
	ADDLW      _anode+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R2+0
	MOVF       R2+0, 0
	MOVWF      FARG_masking_temp+0
;Loop counter.c,34 :: 		PORTB = temp << 1;
	MOVF       R2+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Loop counter.c,35 :: 		}
L_end_masking:
	RETURN
; end of _masking

_segment_int:

;Loop counter.c,37 :: 		void segment_int(unsigned int count){
;Loop counter.c,38 :: 		digit[0] = count / 1000;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_segment_int_count+0, 0
	MOVWF      R0+0
	MOVF       FARG_segment_int_count+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      _digit+0
;Loop counter.c,39 :: 		digit[1] = (count % 1000) / 100;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_segment_int_count+0, 0
	MOVWF      R0+0
	MOVF       FARG_segment_int_count+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      _digit+1
;Loop counter.c,40 :: 		digit[2] = (count % 100) / 10;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_segment_int_count+0, 0
	MOVWF      R0+0
	MOVF       FARG_segment_int_count+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      _digit+2
;Loop counter.c,41 :: 		digit[3] = count % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_segment_int_count+0, 0
	MOVWF      R0+0
	MOVF       FARG_segment_int_count+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _digit+3
;Loop counter.c,43 :: 		masking(digit[0]);
	MOVF       _digit+0, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,44 :: 		digit_1 = 1; delay_ms(1); clear_digit();
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_segment_int23:
	DECFSZ     R13+0, 1
	GOTO       L_segment_int23
	DECFSZ     R12+0, 1
	GOTO       L_segment_int23
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,45 :: 		masking(digit[1]);
	MOVF       _digit+1, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,46 :: 		digit_2 = 1; delay_ms(1); clear_digit();
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_segment_int24:
	DECFSZ     R13+0, 1
	GOTO       L_segment_int24
	DECFSZ     R12+0, 1
	GOTO       L_segment_int24
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,47 :: 		masking(digit[2]);
	MOVF       _digit+2, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,48 :: 		digit_3 = 1; delay_ms(1); clear_digit();
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_segment_int25:
	DECFSZ     R13+0, 1
	GOTO       L_segment_int25
	DECFSZ     R12+0, 1
	GOTO       L_segment_int25
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,49 :: 		masking(digit[3]);
	MOVF       _digit+3, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,50 :: 		digit_4 = 1; delay_ms(1); clear_digit();
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_segment_int26:
	DECFSZ     R13+0, 1
	GOTO       L_segment_int26
	DECFSZ     R12+0, 1
	GOTO       L_segment_int26
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,51 :: 		}
L_end_segment_int:
	RETURN
; end of _segment_int

_blink:

;Loop counter.c,53 :: 		void blink(short seg){
;Loop counter.c,54 :: 		if(seg == 0){
	MOVF       FARG_blink_seg+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_blink27
;Loop counter.c,55 :: 		masking(digit[0]);
	MOVF       _digit+0, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,56 :: 		digit_1 = 1; delay_ms(1); clear_digit();
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_blink28:
	DECFSZ     R13+0, 1
	GOTO       L_blink28
	DECFSZ     R12+0, 1
	GOTO       L_blink28
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,57 :: 		}
	GOTO       L_blink29
L_blink27:
;Loop counter.c,58 :: 		else if(seg == 1){
	MOVF       FARG_blink_seg+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_blink30
;Loop counter.c,59 :: 		masking(digit[1]);
	MOVF       _digit+1, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,60 :: 		digit_2 = 1; delay_ms(1); clear_digit();
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_blink31:
	DECFSZ     R13+0, 1
	GOTO       L_blink31
	DECFSZ     R12+0, 1
	GOTO       L_blink31
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,61 :: 		}
	GOTO       L_blink32
L_blink30:
;Loop counter.c,62 :: 		else if(seg == 2){
	MOVF       FARG_blink_seg+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_blink33
;Loop counter.c,63 :: 		masking(digit[2]);
	MOVF       _digit+2, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,64 :: 		digit_3 = 1; delay_ms(1); clear_digit();
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_blink34:
	DECFSZ     R13+0, 1
	GOTO       L_blink34
	DECFSZ     R12+0, 1
	GOTO       L_blink34
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,65 :: 		}
	GOTO       L_blink35
L_blink33:
;Loop counter.c,66 :: 		else if(seg == 3){
	MOVF       FARG_blink_seg+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_blink36
;Loop counter.c,67 :: 		masking(digit[3]);
	MOVF       _digit+3, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,68 :: 		digit_4 = 1; delay_ms(1); clear_digit();
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_blink37:
	DECFSZ     R13+0, 1
	GOTO       L_blink37
	DECFSZ     R12+0, 1
	GOTO       L_blink37
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,69 :: 		}
L_blink36:
L_blink35:
L_blink32:
L_blink29:
;Loop counter.c,70 :: 		}
L_end_blink:
	RETURN
; end of _blink

_setup:

;Loop counter.c,72 :: 		void setup(){
;Loop counter.c,73 :: 		int de, x = 0;
	CLRF       setup_x_L0+0
	CLRF       setup_x_L0+1
;Loop counter.c,74 :: 		counter.full = 0;
	CLRF       _counter+0
	CLRF       _counter+1
;Loop counter.c,75 :: 		delay_1sec();
	CALL       _Delay_1sec+0
;Loop counter.c,77 :: 		while(1){
L_setup38:
;Loop counter.c,78 :: 		key = kp_scan();
	CALL       _kp_scan+0
	MOVF       R0+0, 0
	MOVWF      _key+0
;Loop counter.c,79 :: 		if(key >= '0' && key <= '9') digit[x] = key - 48;
	MOVLW      48
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_setup42
	MOVF       _key+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L_setup42
L__setup75:
	MOVF       setup_x_L0+0, 0
	ADDLW      _digit+0
	MOVWF      FSR
	MOVLW      48
	SUBWF      _key+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      INDF+0
L_setup42:
;Loop counter.c,80 :: 		if(key == '*') {
	MOVF       _key+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_setup43
;Loop counter.c,81 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_setup44:
	DECFSZ     R13+0, 1
	GOTO       L_setup44
	DECFSZ     R12+0, 1
	GOTO       L_setup44
	DECFSZ     R11+0, 1
	GOTO       L_setup44
	NOP
	NOP
;Loop counter.c,82 :: 		x++;
	INCF       setup_x_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       setup_x_L0+1, 1
;Loop counter.c,83 :: 		if(x > 3) x = 0;
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      setup_x_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__setup88
	MOVF       setup_x_L0+0, 0
	SUBLW      3
L__setup88:
	BTFSC      STATUS+0, 0
	GOTO       L_setup45
	CLRF       setup_x_L0+0
	CLRF       setup_x_L0+1
L_setup45:
;Loop counter.c,84 :: 		}
L_setup43:
;Loop counter.c,85 :: 		if(key == '#') break;
	MOVF       _key+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_setup46
	GOTO       L_setup39
L_setup46:
;Loop counter.c,87 :: 		for(de = 0; de < 100; de++){
	CLRF       setup_de_L0+0
	CLRF       setup_de_L0+1
L_setup47:
	MOVLW      128
	XORWF      setup_de_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__setup89
	MOVLW      100
	SUBWF      setup_de_L0+0, 0
L__setup89:
	BTFSC      STATUS+0, 0
	GOTO       L_setup48
;Loop counter.c,88 :: 		masking(digit[0]);
	MOVF       _digit+0, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,89 :: 		digit_1 = 1; delay_ms(1); clear_digit();
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_setup50:
	DECFSZ     R13+0, 1
	GOTO       L_setup50
	DECFSZ     R12+0, 1
	GOTO       L_setup50
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,90 :: 		masking(digit[1]);
	MOVF       _digit+1, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,91 :: 		digit_2 = 1; delay_ms(1); clear_digit();
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_setup51:
	DECFSZ     R13+0, 1
	GOTO       L_setup51
	DECFSZ     R12+0, 1
	GOTO       L_setup51
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,92 :: 		masking(digit[2]);
	MOVF       _digit+2, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,93 :: 		digit_3 = 1; delay_ms(1); clear_digit();
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_setup52:
	DECFSZ     R13+0, 1
	GOTO       L_setup52
	DECFSZ     R12+0, 1
	GOTO       L_setup52
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,94 :: 		masking(digit[3]);
	MOVF       _digit+3, 0
	MOVWF      FARG_masking_temp+0
	CALL       _masking+0
;Loop counter.c,95 :: 		digit_4 = 1; delay_ms(1); clear_digit();
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_setup53:
	DECFSZ     R13+0, 1
	GOTO       L_setup53
	DECFSZ     R12+0, 1
	GOTO       L_setup53
	NOP
	NOP
	CALL       _clear_digit+0
;Loop counter.c,87 :: 		for(de = 0; de < 100; de++){
	INCF       setup_de_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       setup_de_L0+1, 1
;Loop counter.c,96 :: 		}
	GOTO       L_setup47
L_setup48:
;Loop counter.c,97 :: 		for(de = 0; de < 300; de++) blink(x);
	CLRF       setup_de_L0+0
	CLRF       setup_de_L0+1
L_setup54:
	MOVLW      128
	XORWF      setup_de_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__setup90
	MOVLW      44
	SUBWF      setup_de_L0+0, 0
L__setup90:
	BTFSC      STATUS+0, 0
	GOTO       L_setup55
	MOVF       setup_x_L0+0, 0
	MOVWF      FARG_blink_seg+0
	CALL       _blink+0
	INCF       setup_de_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       setup_de_L0+1, 1
	GOTO       L_setup54
L_setup55:
;Loop counter.c,98 :: 		}
	GOTO       L_setup38
L_setup39:
;Loop counter.c,99 :: 		for(x = 0; x < 4; x++) digit[x] = digit[x] + 48;
	CLRF       setup_x_L0+0
	CLRF       setup_x_L0+1
L_setup57:
	MOVLW      128
	XORWF      setup_x_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__setup91
	MOVLW      4
	SUBWF      setup_x_L0+0, 0
L__setup91:
	BTFSC      STATUS+0, 0
	GOTO       L_setup58
	MOVF       setup_x_L0+0, 0
	ADDLW      _digit+0
	MOVWF      R1+0
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVLW      48
	ADDWF      INDF+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	INCF       setup_x_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       setup_x_L0+1, 1
	GOTO       L_setup57
L_setup58:
;Loop counter.c,100 :: 		digit[4] = 0;
	CLRF       _digit+4
;Loop counter.c,101 :: 		countup.full = atoi(digit);
	MOVLW      _digit+0
	MOVWF      FARG_atoi_s+0
	CALL       _atoi+0
	MOVF       R0+0, 0
	MOVWF      _countup+0
	MOVF       R0+1, 0
	MOVWF      _countup+1
;Loop counter.c,102 :: 		EEPROM_write(2, countup.lsb);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _countup+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Loop counter.c,103 :: 		EEPROM_write(3, countup.msb);
	MOVLW      3
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _countup+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Loop counter.c,104 :: 		}
L_end_setup:
	RETURN
; end of _setup

_main:

;Loop counter.c,106 :: 		void main() {
;Loop counter.c,107 :: 		kp_init();
	CALL       _kp_init+0
;Loop counter.c,108 :: 		ADCON1 = 7;
	MOVLW      7
	MOVWF      ADCON1+0
;Loop counter.c,109 :: 		TRISA = 0x00;
	CLRF       TRISA+0
;Loop counter.c,110 :: 		PORTA = 0x00;
	CLRF       PORTA+0
;Loop counter.c,111 :: 		TRISB = 0x01;
	MOVLW      1
	MOVWF      TRISB+0
;Loop counter.c,112 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;Loop counter.c,113 :: 		INTE_bit = 1;
	BSF        INTE_bit+0, BitPos(INTE_bit+0)
;Loop counter.c,114 :: 		INTF_bit = 0;
	BCF        INTF_bit+0, BitPos(INTF_bit+0)
;Loop counter.c,115 :: 		INTEDG_bit = 0;
	BCF        INTEDG_bit+0, BitPos(INTEDG_bit+0)
;Loop counter.c,116 :: 		GIE_bit = 1;
	BSF        GIE_bit+0, BitPos(GIE_bit+0)
;Loop counter.c,117 :: 		IRF = 0;
	BCF        _IRF+0, BitPos(_IRF+0)
;Loop counter.c,118 :: 		counter.lsb = EEPROM_read(0);
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _counter+0
;Loop counter.c,119 :: 		counter.msb = EEPROM_read(1);
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _counter+0
;Loop counter.c,120 :: 		countup.lsb = EEPROM_read(2);
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _countup+0
;Loop counter.c,121 :: 		countup.msb = EEPROM_read(3);
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _countup+0
;Loop counter.c,123 :: 		while(1){
L_main60:
;Loop counter.c,124 :: 		key = kp_scan();
	CALL       _kp_scan+0
	MOVF       R0+0, 0
	MOVWF      _key+0
;Loop counter.c,125 :: 		if(key == '*') setup();
	MOVF       R0+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_main62
	CALL       _setup+0
L_main62:
;Loop counter.c,126 :: 		if(key == '#'){
	MOVF       _key+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_main63
;Loop counter.c,127 :: 		relay_f = ~relay_f;
	MOVLW
	XORWF      _relay_f+0, 1
;Loop counter.c,128 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main64:
	DECFSZ     R13+0, 1
	GOTO       L_main64
	DECFSZ     R12+0, 1
	GOTO       L_main64
	DECFSZ     R11+0, 1
	GOTO       L_main64
	NOP
	NOP
;Loop counter.c,129 :: 		}
L_main63:
;Loop counter.c,131 :: 		segment_int(counter.full);
	MOVF       _counter+0, 0
	MOVWF      FARG_segment_int_count+0
	MOVF       _counter+1, 0
	MOVWF      FARG_segment_int_count+1
	CALL       _segment_int+0
;Loop counter.c,133 :: 		if(IRF && counter.full < countup.full) {
	BTFSS      _IRF+0, BitPos(_IRF+0)
	GOTO       L_main67
	MOVF       _countup+1, 0
	SUBWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main93
	MOVF       _countup+0, 0
	SUBWF      _counter+0, 0
L__main93:
	BTFSC      STATUS+0, 0
	GOTO       L_main67
L__main77:
;Loop counter.c,134 :: 		if(relay_f) relay = 1;
	BTFSS      _relay_f+0, BitPos(_relay_f+0)
	GOTO       L_main68
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
L_main68:
;Loop counter.c,135 :: 		if(key == '5') counter.full--;
	MOVF       _key+0, 0
	XORLW      53
	BTFSS      STATUS+0, 2
	GOTO       L_main69
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
	GOTO       L_main70
L_main69:
;Loop counter.c,136 :: 		else counter.full++;
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
L_main70:
;Loop counter.c,137 :: 		EEPROM_write(0, counter.lsb);
	CLRF       FARG_EEPROM_Write_Address+0
	MOVF       _counter+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Loop counter.c,138 :: 		EEPROM_write(1, counter.msb);
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _counter+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Loop counter.c,139 :: 		IRF = 0;
	BCF        _IRF+0, BitPos(_IRF+0)
;Loop counter.c,140 :: 		}
	GOTO       L_main71
L_main67:
;Loop counter.c,141 :: 		else relay = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
L_main71:
;Loop counter.c,142 :: 		if(relay_f && counter.full < countup.full) relay = 1;
	BTFSS      _relay_f+0, BitPos(_relay_f+0)
	GOTO       L_main74
	MOVF       _countup+1, 0
	SUBWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main94
	MOVF       _countup+0, 0
	SUBWF      _counter+0, 0
L__main94:
	BTFSC      STATUS+0, 0
	GOTO       L_main74
L__main76:
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
L_main74:
;Loop counter.c,143 :: 		}
	GOTO       L_main60
;Loop counter.c,144 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
