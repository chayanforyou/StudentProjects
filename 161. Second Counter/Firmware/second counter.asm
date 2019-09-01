
_transfer_data:

;second counter.c,15 :: 		void transfer_data(unsigned short temp){   //Transfer Data via 74HC595
;second counter.c,16 :: 		temp = anode[temp];
	MOVF       FARG_transfer_data_temp+0, 0
	ADDLW      _anode+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_transfer_data_temp+0
;second counter.c,17 :: 		DS = temp.b7; SH = 1; SH = 0;
	BTFSC      FARG_transfer_data_temp+0, 7
	GOTO       L__transfer_data11
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L__transfer_data12
L__transfer_data11:
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
L__transfer_data12:
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;second counter.c,18 :: 		DS = temp.b6; SH = 1; SH = 0;
	BTFSC      FARG_transfer_data_temp+0, 6
	GOTO       L__transfer_data13
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L__transfer_data14
L__transfer_data13:
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
L__transfer_data14:
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;second counter.c,19 :: 		DS = temp.b5; SH = 1; SH = 0;
	BTFSC      FARG_transfer_data_temp+0, 5
	GOTO       L__transfer_data15
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L__transfer_data16
L__transfer_data15:
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
L__transfer_data16:
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;second counter.c,20 :: 		DS = temp.b4; SH = 1; SH = 0;
	BTFSC      FARG_transfer_data_temp+0, 4
	GOTO       L__transfer_data17
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L__transfer_data18
L__transfer_data17:
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
L__transfer_data18:
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;second counter.c,21 :: 		DS = temp.b3; SH = 1; SH = 0;
	BTFSC      FARG_transfer_data_temp+0, 3
	GOTO       L__transfer_data19
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L__transfer_data20
L__transfer_data19:
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
L__transfer_data20:
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;second counter.c,22 :: 		DS = temp.b2; SH = 1; SH = 0;
	BTFSC      FARG_transfer_data_temp+0, 2
	GOTO       L__transfer_data21
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L__transfer_data22
L__transfer_data21:
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
L__transfer_data22:
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;second counter.c,23 :: 		DS = temp.b1; SH = 1; SH = 0;
	BTFSC      FARG_transfer_data_temp+0, 1
	GOTO       L__transfer_data23
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L__transfer_data24
L__transfer_data23:
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
L__transfer_data24:
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;second counter.c,24 :: 		DS = temp.b0; SH = 1; SH = 0;
	BTFSC      FARG_transfer_data_temp+0, 0
	GOTO       L__transfer_data25
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L__transfer_data26
L__transfer_data25:
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
L__transfer_data26:
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;second counter.c,25 :: 		ST = 1; ST = 0; DS = 0;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;second counter.c,26 :: 		}
L_end_transfer_data:
	RETURN
; end of _transfer_data

_clear_digit:

;second counter.c,28 :: 		void clear_digit(){
;second counter.c,29 :: 		digit_1 = 0; digit_2 = 0;
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
;second counter.c,30 :: 		digit_3 = 0; digit_4 = 0;
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
;second counter.c,31 :: 		}
L_end_clear_digit:
	RETURN
; end of _clear_digit

_show_segment:

