
_StartSignal:

;dht11.h,4 :: 		void StartSignal(){
;dht11.h,5 :: 		DHT11_dir = 0;
	BCF        TRISIO+0, 1
;dht11.h,6 :: 		DHT11 = 0;
	BCF        GPIO+0, 1
;dht11.h,7 :: 		delay_ms(18);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      191
	MOVWF      R13+0
L_StartSignal0:
	DECFSZ     R13+0, 1
	GOTO       L_StartSignal0
	DECFSZ     R12+0, 1
	GOTO       L_StartSignal0
	NOP
	NOP
;dht11.h,8 :: 		DHT11 = 1;
	BSF        GPIO+0, 1
;dht11.h,9 :: 		delay_us(30);
	MOVLW      19
	MOVWF      R13+0
L_StartSignal1:
	DECFSZ     R13+0, 1
	GOTO       L_StartSignal1
	NOP
	NOP
;dht11.h,10 :: 		DHT11_dir = 1;
	BSF        TRISIO+0, 1
;dht11.h,11 :: 		}
L_end_StartSignal:
	RETURN
; end of _StartSignal

_CheckResponse:

;dht11.h,13 :: 		void CheckResponse(){
;dht11.h,14 :: 		_Check = 0;
	CLRF       __Check+0
;dht11.h,15 :: 		delay_us(40);
	MOVLW      26
	MOVWF      R13+0
L_CheckResponse2:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse2
	NOP
;dht11.h,16 :: 		if(DHT11 == 0){
	BTFSC      GPIO+0, 1
	GOTO       L_CheckResponse3
;dht11.h,17 :: 		delay_us(80);
	MOVLW      53
	MOVWF      R13+0
L_CheckResponse4:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse4
;dht11.h,18 :: 		if(DHT11 == 1) _Check = 1;
	BTFSS      GPIO+0, 1
	GOTO       L_CheckResponse5
	MOVLW      1
	MOVWF      __Check+0
L_CheckResponse5:
;dht11.h,19 :: 		delay_us(40);
	MOVLW      26
	MOVWF      R13+0
L_CheckResponse6:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse6
	NOP
;dht11.h,20 :: 		}
L_CheckResponse3:
;dht11.h,21 :: 		}
L_end_CheckResponse:
	RETURN
; end of _CheckResponse

_ReadData:

;dht11.h,23 :: 		char ReadData(){
;dht11.h,25 :: 		for(j = 0; j < 8; j++){
	CLRF       R3+0
L_ReadData7:
	MOVLW      8
	SUBWF      R3+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_ReadData8
;dht11.h,26 :: 		while(!DHT11);
L_ReadData10:
	BTFSC      GPIO+0, 1
	GOTO       L_ReadData11
	GOTO       L_ReadData10
L_ReadData11:
;dht11.h,27 :: 		delay_us(30);
	MOVLW      19
	MOVWF      R13+0
L_ReadData12:
	DECFSZ     R13+0, 1
	GOTO       L_ReadData12
	NOP
	NOP
;dht11.h,28 :: 		if(DHT11 == 0)
	BTFSC      GPIO+0, 1
	GOTO       L_ReadData13
;dht11.h,29 :: 		i&= ~(1 << (7 - j));
	MOVF       R3+0, 0
	SUBLW      7
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ReadData31:
	BTFSC      STATUS+0, 2
	GOTO       L__ReadData32
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ReadData31
L__ReadData32:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      R2+0, 1
	GOTO       L_ReadData14
L_ReadData13:
;dht11.h,31 :: 		i|= (1 << (7 - j));
	MOVF       R3+0, 0
	SUBLW      7
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ReadData33:
	BTFSC      STATUS+0, 2
	GOTO       L__ReadData34
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ReadData33
L__ReadData34:
	MOVF       R0+0, 0
	IORWF      R2+0, 1
;dht11.h,32 :: 		while(DHT11);
L_ReadData15:
	BTFSS      GPIO+0, 1
	GOTO       L_ReadData16
	GOTO       L_ReadData15
L_ReadData16:
;dht11.h,33 :: 		}
L_ReadData14:
;dht11.h,25 :: 		for(j = 0; j < 8; j++){
	INCF       R3+0, 1
;dht11.h,34 :: 		}
	GOTO       L_ReadData7
L_ReadData8:
;dht11.h,35 :: 		return i;
	MOVF       R2+0, 0
	MOVWF      R0+0
;dht11.h,36 :: 		}
L_end_ReadData:
	RETURN
; end of _ReadData

_DHT11_read:

;dht11.h,38 :: 		int DHT11_read(){
;dht11.h,40 :: 		StartSignal();
	CALL       _StartSignal+0
;dht11.h,41 :: 		CheckResponse();
	CALL       _CheckResponse+0
;dht11.h,42 :: 		if(_Check == 1){
	MOVF       __Check+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_DHT11_read17
;dht11.h,43 :: 		RH = ReadData();
	CALL       _ReadData+0
	MOVF       R0+0, 0
	MOVWF      DHT11_read_RH_L0+0
;dht11.h,44 :: 		ReadData();
	CALL       _ReadData+0
;dht11.h,45 :: 		Temp = ReadData();
	CALL       _ReadData+0
	MOVF       R0+0, 0
	MOVWF      DHT11_read_Temp_L0+0
;dht11.h,46 :: 		ReadData();
	CALL       _ReadData+0
;dht11.h,47 :: 		Sum = ReadData();
	CALL       _ReadData+0
;dht11.h,48 :: 		if(Sum == (RH + Temp)){
	MOVF       DHT11_read_Temp_L0+0, 0
	ADDWF      DHT11_read_RH_L0+0, 0
	MOVWF      R2+0
	CLRF       R2+1
	BTFSC      STATUS+0, 0
	INCF       R2+1, 1
	MOVLW      0
	XORWF      R2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__DHT11_read36
	MOVF       R2+0, 0
	XORWF      R0+0, 0
L__DHT11_read36:
	BTFSS      STATUS+0, 2
	GOTO       L_DHT11_read18
;dht11.h,49 :: 		return (RH << 8) + Temp;
	MOVF       DHT11_read_RH_L0+0, 0
	MOVWF      R0+1
	CLRF       R0+0
	MOVF       DHT11_read_Temp_L0+0, 0
	ADDWF      R0+0, 1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	GOTO       L_end_DHT11_read
;dht11.h,50 :: 		}
L_DHT11_read18:
;dht11.h,51 :: 		}
L_DHT11_read17:
;dht11.h,52 :: 		}
L_end_DHT11_read:
	RETURN
; end of _DHT11_read

_InitTimer0:

;green2.c,15 :: 		void InitTimer0(){
;green2.c,16 :: 		OPTION_REG = 0x82;
	MOVLW      130
	MOVWF      OPTION_REG+0
;green2.c,17 :: 		TMR0 = 6;
	MOVLW      6
	MOVWF      TMR0+0
;green2.c,18 :: 		INTCON = 0xA0;
	MOVLW      160
	MOVWF      INTCON+0
;green2.c,19 :: 		}
L_end_InitTimer0:
	RETURN
; end of _InitTimer0

_Interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;green2.c,21 :: 		void Interrupt(){
;green2.c,22 :: 		if (TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, BitPos(TMR0IF_bit+0)
	GOTO       L_Interrupt19
;green2.c,23 :: 		TMR0IF_bit = 0;
	BCF        TMR0IF_bit+0, BitPos(TMR0IF_bit+0)
;green2.c,24 :: 		TMR0 = 6;
	MOVLW      6
	MOVWF      TMR0+0
;green2.c,25 :: 		if(output){
	BTFSS      _output+0, BitPos(_output+0)
	GOTO       L_Interrupt20
;green2.c,26 :: 		counter++;
	INCF       _counter+0, 1
;green2.c,27 :: 		if(counter == duty) out = 0;
	MOVF       _counter+0, 0
	XORWF      _duty+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_Interrupt21
	BCF        GPIO+0, 0
L_Interrupt21:
;green2.c,28 :: 		if(counter == 20) {counter = 0; out = 1;}
	MOVF       _counter+0, 0
	XORLW      20
	BTFSS      STATUS+0, 2
	GOTO       L_Interrupt22
	CLRF       _counter+0
	BSF        GPIO+0, 0
L_Interrupt22:
;green2.c,29 :: 		}
	GOTO       L_Interrupt23
L_Interrupt20:
;green2.c,31 :: 		counter = 0;
	CLRF       _counter+0
;green2.c,32 :: 		out = 0;
	BCF        GPIO+0, 0
;green2.c,33 :: 		}
L_Interrupt23:
;green2.c,34 :: 		}
L_Interrupt19:
;green2.c,35 :: 		}
L_end_Interrupt:
L__Interrupt39:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _Interrupt

_main:

;green2.c,37 :: 		void main() {
;green2.c,38 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;green2.c,39 :: 		CMCON = 7;
	MOVLW      7
	MOVWF      CMCON+0
;green2.c,40 :: 		InitTimer0();
	CALL       _InitTimer0+0
;green2.c,41 :: 		out_dir = 0;
	BCF        TRISIO+0, 0
;green2.c,42 :: 		out = 0;
	BCF        GPIO+0, 0
;green2.c,44 :: 		while(1){
L_main24:
;green2.c,45 :: 		sensor = DHT11_read();
	CALL       _DHT11_read+0
	MOVF       R0+0, 0
	MOVWF      _sensor+0
	MOVF       R0+1, 0
	MOVWF      _sensor+1
;green2.c,46 :: 		temp = sensor;
	MOVF       R0+0, 0
	MOVWF      _temp+0
;green2.c,47 :: 		if(temp >= temp_MIN) {
	MOVLW      18
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main26
;green2.c,48 :: 		output = 1;
	BSF        _output+0, BitPos(_output+0)
;green2.c,49 :: 		duty = temp - temp_MIN + 4;
	MOVLW      18
	SUBWF      _temp+0, 0
	MOVWF      _duty+0
	MOVLW      4
	ADDWF      _duty+0, 1
;green2.c,50 :: 		}
	GOTO       L_main27
L_main26:
;green2.c,51 :: 		else output = 0;
	BCF        _output+0, BitPos(_output+0)
L_main27:
;green2.c,52 :: 		}
	GOTO       L_main24
;green2.c,53 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
