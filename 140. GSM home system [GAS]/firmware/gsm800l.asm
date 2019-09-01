
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
;gsm_sms.h,19 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_send_sms3:
	DECFSZ     R13+0, 1
	GOTO       L_send_sms3
	DECFSZ     R12+0, 1
	GOTO       L_send_sms3
	DECFSZ     R11+0, 1
	GOTO       L_send_sms3
	NOP
;gsm_sms.h,20 :: 		nl_cr();
	CALL       _nl_cr+0
;gsm_sms.h,21 :: 		}
L_end_send_sms:
	RETURN
; end of _send_sms

_get_temp:

;gsm800l.c,10 :: 		short get_temp(){
;gsm800l.c,11 :: 		adc = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc+0
;gsm800l.c,12 :: 		temp = (adc * 0.0197) * 100;
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
;gsm800l.c,13 :: 		return temp;
;gsm800l.c,14 :: 		}
L_end_get_temp:
	RETURN
; end of _get_temp

_safe:

;gsm800l.c,16 :: 		void safe(){
;gsm800l.c,17 :: 		buzz = 0;
	BCF        PORTC+0, 0
;gsm800l.c,18 :: 		send_sms(number,"Room safe. :-)");
	MOVLW      _number+0
	MOVWF      FARG_send_sms_num+0
	MOVLW      ?lstr3_gsm800l+0
	MOVWF      FARG_send_sms_text+0
	CALL       _send_sms+0
;gsm800l.c,19 :: 		}
L_end_safe:
	RETURN
; end of _safe

_both:

;gsm800l.c,21 :: 		void both(){
;gsm800l.c,22 :: 		send_sms(number,"LPG Gas and Fire both Detected.");
	MOVLW      _number+0
	MOVWF      FARG_send_sms_num+0
	MOVLW      ?lstr4_gsm800l+0
	MOVWF      FARG_send_sms_text+0
	CALL       _send_sms+0
;gsm800l.c,23 :: 		}
L_end_both:
	RETURN
; end of _both

_reset_SIM:

