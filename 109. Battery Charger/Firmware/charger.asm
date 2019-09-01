
_batt_volt:

;charger.c,7 :: 		float batt_volt(){
;charger.c,9 :: 		adc = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
;charger.c,10 :: 		volt = adc / 17; //get 15v maximum
	MOVLW      17
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	CALL       _byte2double+0
;charger.c,11 :: 		return volt;
;charger.c,12 :: 		}
L_end_batt_volt:
	RETURN
; end of _batt_volt

_charging:

;charger.c,14 :: 		void charging(){
;charger.c,15 :: 		float volt = batt_volt();
	CALL       _batt_volt+0
	MOVF       R0+0, 0
	MOVWF      charging_volt_L0+0
	MOVF       R0+1, 0
	MOVWF      charging_volt_L0+1
	MOVF       R0+2, 0
	MOVWF      charging_volt_L0+2
	MOVF       R0+3, 0
	MOVWF      charging_volt_L0+3
;charger.c,16 :: 		while(volt < 13.5){
L_charging0:
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      88
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	MOVF       charging_volt_L0+0, 0
	MOVWF      R0+0
	MOVF       charging_volt_L0+1, 0
	MOVWF      R0+1
	MOVF       charging_volt_L0+2, 0
	MOVWF      R0+2
	MOVF       charging_volt_L0+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_charging1
;charger.c,17 :: 		volt = batt_volt();
	CALL       _batt_volt+0
	MOVF       R0+0, 0
	MOVWF      charging_volt_L0+0
	MOVF       R0+1, 0
	MOVWF      charging_volt_L0+1
	MOVF       R0+2, 0
	MOVWF      charging_volt_L0+2
	MOVF       R0+3, 0
	MOVWF      charging_volt_L0+3
;charger.c,18 :: 		ch_led = 1; lo_led = 0;
	BSF        PORTB+0, 0
	BCF        PORTB+0, 1
;charger.c,19 :: 		hi_led = 0; rly = 1;
	BCF        PORTB+0, 2
	BSF        PORTC+0, 0
;charger.c,20 :: 		normal = 0;
	BCF        PORTB+0, 3
;charger.c,21 :: 		}
	GOTO       L_charging0
L_charging1:
;charger.c,22 :: 		}
L_end_charging:
	RETURN
; end of _charging

_main:

;charger.c,24 :: 		void main() {
;charger.c,25 :: 		trisb = 0; trisc = 0;
	CLRF       TRISB+0
	CLRF       TRISC+0
;charger.c,26 :: 		portb = 0; portc = 0;
	CLRF       PORTB+0
	CLRF       PORTC+0
;charger.c,28 :: 		while(1){
L_main2:
;charger.c,30 :: 		float volt = batt_volt();
	CALL       _batt_volt+0
	MOVF       R0+0, 0
	MOVWF      main_volt_L1+0
	MOVF       R0+1, 0
	MOVWF      main_volt_L1+1
	MOVF       R0+2, 0
	MOVWF      main_volt_L1+2
	MOVF       R0+3, 0
	MOVWF      main_volt_L1+3
;charger.c,31 :: 		if(volt <= 11){  //low Batt
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      48
	MOVWF      R0+2
	MOVLW      130
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main4
;charger.c,32 :: 		volt = batt_volt();
	CALL       _batt_volt+0
	MOVF       R0+0, 0
	MOVWF      main_volt_L1+0
	MOVF       R0+1, 0
	MOVWF      main_volt_L1+1
	MOVF       R0+2, 0
	MOVWF      main_volt_L1+2
	MOVF       R0+3, 0
	MOVWF      main_volt_L1+3
;charger.c,33 :: 		ch_led = 0; lo_led = 1;
	BCF        PORTB+0, 0
	BSF        PORTB+0, 1
;charger.c,34 :: 		hi_led = 0; rly = 0;
	BCF        PORTB+0, 2
	BCF        PORTC+0, 0
;charger.c,35 :: 		normal = 0;
	BCF        PORTB+0, 3
;charger.c,36 :: 		for(delay=0;delay<10;delay++){  //count down to Charge
	CLRF       main_delay_L1+0
L_main5:
	MOVLW      10
	SUBWF      main_delay_L1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;charger.c,37 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;charger.c,36 :: 		for(delay=0;delay<10;delay++){  //count down to Charge
	INCF       main_delay_L1+0, 1
;charger.c,38 :: 		}
	GOTO       L_main5
L_main6:
;charger.c,39 :: 		charging();
	CALL       _charging+0
;charger.c,40 :: 		}
L_main4:
;charger.c,41 :: 		while(volt >= 13.5){  //high Batt
L_main9:
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      88
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	MOVF       main_volt_L1+0, 0
	MOVWF      R0+0
	MOVF       main_volt_L1+1, 0
	MOVWF      R0+1
	MOVF       main_volt_L1+2, 0
	MOVWF      R0+2
	MOVF       main_volt_L1+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main10
;charger.c,42 :: 		volt = batt_volt();
	CALL       _batt_volt+0
	MOVF       R0+0, 0
	MOVWF      main_volt_L1+0
	MOVF       R0+1, 0
	MOVWF      main_volt_L1+1
	MOVF       R0+2, 0
	MOVWF      main_volt_L1+2
	MOVF       R0+3, 0
	MOVWF      main_volt_L1+3
;charger.c,43 :: 		ch_led = 0; lo_led = 0;
	BCF        PORTB+0, 0
	BCF        PORTB+0, 1
;charger.c,44 :: 		hi_led = 1; rly = 0;
	BSF        PORTB+0, 2
	BCF        PORTC+0, 0
;charger.c,45 :: 		normal = 0;
	BCF        PORTB+0, 3
;charger.c,46 :: 		}
	GOTO       L_main9
L_main10:
;charger.c,47 :: 		ch_led = 0; lo_led = 0;
	BCF        PORTB+0, 0
	BCF        PORTB+0, 1
;charger.c,48 :: 		hi_led = 0; rly = 0;
	BCF        PORTB+0, 2
	BCF        PORTC+0, 0
;charger.c,49 :: 		normal = 1;
	BSF        PORTB+0, 3
;charger.c,50 :: 		}
	GOTO       L_main2
;charger.c,51 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