;second counter.c,33 :: 		void show_segment(unsigned int count){
;second counter.c,35 :: 		digit[0] = count / 1000;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_show_segment_count+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_segment_count+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      show_segment_digit_L0+0
;second counter.c,36 :: 		digit[1] = (count % 1000) / 100;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_show_segment_count+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_segment_count+1, 0
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
	MOVWF      show_segment_digit_L0+1
;second counter.c,37 :: 		digit[2] = (count % 100) / 10;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_show_segment_count+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_segment_count+1, 0
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
	MOVWF      show_segment_digit_L0+2
;second counter.c,38 :: 		digit[3] = count % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_show_segment_count+0, 0
	MOVWF      R0+0
	MOVF       FARG_show_segment_count+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      show_segment_digit_L0+3
;second counter.c,40 :: 		transfer_data(digit[0]);
	MOVF       show_segment_digit_L0+0, 0
	MOVWF      FARG_transfer_data_temp+0
	CALL       _transfer_data+0
;second counter.c,41 :: 		digit_1 = 1; delay_ms(1); clear_digit();
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_show_segment0:
	DECFSZ     R13+0, 1
	GOTO       L_show_segment0
	DECFSZ     R12+0, 1
	GOTO       L_show_segment0
	NOP
	NOP
	CALL       _clear_digit+0
;second counter.c,42 :: 		transfer_data(digit[1]);
	MOVF       show_segment_digit_L0+1, 0
	MOVWF      FARG_transfer_data_temp+0
	CALL       _transfer_data+0
;second counter.c,43 :: 		digit_2 = 1; delay_ms(1); clear_digit();
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_show_segment1:
	DECFSZ     R13+0, 1
	GOTO       L_show_segment1
	DECFSZ     R12+0, 1
	GOTO       L_show_segment1
	NOP
	NOP
	CALL       _clear_digit+0
;second counter.c,44 :: 		transfer_data(digit[2]);
	MOVF       show_segment_digit_L0+2, 0
	MOVWF      FARG_transfer_data_temp+0
	CALL       _transfer_data+0
;second counter.c,45 :: 		digit_3 = 1; delay_ms(1); clear_digit();
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_show_segment2:
	DECFSZ     R13+0, 1
	GOTO       L_show_segment2
	DECFSZ     R12+0, 1
	GOTO       L_show_segment2
	NOP
	NOP
	CALL       _clear_digit+0
;second counter.c,46 :: 		transfer_data(digit[3]);
	MOVF       show_segment_digit_L0+3, 0
	MOVWF      FARG_transfer_data_temp+0
	CALL       _transfer_data+0
;second counter.c,47 :: 		digit_4 = 1; delay_ms(1); clear_digit();
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_show_segment3:
	DECFSZ     R13+0, 1
	GOTO       L_show_segment3
	DECFSZ     R12+0, 1
	GOTO       L_show_segment3
	NOP
	NOP
	CALL       _clear_digit+0
;second counter.c,48 :: 		}
L_end_show_segment:
	RETURN
; end of _show_segment

_main:

;second counter.c,50 :: 		void main() {
;second counter.c,51 :: 		ANSEL = 0x00;
	CLRF       ANSEL+0
;second counter.c,52 :: 		CMCON = 0x07;
	MOVLW      7
	MOVWF      CMCON+0
;second counter.c,53 :: 		TRISA = 0x00; PORTA = 0x00;
	CLRF       TRISA+0
	CLRF       PORTA+0
;second counter.c,54 :: 		TRISC = 0x00; PORTC = 0x00;
	CLRF       TRISC+0
	CLRF       PORTC+0
;second counter.c,56 :: 		while(1){
L_main4:
;second counter.c,57 :: 		for(delay = 0; delay < 250; delay++) show_segment(counter);
	CLRF       _delay+0
	CLRF       _delay+1
L_main6:
	MOVLW      0
	SUBWF      _delay+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVLW      250
	SUBWF      _delay+0, 0
L__main30:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
	MOVF       _counter+0, 0
	MOVWF      FARG_show_segment_count+0
	MOVF       _counter+1, 0
	MOVWF      FARG_show_segment_count+1
	CALL       _show_segment+0
	INCF       _delay+0, 1
	BTFSC      STATUS+0, 2
	INCF       _delay+1, 1
	GOTO       L_main6
L_main7:
;second counter.c,58 :: 		counter--;
	MOVLW      1
	SUBWF      _counter+0, 1
	BTFSS      STATUS+0, 0
	DECF       _counter+1, 1
;second counter.c,59 :: 		if(counter < 0) counter = 0;
	MOVLW      0
	SUBWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVLW      0
	SUBWF      _counter+0, 0
L__main31:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
	CLRF       _counter+0
	CLRF       _counter+1
L_main9:
;second counter.c,60 :: 		}
	GOTO       L_main4
;second counter.c,61 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