;gsm800l.c,25 :: 		void reset_SIM(){
;gsm800l.c,27 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_reset_SIM4:
	DECFSZ     R13+0, 1
	GOTO       L_reset_SIM4
	DECFSZ     R12+0, 1
	GOTO       L_reset_SIM4
	DECFSZ     R11+0, 1
	GOTO       L_reset_SIM4
	NOP
	NOP
;gsm800l.c,28 :: 		UART1_Write_Text("AT+CPOWD=1");
	MOVLW      ?lstr5_gsm800l+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;gsm800l.c,29 :: 		for(x=0;x<40;x++){
	CLRF       reset_SIM_x_L0+0
L_reset_SIM5:
	MOVLW      40
	SUBWF      reset_SIM_x_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_reset_SIM6
;gsm800l.c,30 :: 		buzz = 1;
	BSF        PORTC+0, 0
;gsm800l.c,31 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_reset_SIM8:
	DECFSZ     R13+0, 1
	GOTO       L_reset_SIM8
	DECFSZ     R12+0, 1
	GOTO       L_reset_SIM8
	DECFSZ     R11+0, 1
	GOTO       L_reset_SIM8
	NOP
	NOP
;gsm800l.c,32 :: 		buzz = 0;
	BCF        PORTC+0, 0
;gsm800l.c,33 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_reset_SIM9:
	DECFSZ     R13+0, 1
	GOTO       L_reset_SIM9
	DECFSZ     R12+0, 1
	GOTO       L_reset_SIM9
	DECFSZ     R11+0, 1
	GOTO       L_reset_SIM9
	NOP
	NOP
;gsm800l.c,29 :: 		for(x=0;x<40;x++){
	INCF       reset_SIM_x_L0+0, 1
;gsm800l.c,34 :: 		}
	GOTO       L_reset_SIM5
L_reset_SIM6:
;gsm800l.c,35 :: 		}
L_end_reset_SIM:
	RETURN
; end of _reset_SIM

_main:

;gsm800l.c,37 :: 		void main() {
;gsm800l.c,38 :: 		adcon1 = 0x04;
	MOVLW      4
	MOVWF      ADCON1+0
;gsm800l.c,39 :: 		trisa.f2 = 1; trisc.f0 = 0; portc = 0;
	BSF        TRISA+0, 2
	BCF        TRISC+0, 0
	CLRF       PORTC+0
;gsm800l.c,40 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;gsm800l.c,41 :: 		reset_SIM();
	CALL       _reset_SIM+0
;gsm800l.c,43 :: 		while(1){
L_main10:
;gsm800l.c,44 :: 		temp = get_temp();
	CALL       _get_temp+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
;gsm800l.c,45 :: 		if(temp > 40){
	MOVF       R0+0, 0
	SUBLW      40
	BTFSC      STATUS+0, 0
	GOTO       L_main12
;gsm800l.c,46 :: 		buzz = 1;
	BSF        PORTC+0, 0
;gsm800l.c,47 :: 		send_sms(number,"Fire Detected.");
	MOVLW      _number+0
	MOVWF      FARG_send_sms_num+0
	MOVLW      ?lstr6_gsm800l+0
	MOVWF      FARG_send_sms_text+0
	CALL       _send_sms+0
;gsm800l.c,48 :: 		while(temp > 30){
L_main13:
	MOVF       _temp+0, 0
	SUBLW      30
	BTFSC      STATUS+0, 0
	GOTO       L_main14
;gsm800l.c,49 :: 		temp = get_temp();
	CALL       _get_temp+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
;gsm800l.c,50 :: 		if(!gas_sensor){
	BTFSC      PORTA+0, 2
	GOTO       L_main15
;gsm800l.c,51 :: 		both();
	CALL       _both+0
;gsm800l.c,52 :: 		while(!gas_sensor);
L_main16:
	BTFSC      PORTA+0, 2
	GOTO       L_main17
	GOTO       L_main16
L_main17:
;gsm800l.c,53 :: 		}
L_main15:
;gsm800l.c,54 :: 		}
	GOTO       L_main13
L_main14:
;gsm800l.c,55 :: 		safe();
	CALL       _safe+0
;gsm800l.c,56 :: 		}
L_main12:
;gsm800l.c,57 :: 		if(!gas_sensor){
	BTFSC      PORTA+0, 2
	GOTO       L_main18
;gsm800l.c,58 :: 		buzz = 1;
	BSF        PORTC+0, 0
;gsm800l.c,59 :: 		send_sms(number,"LPG Gas Detected.");
	MOVLW      _number+0
	MOVWF      FARG_send_sms_num+0
	MOVLW      ?lstr7_gsm800l+0
	MOVWF      FARG_send_sms_text+0
	CALL       _send_sms+0
;gsm800l.c,60 :: 		while(!gas_sensor){
L_main19:
	BTFSC      PORTA+0, 2
	GOTO       L_main20
;gsm800l.c,61 :: 		temp = get_temp();
	CALL       _get_temp+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
;gsm800l.c,62 :: 		if(temp > 40){
	MOVF       R0+0, 0
	SUBLW      40
	BTFSC      STATUS+0, 0
	GOTO       L_main21
;gsm800l.c,63 :: 		both();
	CALL       _both+0
;gsm800l.c,64 :: 		while(temp > 30){
L_main22:
	MOVF       _temp+0, 0
	SUBLW      30
	BTFSC      STATUS+0, 0
	GOTO       L_main23
;gsm800l.c,65 :: 		temp = get_temp();
	CALL       _get_temp+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
;gsm800l.c,66 :: 		}
	GOTO       L_main22
L_main23:
;gsm800l.c,67 :: 		}
L_main21:
;gsm800l.c,68 :: 		}
	GOTO       L_main19
L_main20:
;gsm800l.c,69 :: 		safe();
	CALL       _safe+0
;gsm800l.c,70 :: 		}
L_main18:
;gsm800l.c,71 :: 		}
	GOTO       L_main10
;gsm800l.c,72 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
