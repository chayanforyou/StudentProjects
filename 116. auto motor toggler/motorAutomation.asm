
_clear:

;motorAutomation.c,19 :: 		void clear(){
;motorAutomation.c,20 :: 		digit_1 = OFF; digit_2 = OFF; digit_3 = OFF;
	BCF        RC4_bit+0, BitPos(RC4_bit+0)
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;motorAutomation.c,21 :: 		}
L_end_clear:
	RETURN
; end of _clear

_show_off:

;motorAutomation.c,23 :: 		void show_off(){
;motorAutomation.c,24 :: 		display = font[0];
	MOVLW      192
	MOVWF      PORTB+0
;motorAutomation.c,25 :: 		digit_1 = ON; delay_ms(1); clear();
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_show_off0:
	DECFSZ     R13+0, 1
	GOTO       L_show_off0
	DECFSZ     R12+0, 1
	GOTO       L_show_off0
	NOP
	NOP
	CALL       _clear+0
;motorAutomation.c,26 :: 		display = font[1];
	MOVLW      142
	MOVWF      PORTB+0
;motorAutomation.c,27 :: 		digit_2 = ON; delay_ms(1); clear();
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_show_off1:
	DECFSZ     R13+0, 1
	GOTO       L_show_off1
	DECFSZ     R12+0, 1
	GOTO       L_show_off1
	NOP
	NOP
	CALL       _clear+0
;motorAutomation.c,28 :: 		display = font[1];
	MOVLW      142
	MOVWF      PORTB+0
;motorAutomation.c,29 :: 		digit_3 = ON; delay_ms(1); clear();
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_show_off2:
	DECFSZ     R13+0, 1
	GOTO       L_show_off2
	DECFSZ     R12+0, 1
	GOTO       L_show_off2
	NOP
	NOP
	CALL       _clear+0
;motorAutomation.c,30 :: 		}
L_end_show_off:
	RETURN
; end of _show_off

_segment_byte:

;motorAutomation.c,32 :: 		void segment_byte(short value){
;motorAutomation.c,34 :: 		temp = value / 10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_segment_byte_value+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
;motorAutomation.c,35 :: 		display = anode[temp];
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
;motorAutomation.c,36 :: 		digit_2 = ON; delay_ms(1); clear();
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_segment_byte3:
	DECFSZ     R13+0, 1
	GOTO       L_segment_byte3
	DECFSZ     R12+0, 1
	GOTO       L_segment_byte3
	NOP
	NOP
	CALL       _clear+0
;motorAutomation.c,37 :: 		temp = value % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_segment_byte_value+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
;motorAutomation.c,38 :: 		display = anode[temp];
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
;motorAutomation.c,39 :: 		digit_3 = ON; delay_ms(1); clear();
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_segment_byte4:
	DECFSZ     R13+0, 1
	GOTO       L_segment_byte4
	DECFSZ     R12+0, 1
	GOTO       L_segment_byte4
	NOP
	NOP
	CALL       _clear+0
;motorAutomation.c,40 :: 		}
L_end_segment_byte:
	RETURN
; end of _segment_byte

_read_time:

;motorAutomation.c,42 :: 		void read_time(){
;motorAutomation.c,43 :: 		while(time_key){
L_read_time5:
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_read_time6
;motorAutomation.c,44 :: 		adc = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc+0
;motorAutomation.c,45 :: 		timeout = adc / 2.59;
	CALL       _byte2double+0
	MOVLW      143
	MOVWF      R4+0
	MOVLW      194
	MOVWF      R4+1
	MOVLW      37
	MOVWF      R4+2
	MOVLW      128
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	CALL       _double2byte+0
	MOVF       R0+0, 0
	MOVWF      _timeout+0
;motorAutomation.c,46 :: 		display = font[2];
	MOVLW      161
	MOVWF      PORTB+0
;motorAutomation.c,47 :: 		digit_1 = ON; delay_ms(1); clear();
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_read_time7:
	DECFSZ     R13+0, 1
	GOTO       L_read_time7
	DECFSZ     R12+0, 1
	GOTO       L_read_time7
	NOP
	NOP
	CALL       _clear+0
;motorAutomation.c,48 :: 		segment_byte(timeout);
	MOVF       _timeout+0, 0
	MOVWF      FARG_segment_byte_value+0
	CALL       _segment_byte+0
;motorAutomation.c,49 :: 		}
	GOTO       L_read_time5
L_read_time6:
;motorAutomation.c,50 :: 		}
L_end_read_time:
	RETURN
; end of _read_time

_animation:

;motorAutomation.c,52 :: 		void animation(){
;motorAutomation.c,53 :: 		switch(anime){
	GOTO       L_animation8
;motorAutomation.c,54 :: 		case 0: display = 254; break;
L_animation10:
	MOVLW      254
	MOVWF      PORTB+0
	GOTO       L_animation9
;motorAutomation.c,55 :: 		case 1: display = 253; break;
L_animation11:
	MOVLW      253
	MOVWF      PORTB+0
	GOTO       L_animation9
;motorAutomation.c,56 :: 		case 2: display = 251; break;
L_animation12:
	MOVLW      251
	MOVWF      PORTB+0
	GOTO       L_animation9
;motorAutomation.c,57 :: 		case 3: display = 247; break;
L_animation13:
	MOVLW      247
	MOVWF      PORTB+0
	GOTO       L_animation9
;motorAutomation.c,58 :: 		case 4: display = 239; break;
L_animation14:
	MOVLW      239
	MOVWF      PORTB+0
	GOTO       L_animation9
;motorAutomation.c,59 :: 		case 5: display = 223; break;
L_animation15:
	MOVLW      223
	MOVWF      PORTB+0
	GOTO       L_animation9
;motorAutomation.c,60 :: 		}
L_animation8:
	MOVF       _anime+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_animation10
	MOVF       _anime+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_animation11
	MOVF       _anime+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_animation12
	MOVF       _anime+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_animation13
	MOVF       _anime+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_animation14
	MOVF       _anime+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_animation15
L_animation9:
;motorAutomation.c,61 :: 		digit_1 = ON; delay_ms(1); clear();
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_animation16:
	DECFSZ     R13+0, 1
	GOTO       L_animation16
	DECFSZ     R12+0, 1
	GOTO       L_animation16
	NOP
	NOP
	CALL       _clear+0
;motorAutomation.c,62 :: 		}
L_end_animation:
	RETURN
; end of _animation

_InitTimer1:

;motorAutomation.c,64 :: 		void InitTimer1(){
;motorAutomation.c,65 :: 		T1CON = 0x21;
	MOVLW      33
	MOVWF      T1CON+0
;motorAutomation.c,66 :: 		TMR1IF_bit = 0;
	BCF        TMR1IF_bit+0, BitPos(TMR1IF_bit+0)
;motorAutomation.c,67 :: 		TMR1H = 0x3C;
	MOVLW      60
	MOVWF      TMR1H+0
;motorAutomation.c,68 :: 		TMR1L = 0xB0;
	MOVLW      176
	MOVWF      TMR1L+0
;motorAutomation.c,69 :: 		TMR1IE_bit = 1;
	BSF        TMR1IE_bit+0, BitPos(TMR1IE_bit+0)
;motorAutomation.c,70 :: 		INTCON = 0xC0;
	MOVLW      192
	MOVWF      INTCON+0
;motorAutomation.c,71 :: 		}
L_end_InitTimer1:
	RETURN
; end of _InitTimer1

_Interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;motorAutomation.c,73 :: 		void Interrupt(){
;motorAutomation.c,74 :: 		if (TMR1IF_bit){
	BTFSS      TMR1IF_bit+0, BitPos(TMR1IF_bit+0)
	GOTO       L_Interrupt17
;motorAutomation.c,75 :: 		TMR1IF_bit = 0;
	BCF        TMR1IF_bit+0, BitPos(TMR1IF_bit+0)
;motorAutomation.c,76 :: 		TMR1H = 0x3C;
	MOVLW      60
	MOVWF      TMR1H+0
;motorAutomation.c,77 :: 		TMR1L = 0xB0;
	MOVLW      176
	MOVWF      TMR1L+0
;motorAutomation.c,78 :: 		if(timer_flag) {ms++; anime++;}
	BTFSS      _timer_flag+0, BitPos(_timer_flag+0)
	GOTO       L_Interrupt18
	INCF       _ms+0, 1
	BTFSC      STATUS+0, 2
	INCF       _ms+1, 1
	INCF       _anime+0, 1
L_Interrupt18:
;motorAutomation.c,79 :: 		}
L_Interrupt17:
;motorAutomation.c,80 :: 		}
L_end_Interrupt:
L__Interrupt42:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _Interrupt

_main:

