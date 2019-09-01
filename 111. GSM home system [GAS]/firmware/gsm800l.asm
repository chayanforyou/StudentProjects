
_nl_cr:

;gsm_sms.h,1 :: 		void nl_cr(){
;gsm_sms.h,2 :: 		uart1_write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;gsm_sms.h,3 :: 		uart1_write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;gsm_sms.h,4 :: 		}
L_end_nl_cr:
	RETURN
; end of _nl_cr

_send_sms:

;gsm_sms.h,6 :: 		void send_sms(char num[11], char text[160]){
;gsm_sms.h,7 :: 		uart1_write_text("AT+CMGF=1");
	MOVLW      ?lstr1_gsm800l+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;gsm_sms.h,8 :: 		nl_cr();
	CALL       _nl_cr+0
;gsm_sms.h,9 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_send_sms0:
	DECFSZ     R13+0, 1
	GOTO       L_send_sms0
	DECFSZ     R12+0, 1
	GOTO       L_send_sms0
	DECFSZ     R11+0, 1
	GOTO       L_send_sms0
;gsm_sms.h,10 :: 		uart1_write_text("AT+CMGS= ");
	MOVLW      ?lstr2_gsm800l+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;gsm_sms.h,11 :: 		uart1_write(34);
	MOVLW      34
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;gsm_sms.h,12 :: 		uart1_write_text(num);
	MOVF       FARG_send_sms_num+0, 0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;gsm_sms.h,13 :: 		uart1_write(34);
	MOVLW      34
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;gsm_sms.h,14 :: 		nl_cr();
	CALL       _nl_cr+0
;gsm_sms.h,15 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_send_sms1:
	DECFSZ     R13+0, 1
	GOTO       L_send_sms1
	DECFSZ     R12+0, 1
	GOTO       L_send_sms1
	DECFSZ     R11+0, 1
	GOTO       L_send_sms1
;gsm_sms.h,16 :: 		uart1_write_text(text);
	MOVF       FARG_send_sms_text+0, 0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;gsm_sms.h,17 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_send_sms2:
	DECFSZ     R13+0, 1
	GOTO       L_send_sms2
	DECFSZ     R12+0, 1
	GOTO       L_send_sms2
	DECFSZ     R11+0, 1
	GOTO       L_send_sms2
;gsm_sms.h,18 :: 		uart1_write(0x1A); //ctrl + Z
	MOVLW      26
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;gsm_sms.h,19 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_send_sms3:
	DECFSZ     R13+0, 1
	GOTO       L_send_sms3
	DECFSZ     R12+0, 1
	GOTO       L_send_sms3
	DECFSZ     R11+0, 1
	GOTO       L_send_sms3
	NOP
	NOP
;gsm_sms.h,20 :: 		nl_cr();
	CALL       _nl_cr+0
;gsm_sms.h,21 :: 		}
L_end_send_sms:
	RETURN
; end of _send_sms

_get_temp:

;gsm800l.c,12 :: 		short get_temp(){
;gsm800l.c,13 :: 		adc = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc+0
;gsm800l.c,14 :: 		temp = (adc * 0.0197) * 100;
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
	MOVWF      _temp+0
;gsm800l.c,15 :: 		return temp;
;gsm800l.c,16 :: 		}
L_end_get_temp:
	RETURN
; end of _get_temp

_safe:

;gsm800l.c,18 :: 		void safe(){
;gsm800l.c,19 :: 		fire_led = 0; smoke_led = 0;
	BCF        PORTC+0, 1
	BCF        PORTC+0, 3
;gsm800l.c,20 :: 		buzz = 0;
	BCF        PORTC+0, 0
;gsm800l.c,21 :: 		send_sms(number,"Room safe. :-)");
	MOVLW      _number+0
	MOVWF      FARG_send_sms_num+0
	MOVLW      ?lstr3_gsm800l+0
	MOVWF      FARG_send_sms_text+0
	CALL       _send_sms+0
;gsm800l.c,22 :: 		}
L_end_safe:
	RETURN
; end of _safe

_both:

;gsm800l.c,24 :: 		void both(){
;gsm800l.c,25 :: 		send_sms(number,"Smoke and Fire both Detected.");
	MOVLW      _number+0
	MOVWF      FARG_send_sms_num+0
	MOVLW      ?lstr4_gsm800l+0
	MOVWF      FARG_send_sms_text+0
	CALL       _send_sms+0
;gsm800l.c,26 :: 		}
L_end_both:
	RETURN
