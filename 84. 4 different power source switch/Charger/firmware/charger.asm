
_main:

;charger.c,9 :: 		void main() {
;charger.c,10 :: 		ANSEL = 0x01;
	MOVLW      1
	MOVWF      ANSEL+0
;charger.c,11 :: 		TRISIO = 0x09;
	MOVLW      9
	MOVWF      TRISIO+0
;charger.c,12 :: 		GPIO = 0;
	CLRF       GPIO+0
;charger.c,13 :: 		CMCON = 0x07;
	MOVLW      7
	MOVWF      CMCON+0
;charger.c,15 :: 		while(1){
L_main0:
;charger.c,16 :: 		adc = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc+0
	MOVF       R0+1, 0
	MOVWF      _adc+1
;charger.c,18 :: 		if(adc < 510){           //10V
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORLW      1
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVLW      254
	SUBWF      R0+0, 0
L__main18:
	BTFSC      STATUS+0, 0
	GOTO       L_main2
;charger.c,19 :: 		low = 1; middle = 0; high = 0;
	BSF        GP5_bit+0, BitPos(GP5_bit+0)
	BCF        GP4_bit+0, BitPos(GP4_bit+0)
	BCF        GP2_bit+0, BitPos(GP2_bit+0)
;charger.c,20 :: 		flag = 1;
	BSF        _flag+0, BitPos(_flag+0)
;charger.c,21 :: 		}
	GOTO       L_main3
L_main2:
;charger.c,23 :: 		else if(adc >= 510 && adc <= 645){  //12V
	MOVLW      128
	XORWF      _adc+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVLW      254
	SUBWF      _adc+0, 0
L__main19:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
	MOVLW      128
	XORLW      2
	MOVWF      R0+0
	MOVLW      128
	XORWF      _adc+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVF       _adc+0, 0
	SUBLW      133
L__main20:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
L__main16:
;charger.c,24 :: 		low = 0; middle = 1; high = 0;
	BCF        GP5_bit+0, BitPos(GP5_bit+0)
	BSF        GP4_bit+0, BitPos(GP4_bit+0)
	BCF        GP2_bit+0, BitPos(GP2_bit+0)
;charger.c,25 :: 		}
	GOTO       L_main7
L_main6:
;charger.c,27 :: 		else if(adc > 645 && adc <= 710){   //13V
	MOVLW      128
	XORLW      2
	MOVWF      R0+0
	MOVLW      128
	XORWF      _adc+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVF       _adc+0, 0
	SUBLW      133
L__main21:
	BTFSC      STATUS+0, 0
	GOTO       L_main10
	MOVLW      128
	XORLW      2
	MOVWF      R0+0
	MOVLW      128
	XORWF      _adc+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVF       _adc+0, 0
	SUBLW      198
L__main22:
	BTFSS      STATUS+0, 0
	GOTO       L_main10
L__main15:
;charger.c,28 :: 		low = 0; middle = 0; high = 1;
	BCF        GP5_bit+0, BitPos(GP5_bit+0)
	BCF        GP4_bit+0, BitPos(GP4_bit+0)
	BSF        GP2_bit+0, BitPos(GP2_bit+0)
;charger.c,29 :: 		}
	GOTO       L_main11
L_main10:
;charger.c,31 :: 		else if(adc > 710){     //14V
	MOVLW      128
	XORLW      2
	MOVWF      R0+0
	MOVLW      128
	XORWF      _adc+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVF       _adc+0, 0
	SUBLW      198
L__main23:
	BTFSC      STATUS+0, 0
	GOTO       L_main12
;charger.c,32 :: 		low = 0; middle = 0; high = 1;
	BCF        GP5_bit+0, BitPos(GP5_bit+0)
	BCF        GP4_bit+0, BitPos(GP4_bit+0)
	BSF        GP2_bit+0, BitPos(GP2_bit+0)
;charger.c,33 :: 		flag = 0;
	BCF        _flag+0, BitPos(_flag+0)
;charger.c,34 :: 		}
L_main12:
L_main11:
L_main7:
L_main3:
;charger.c,36 :: 		if(flag == 1) relay = 1;
	BTFSS      _flag+0, BitPos(_flag+0)
	GOTO       L_main13
	BSF        GP1_bit+0, BitPos(GP1_bit+0)
	GOTO       L_main14
L_main13:
;charger.c,37 :: 		else relay = 0;
	BCF        GP1_bit+0, BitPos(GP1_bit+0)
L_main14:
;charger.c,38 :: 		}
	GOTO       L_main0
;charger.c,39 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