;motorAutomation.c,82 :: 		void main() {
;motorAutomation.c,83 :: 		TRISC = 0x0A; PORTC = 0x00;
	MOVLW      10
	MOVWF      TRISC+0
	CLRF       PORTC+0
;motorAutomation.c,84 :: 		TRISB = 0x00; PORTB = 0x00;
	CLRF       TRISB+0
	CLRF       PORTB+0
;motorAutomation.c,85 :: 		InitTimer1();
	CALL       _InitTimer1+0
;motorAutomation.c,86 :: 		timer_flag = 0;
	BCF        _timer_flag+0, BitPos(_timer_flag+0)
;motorAutomation.c,87 :: 		motor_flag = 0;
	BCF        _motor_flag+0, BitPos(_motor_flag+0)
;motorAutomation.c,88 :: 		adc = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc+0
;motorAutomation.c,89 :: 		timeout = adc / 2.59;
	CALL       _byte2double+0
	MOVLW      143
	MOVWF      R4+0
	MOVLW      194
	MOVWF      R4+1
	MOVLW      37
	MOVWF      R4+2
	MOVLW      128
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	CALL       _double2byte+0
	MOVF       R0+0, 0
	MOVWF      _timeout+0
;motorAutomation.c,91 :: 		while(1){
L_main19:
;motorAutomation.c,92 :: 		if(motor_flag == 0){
	BTFSC      _motor_flag+0, BitPos(_motor_flag+0)
	GOTO       L_main21
;motorAutomation.c,93 :: 		motor = 0;
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;motorAutomation.c,94 :: 		timer_flag = 0;
	BCF        _timer_flag+0, BitPos(_timer_flag+0)
;motorAutomation.c,95 :: 		ms = 0;
	CLRF       _ms+0
	CLRF       _ms+1
;motorAutomation.c,96 :: 		if(time_key) read_time();
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_main22
	CALL       _read_time+0
L_main22:
;motorAutomation.c,97 :: 		show_off();
	CALL       _show_off+0
;motorAutomation.c,98 :: 		}
	GOTO       L_main23
L_main21:
;motorAutomation.c,100 :: 		motor = 1;
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
;motorAutomation.c,101 :: 		timer_flag = 1;
	BSF        _timer_flag+0, BitPos(_timer_flag+0)
;motorAutomation.c,102 :: 		countdown = timeout;
	MOVF       _timeout+0, 0
	MOVWF      _countdown+0
;motorAutomation.c,103 :: 		while(countdown){
L_main24:
	MOVF       _countdown+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main25
;motorAutomation.c,104 :: 		if(ms == 600){
	MOVF       _ms+1, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__main44
	MOVLW      88
	XORWF      _ms+0, 0
L__main44:
	BTFSS      STATUS+0, 2
	GOTO       L_main26
;motorAutomation.c,105 :: 		ms = 0;
	CLRF       _ms+0
	CLRF       _ms+1
;motorAutomation.c,106 :: 		countdown--;
	DECF       _countdown+0, 1
;motorAutomation.c,107 :: 		}
L_main26:
;motorAutomation.c,108 :: 		if(anime > 5) anime = 0;
	MOVF       _anime+0, 0
	SUBLW      5
	BTFSC      STATUS+0, 0
	GOTO       L_main27
	CLRF       _anime+0
L_main27:
;motorAutomation.c,109 :: 		animation();
	CALL       _animation+0
;motorAutomation.c,110 :: 		segment_byte(countdown);
	MOVF       _countdown+0, 0
	MOVWF      FARG_segment_byte_value+0
	CALL       _segment_byte+0
;motorAutomation.c,111 :: 		if(motor_key) break;
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_main28
	GOTO       L_main25
L_main28:
;motorAutomation.c,112 :: 		}
	GOTO       L_main24
L_main25:
;motorAutomation.c,113 :: 		motor_flag = 0;
	BCF        _motor_flag+0, BitPos(_motor_flag+0)
;motorAutomation.c,114 :: 		while(motor_key);
L_main29:
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_main30
	GOTO       L_main29
L_main30:
;motorAutomation.c,115 :: 		}
L_main23:
;motorAutomation.c,116 :: 		if(motor_key) {
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_main31
;motorAutomation.c,117 :: 		motor_flag = ~motor_flag;
	MOVLW
	XORWF      _motor_flag+0, 1
;motorAutomation.c,118 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main32:
	DECFSZ     R13+0, 1
	GOTO       L_main32
	DECFSZ     R12+0, 1
	GOTO       L_main32
	DECFSZ     R11+0, 1
	GOTO       L_main32
	NOP
	NOP
;motorAutomation.c,119 :: 		while(motor_key);
L_main33:
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_main34
	GOTO       L_main33
L_main34:
;motorAutomation.c,120 :: 		}
L_main31:
;motorAutomation.c,121 :: 		}
	GOTO       L_main19
;motorAutomation.c,122 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