; end of _both

_main:

;gsm800l.c,28 :: 		void main() {
;gsm800l.c,29 :: 		adcon1 = 0x04;
	MOVLW      4
	MOVWF      ADCON1+0
;gsm800l.c,30 :: 		trisa.f2 = 1;
	BSF        TRISA+0, 2
;gsm800l.c,31 :: 		trisC = 0x00; portc = 0x00;
	CLRF       TRISC+0
	CLRF       PORTC+0
;gsm800l.c,32 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;gsm800l.c,33 :: 		delay_ms(10000);
	MOVLW      102
	MOVWF      R11+0
	MOVLW      118
	MOVWF      R12+0
	MOVLW      193
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
;gsm800l.c,35 :: 		while(1){
L_main5:
;gsm800l.c,36 :: 		buzz = 0;
	BCF        PORTC+0, 0
;gsm800l.c,37 :: 		temp = get_temp();
	CALL       _get_temp+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
;gsm800l.c,38 :: 		if(temp > 40){
	MOVF       R0+0, 0
	SUBLW      40
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;gsm800l.c,39 :: 		buzz = 1; fire_led = 1;
	BSF        PORTC+0, 0
	BSF        PORTC+0, 1
;gsm800l.c,40 :: 		send_sms(number,"Fire Detected.");
	MOVLW      _number+0
	MOVWF      FARG_send_sms_num+0
	MOVLW      ?lstr5_gsm800l+0
	MOVWF      FARG_send_sms_text+0
	CALL       _send_sms+0
;gsm800l.c,41 :: 		while(temp > 40){
L_main8:
	MOVF       _temp+0, 0
	SUBLW      40
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;gsm800l.c,42 :: 		temp = get_temp();
	CALL       _get_temp+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
;gsm800l.c,43 :: 		if(!gas_sensor){
	BTFSC      PORTA+0, 2
	GOTO       L_main10
;gsm800l.c,44 :: 		both();
	CALL       _both+0
;gsm800l.c,45 :: 		while(!gas_sensor);
L_main11:
	BTFSC      PORTA+0, 2
	GOTO       L_main12
	GOTO       L_main11
L_main12:
;gsm800l.c,46 :: 		}
L_main10:
;gsm800l.c,47 :: 		}
	GOTO       L_main8
L_main9:
;gsm800l.c,48 :: 		safe();
	CALL       _safe+0
;gsm800l.c,49 :: 		}
L_main7:
;gsm800l.c,50 :: 		if(!gas_sensor){
	BTFSC      PORTA+0, 2
	GOTO       L_main13
;gsm800l.c,51 :: 		buzz = 1; smoke_led = 1;
	BSF        PORTC+0, 0
	BSF        PORTC+0, 3
;gsm800l.c,52 :: 		send_sms(number,"Smoke Detected.");
	MOVLW      _number+0
	MOVWF      FARG_send_sms_num+0
	MOVLW      ?lstr6_gsm800l+0
	MOVWF      FARG_send_sms_text+0
	CALL       _send_sms+0
;gsm800l.c,53 :: 		while(!gas_sensor){
L_main14:
	BTFSC      PORTA+0, 2
	GOTO       L_main15
;gsm800l.c,54 :: 		temp = get_temp();
	CALL       _get_temp+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
;gsm800l.c,55 :: 		if(temp > 40){
	MOVF       R0+0, 0
	SUBLW      40
	BTFSC      STATUS+0, 0
	GOTO       L_main16
;gsm800l.c,56 :: 		both();
	CALL       _both+0
;gsm800l.c,57 :: 		while(temp > 40){
L_main17:
	MOVF       _temp+0, 0
	SUBLW      40
	BTFSC      STATUS+0, 0
	GOTO       L_main18
;gsm800l.c,58 :: 		temp = get_temp();
	CALL       _get_temp+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
;gsm800l.c,59 :: 		}
	GOTO       L_main17
L_main18:
;gsm800l.c,60 :: 		}
L_main16:
;gsm800l.c,61 :: 		}
	GOTO       L_main14
L_main15:
;gsm800l.c,62 :: 		safe();
	CALL       _safe+0
;gsm800l.c,63 :: 		}
L_main13:
;gsm800l.c,64 :: 		}
	GOTO       L_main5
;gsm800l.c,65 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
