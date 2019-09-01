
_StartSignal0:

;dht11.h,9 :: 		void StartSignal0(){
;dht11.h,10 :: 		DHT11_dir_1 = 0;
	BCF        TRISA2_bit+0, BitPos(TRISA2_bit+0)
;dht11.h,11 :: 		DHT11_1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;dht11.h,12 :: 		delay_ms(18);
	MOVLW      117
	MOVWF      R12+0
	MOVLW      225
	MOVWF      R13+0
L_StartSignal00:
	DECFSZ     R13+0, 1
	GOTO       L_StartSignal00
	DECFSZ     R12+0, 1
	GOTO       L_StartSignal00
;dht11.h,13 :: 		DHT11_1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;dht11.h,14 :: 		delay_us(30);
	MOVLW      49
	MOVWF      R13+0
L_StartSignal01:
	DECFSZ     R13+0, 1
	GOTO       L_StartSignal01
	NOP
	NOP
;dht11.h,15 :: 		DHT11_dir_1 = 1;
	BSF        TRISA2_bit+0, BitPos(TRISA2_bit+0)
;dht11.h,16 :: 		}
L_end_StartSignal0:
	RETURN
; end of _StartSignal0

_StartSignal1:

;dht11.h,18 :: 		void StartSignal1(){
;dht11.h,19 :: 		DHT11_dir_2 = 0;
	BCF        TRISA5_bit+0, BitPos(TRISA5_bit+0)
;dht11.h,20 :: 		DHT11_2 = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;dht11.h,21 :: 		delay_ms(18);
	MOVLW      117
	MOVWF      R12+0
	MOVLW      225
	MOVWF      R13+0
L_StartSignal12:
	DECFSZ     R13+0, 1
	GOTO       L_StartSignal12
	DECFSZ     R12+0, 1
	GOTO       L_StartSignal12
;dht11.h,22 :: 		DHT11_2 = 1;
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
;dht11.h,23 :: 		delay_us(30);
	MOVLW      49
	MOVWF      R13+0
L_StartSignal13:
	DECFSZ     R13+0, 1
	GOTO       L_StartSignal13
	NOP
	NOP
;dht11.h,24 :: 		DHT11_dir_2 = 1;
	BSF        TRISA5_bit+0, BitPos(TRISA5_bit+0)
;dht11.h,25 :: 		}
L_end_StartSignal1:
	RETURN
; end of _StartSignal1

_CheckResponse0:

;dht11.h,27 :: 		void CheckResponse0(){
;dht11.h,28 :: 		_Check = 0;
	CLRF       __Check+0
;dht11.h,29 :: 		delay_us(40);
	MOVLW      66
	MOVWF      R13+0
L_CheckResponse04:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse04
	NOP
;dht11.h,30 :: 		if(DHT11_1 == 0){
	BTFSC      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_CheckResponse05
;dht11.h,31 :: 		delay_us(80);
	MOVLW      133
	MOVWF      R13+0
L_CheckResponse06:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse06
;dht11.h,32 :: 		if(DHT11_1 == 1) _Check = 1;
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_CheckResponse07
	MOVLW      1
	MOVWF      __Check+0
L_CheckResponse07:
;dht11.h,33 :: 		delay_us(40);
	MOVLW      66
	MOVWF      R13+0
L_CheckResponse08:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse08
	NOP
;dht11.h,34 :: 		}
L_CheckResponse05:
;dht11.h,35 :: 		}
L_end_CheckResponse0:
	RETURN
; end of _CheckResponse0

_CheckResponse1:

;dht11.h,37 :: 		void CheckResponse1(){
;dht11.h,38 :: 		_Check = 0;
	CLRF       __Check+0
;dht11.h,39 :: 		delay_us(40);
	MOVLW      66
	MOVWF      R13+0
L_CheckResponse19:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse19
	NOP
;dht11.h,40 :: 		if(DHT11_2 == 0){
	BTFSC      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_CheckResponse110
;dht11.h,41 :: 		delay_us(80);
	MOVLW      133
	MOVWF      R13+0
L_CheckResponse111:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse111
;dht11.h,42 :: 		if(DHT11_2 == 1) _Check = 1;
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_CheckResponse112
	MOVLW      1
	MOVWF      __Check+0
L_CheckResponse112:
;dht11.h,43 :: 		delay_us(40);
	MOVLW      66
	MOVWF      R13+0
L_CheckResponse113:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse113
	NOP
;dht11.h,44 :: 		}
L_CheckResponse110:
;dht11.h,45 :: 		}
L_end_CheckResponse1:
	RETURN
; end of _CheckResponse1

_ReadData0:

;dht11.h,47 :: 		char ReadData0(){
;dht11.h,49 :: 		for(j = 0; j < 8; j++){
	CLRF       R3+0
L_ReadData014:
	MOVLW      8
	SUBWF      R3+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_ReadData015
;dht11.h,50 :: 		while(!DHT11_1);
L_ReadData017:
	BTFSC      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_ReadData018
	GOTO       L_ReadData017
L_ReadData018:
;dht11.h,51 :: 		delay_us(30);
	MOVLW      49
	MOVWF      R13+0
L_ReadData019:
	DECFSZ     R13+0, 1
	GOTO       L_ReadData019
	NOP
	NOP
;dht11.h,52 :: 		if(DHT11_1 == 0)
	BTFSC      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_ReadData020
;dht11.h,53 :: 		i&= ~(1 << (7 - j));
	MOVF       R3+0, 0
	SUBLW      7
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ReadData0122:
	BTFSC      STATUS+0, 2
	GOTO       L__ReadData0123
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ReadData0122
L__ReadData0123:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      R2+0, 1
	GOTO       L_ReadData021
L_ReadData020:
;dht11.h,55 :: 		i|= (1 << (7 - j));
	MOVF       R3+0, 0
	SUBLW      7
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ReadData0124:
	BTFSC      STATUS+0, 2
	GOTO       L__ReadData0125
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ReadData0124
L__ReadData0125:
	MOVF       R0+0, 0
	IORWF      R2+0, 1
;dht11.h,56 :: 		while(DHT11_1);
L_ReadData022:
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_ReadData023
	GOTO       L_ReadData022
L_ReadData023:
;dht11.h,57 :: 		}
L_ReadData021:
;dht11.h,49 :: 		for(j = 0; j < 8; j++){
	INCF       R3+0, 1
;dht11.h,58 :: 		}
	GOTO       L_ReadData014
L_ReadData015:
;dht11.h,59 :: 		return i;
	MOVF       R2+0, 0
	MOVWF      R0+0
;dht11.h,60 :: 		}
L_end_ReadData0:
	RETURN
; end of _ReadData0

_ReadData1:

;dht11.h,62 :: 		char ReadData1(){
;dht11.h,64 :: 		for(j = 0; j < 8; j++){
	CLRF       R3+0
L_ReadData124:
	MOVLW      8
	SUBWF      R3+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_ReadData125
;dht11.h,65 :: 		while(!DHT11_2);
L_ReadData127:
	BTFSC      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_ReadData128
	GOTO       L_ReadData127
L_ReadData128:
;dht11.h,66 :: 		delay_us(30);
	MOVLW      49
	MOVWF      R13+0
L_ReadData129:
	DECFSZ     R13+0, 1
	GOTO       L_ReadData129
	NOP
	NOP
;dht11.h,67 :: 		if(DHT11_2 == 0)
	BTFSC      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_ReadData130
;dht11.h,68 :: 		i&= ~(1 << (7 - j));
	MOVF       R3+0, 0
	SUBLW      7
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ReadData1127:
	BTFSC      STATUS+0, 2
	GOTO       L__ReadData1128
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ReadData1127
L__ReadData1128:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      R2+0, 1
	GOTO       L_ReadData131
L_ReadData130:
;dht11.h,70 :: 		i|= (1 << (7 - j));
	MOVF       R3+0, 0
	SUBLW      7
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ReadData1129:
	BTFSC      STATUS+0, 2
	GOTO       L__ReadData1130
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ReadData1129
L__ReadData1130:
	MOVF       R0+0, 0
	IORWF      R2+0, 1
;dht11.h,71 :: 		while(DHT11_2);
L_ReadData132:
	BTFSS      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_ReadData133
	GOTO       L_ReadData132
L_ReadData133:
;dht11.h,72 :: 		}
L_ReadData131:
;dht11.h,64 :: 		for(j = 0; j < 8; j++){
	INCF       R3+0, 1
;dht11.h,73 :: 		}
	GOTO       L_ReadData124
L_ReadData125:
;dht11.h,74 :: 		return i;
	MOVF       R2+0, 0
	MOVWF      R0+0
;dht11.h,75 :: 		}
L_end_ReadData1:
	RETURN
; end of _ReadData1

_DHT11_read0:

;dht11.h,77 :: 		int DHT11_read0(){
;dht11.h,79 :: 		StartSignal0();
	CALL       _StartSignal0+0
;dht11.h,80 :: 		CheckResponse0();
	CALL       _CheckResponse0+0
;dht11.h,81 :: 		if(_Check == 1){
	MOVF       __Check+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_DHT11_read034
;dht11.h,82 :: 		RH = ReadData0();
	CALL       _ReadData0+0
	MOVF       R0+0, 0
	MOVWF      DHT11_read0_RH_L0+0
;dht11.h,83 :: 		ReadData0();
	CALL       _ReadData0+0
;dht11.h,84 :: 		Temp = ReadData0();
	CALL       _ReadData0+0
	MOVF       R0+0, 0
	MOVWF      DHT11_read0_Temp_L0+0
;dht11.h,85 :: 		ReadData0();
	CALL       _ReadData0+0
;dht11.h,86 :: 		Sum = ReadData0();
	CALL       _ReadData0+0
;dht11.h,87 :: 		if(Sum == (RH + Temp)){
	MOVF       DHT11_read0_Temp_L0+0, 0
	ADDWF      DHT11_read0_RH_L0+0, 0
	MOVWF      R2+0
	CLRF       R2+1
	BTFSC      STATUS+0, 0
	INCF       R2+1, 1
	MOVLW      0
	XORWF      R2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__DHT11_read0132
	MOVF       R2+0, 0
	XORWF      R0+0, 0
L__DHT11_read0132:
	BTFSS      STATUS+0, 2
	GOTO       L_DHT11_read035
;dht11.h,88 :: 		return (RH << 8) + Temp;
	MOVF       DHT11_read0_RH_L0+0, 0
	MOVWF      R0+1
	CLRF       R0+0
	MOVF       DHT11_read0_Temp_L0+0, 0
	ADDWF      R0+0, 1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	GOTO       L_end_DHT11_read0
;dht11.h,89 :: 		}
L_DHT11_read035:
;dht11.h,90 :: 		}
L_DHT11_read034:
;dht11.h,91 :: 		}
L_end_DHT11_read0:
	RETURN
; end of _DHT11_read0

_DHT11_read1:

;dht11.h,93 :: 		int DHT11_read1(){
;dht11.h,95 :: 		StartSignal1();
	CALL       _StartSignal1+0
;dht11.h,96 :: 		CheckResponse1();
	CALL       _CheckResponse1+0
;dht11.h,97 :: 		if(_Check == 1){
	MOVF       __Check+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_DHT11_read136
;dht11.h,98 :: 		RH = ReadData1();
	CALL       _ReadData1+0
	MOVF       R0+0, 0
	MOVWF      DHT11_read1_RH_L0+0
;dht11.h,99 :: 		ReadData1();
	CALL       _ReadData1+0
;dht11.h,100 :: 		Temp = ReadData1();
	CALL       _ReadData1+0
	MOVF       R0+0, 0
	MOVWF      DHT11_read1_Temp_L0+0
;dht11.h,101 :: 		ReadData1();
	CALL       _ReadData1+0
;dht11.h,102 :: 		Sum = ReadData1();
	CALL       _ReadData1+0
;dht11.h,103 :: 		if(Sum == (RH + Temp)){
	MOVF       DHT11_read1_Temp_L0+0, 0
	ADDWF      DHT11_read1_RH_L0+0, 0
	MOVWF      R2+0
	CLRF       R2+1
	BTFSC      STATUS+0, 0
	INCF       R2+1, 1
	MOVLW      0
	XORWF      R2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__DHT11_read1134
	MOVF       R2+0, 0
	XORWF      R0+0, 0
L__DHT11_read1134:
	BTFSS      STATUS+0, 2
	GOTO       L_DHT11_read137
;dht11.h,104 :: 		return (RH << 8) + Temp;
	MOVF       DHT11_read1_RH_L0+0, 0
	MOVWF      R0+1
	CLRF       R0+0
	MOVF       DHT11_read1_Temp_L0+0, 0
	ADDWF      R0+0, 1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	GOTO       L_end_DHT11_read1
;dht11.h,105 :: 		}
L_DHT11_read137:
;dht11.h,106 :: 		}
L_DHT11_read136:
;dht11.h,107 :: 		}
L_end_DHT11_read1:
	RETURN
; end of _DHT11_read1

_InitTimer0:

;2hum2temp.c,32 :: 		void InitTimer0(){
;2hum2temp.c,33 :: 		OPTION_REG = 0x87;
	MOVLW      135
	MOVWF      OPTION_REG+0
;2hum2temp.c,34 :: 		TMR0 = 61;
	MOVLW      61
	MOVWF      TMR0+0
;2hum2temp.c,35 :: 		INTCON = 0xA0;
	MOVLW      160
	MOVWF      INTCON+0
;2hum2temp.c,36 :: 		}
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

;2hum2temp.c,38 :: 		void Interrupt(){
;2hum2temp.c,39 :: 		if (TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, BitPos(TMR0IF_bit+0)
	GOTO       L_Interrupt38
;2hum2temp.c,40 :: 		TMR0IF_bit = 0;
	BCF        TMR0IF_bit+0, BitPos(TMR0IF_bit+0)
;2hum2temp.c,41 :: 		TMR0 = 61;
	MOVLW      61
	MOVWF      TMR0+0
;2hum2temp.c,42 :: 		if(t_flag){
	MOVF       _t_flag+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Interrupt39
;2hum2temp.c,43 :: 		x++;
	INCF       _x+0, 1
;2hum2temp.c,44 :: 		if(x == 100) {sec_flag = 1; x = 0;}
	MOVF       _x+0, 0
	XORLW      100
	BTFSS      STATUS+0, 2
	GOTO       L_Interrupt40
	BSF        _sec_flag+0, BitPos(_sec_flag+0)
	CLRF       _x+0
L_Interrupt40:
;2hum2temp.c,45 :: 		}
L_Interrupt39:
;2hum2temp.c,46 :: 		}
L_Interrupt38:
;2hum2temp.c,47 :: 		}
L_end_Interrupt:
L__Interrupt137:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _Interrupt

_read_temp1:

;2hum2temp.c,49 :: 		void read_temp1(){
;2hum2temp.c,50 :: 		temp1 = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp1+0
	MOVF       R0+1, 0
	MOVWF      _temp1+1
;2hum2temp.c,51 :: 		temp1 = (temp1 * 0.004887) * 100;
	CALL       _word2double+0
	MOVLW      33
	MOVWF      R4+0
	MOVLW      35
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      119
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
	CALL       _double2word+0
	MOVF       R0+0, 0
	MOVWF      _temp1+0
	MOVF       R0+1, 0
	MOVWF      _temp1+1
;2hum2temp.c,52 :: 		}
L_end_read_temp1:
	RETURN
; end of _read_temp1

_read_temp2:

;2hum2temp.c,54 :: 		void read_temp2(){
;2hum2temp.c,55 :: 		temp2 = adc_read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp2+0
	MOVF       R0+1, 0
	MOVWF      _temp2+1
;2hum2temp.c,56 :: 		temp2 = (temp2 * 0.004887) * 100;
	CALL       _word2double+0
	MOVLW      33
	MOVWF      R4+0
	MOVLW      35
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      119
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
	CALL       _double2word+0
	MOVF       R0+0, 0
	MOVWF      _temp2+0
	MOVF       R0+1, 0
	MOVWF      _temp2+1
;2hum2temp.c,57 :: 		}
L_end_read_temp2:
	RETURN
; end of _read_temp2

_lcd_out_short:

;2hum2temp.c,59 :: 		void lcd_out_short(short x, short y, unsigned short num){
;2hum2temp.c,61 :: 		digit[0] = num / 100 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_lcd_out_short_num+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      lcd_out_short_digit_L0+0
;2hum2temp.c,62 :: 		digit[1] = (num % 100) / 10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_lcd_out_short_num+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      lcd_out_short_digit_L0+1
;2hum2temp.c,63 :: 		digit[2] = num % 10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_lcd_out_short_num+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      lcd_out_short_digit_L0+2
;2hum2temp.c,64 :: 		digit[3] = 0;
	CLRF       lcd_out_short_digit_L0+3
;2hum2temp.c,65 :: 		lcd_out(x,y, digit);
	MOVF       FARG_lcd_out_short_x+0, 0
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       FARG_lcd_out_short_y+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      lcd_out_short_digit_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,66 :: 		}
L_end_lcd_out_short:
	RETURN
; end of _lcd_out_short

_lcd_out_int:

;2hum2temp.c,68 :: 		void lcd_out_int(short x, short y, unsigned int num){
;2hum2temp.c,70 :: 		digit[0] = num / 100 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_lcd_out_int_num+0, 0
	MOVWF      R0+0
	MOVF       FARG_lcd_out_int_num+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      lcd_out_int_digit_L0+0
;2hum2temp.c,71 :: 		digit[1] = (num % 100) / 10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_lcd_out_int_num+0, 0
	MOVWF      R0+0
	MOVF       FARG_lcd_out_int_num+1, 0
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
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      lcd_out_int_digit_L0+1
;2hum2temp.c,72 :: 		digit[2] = num % 10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_lcd_out_int_num+0, 0
	MOVWF      R0+0
	MOVF       FARG_lcd_out_int_num+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      lcd_out_int_digit_L0+2
;2hum2temp.c,73 :: 		digit[3] = 0;
	CLRF       lcd_out_int_digit_L0+3
;2hum2temp.c,74 :: 		lcd_out(x,y, digit);
	MOVF       FARG_lcd_out_int_x+0, 0
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       FARG_lcd_out_int_y+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      lcd_out_int_digit_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,75 :: 		}
L_end_lcd_out_int:
	RETURN
; end of _lcd_out_int

_lcd_out_2digit:

;2hum2temp.c,77 :: 		void lcd_out_2digit(short x, short y, unsigned short num){
;2hum2temp.c,79 :: 		digit[0] = (num % 100) / 10 + 48;
	MOVLW      100
	MOVWF      R4+0
	MOVF       FARG_lcd_out_2digit_num+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      lcd_out_2digit_digit_L0+0
;2hum2temp.c,80 :: 		digit[1] = num % 10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_lcd_out_2digit_num+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      lcd_out_2digit_digit_L0+1
;2hum2temp.c,81 :: 		digit[2] = 0;
	CLRF       lcd_out_2digit_digit_L0+2
;2hum2temp.c,82 :: 		lcd_out(x,y, digit);
	MOVF       FARG_lcd_out_2digit_x+0, 0
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       FARG_lcd_out_2digit_y+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      lcd_out_2digit_digit_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,83 :: 		}
L_end_lcd_out_2digit:
	RETURN
; end of _lcd_out_2digit

_setup:

;2hum2temp.c,85 :: 		void setup(){
;2hum2temp.c,86 :: 		temp1_alart = EEPROM_read(0);
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp1_alart+0
;2hum2temp.c,87 :: 		temp2_alart = EEPROM_read(1);
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp2_alart+0
;2hum2temp.c,88 :: 		humidity1_alart = EEPROM_read(2);
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _humidity1_alart+0
;2hum2temp.c,89 :: 		humidity2_alart = EEPROM_read(3);
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _humidity2_alart+0
;2hum2temp.c,90 :: 		mm_H = EEPROM_read(4);
	MOVLW      4
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _mm_H+0
;2hum2temp.c,91 :: 		mm_L = EEPROM_read(5);
	MOVLW      5
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _mm_L+0
;2hum2temp.c,92 :: 		mm = (mm_H << 8) + mm_L;
	MOVF       _mm_H+0, 0
	MOVWF      _mm+1
	CLRF       _mm+0
	MOVF       R0+0, 0
	ADDWF      _mm+0, 1
	BTFSC      STATUS+0, 0
	INCF       _mm+1, 1
;2hum2temp.c,93 :: 		ss = EEPROM_read(6);
	MOVLW      6
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _ss+0
;2hum2temp.c,94 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;2hum2temp.c,95 :: 		delay_1sec();
	CALL       _Delay_1sec+0
;2hum2temp.c,97 :: 		lcd_out(1,1, "Timer setup:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,98 :: 		lcd_out(2,9, "MM");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,99 :: 		while(!setup_key){
L_setup41:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup42
;2hum2temp.c,100 :: 		lcd_out_int(2,1, mm);
	MOVLW      2
	MOVWF      FARG_lcd_out_int_x+0
	MOVLW      1
	MOVWF      FARG_lcd_out_int_y+0
	MOVF       _mm+0, 0
	MOVWF      FARG_lcd_out_int_num+0
	MOVF       _mm+1, 0
	MOVWF      FARG_lcd_out_int_num+1
	CALL       _lcd_out_int+0
;2hum2temp.c,101 :: 		lcd_out(2,4, ":");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,102 :: 		lcd_out_2digit(2,5, ss);
	MOVLW      2
	MOVWF      FARG_lcd_out_2digit_x+0
	MOVLW      5
	MOVWF      FARG_lcd_out_2digit_y+0
	MOVF       _ss+0, 0
	MOVWF      FARG_lcd_out_2digit_num+0
	CALL       _lcd_out_2digit+0
;2hum2temp.c,104 :: 		if(up_key) mm++;
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup43
	INCF       _mm+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mm+1, 1
L_setup43:
;2hum2temp.c,105 :: 		if(mm > 900) mm = 0;
	MOVF       _mm+1, 0
	SUBLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__setup144
	MOVF       _mm+0, 0
	SUBLW      132
L__setup144:
	BTFSC      STATUS+0, 0
	GOTO       L_setup44
	CLRF       _mm+0
	CLRF       _mm+1
L_setup44:
;2hum2temp.c,106 :: 		if(down_key) mm--;
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_setup45
	MOVLW      1
	SUBWF      _mm+0, 1
	BTFSS      STATUS+0, 0
	DECF       _mm+1, 1
L_setup45:
;2hum2temp.c,108 :: 		delay_ms(300);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_setup46:
	DECFSZ     R13+0, 1
	GOTO       L_setup46
	DECFSZ     R12+0, 1
	GOTO       L_setup46
	DECFSZ     R11+0, 1
	GOTO       L_setup46
	NOP
	NOP
;2hum2temp.c,109 :: 		}
	GOTO       L_setup41
L_setup42:
;2hum2temp.c,110 :: 		mm_H = mm >> 8;
	MOVF       _mm+1, 0
	MOVWF      R0+0
	CLRF       R0+1
	MOVF       R0+0, 0
	MOVWF      _mm_H+0
;2hum2temp.c,111 :: 		mm_L = mm;
	MOVF       _mm+0, 0
	MOVWF      _mm_L+0
;2hum2temp.c,112 :: 		EEPROM_write(4, mm_H);
	MOVLW      4
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       R0+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;2hum2temp.c,113 :: 		EEPROM_write(5, mm_L);
	MOVLW      5
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _mm_L+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;2hum2temp.c,114 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_setup47:
	DECFSZ     R13+0, 1
	GOTO       L_setup47
	DECFSZ     R12+0, 1
	GOTO       L_setup47
	DECFSZ     R11+0, 1
	GOTO       L_setup47
	NOP
;2hum2temp.c,116 :: 		lcd_out(2,9, "SS");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,117 :: 		while(!setup_key){
L_setup48:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup49
;2hum2temp.c,118 :: 		lcd_out_int(2,1, mm);
	MOVLW      2
	MOVWF      FARG_lcd_out_int_x+0
	MOVLW      1
	MOVWF      FARG_lcd_out_int_y+0
	MOVF       _mm+0, 0
	MOVWF      FARG_lcd_out_int_num+0
	MOVF       _mm+1, 0
	MOVWF      FARG_lcd_out_int_num+1
	CALL       _lcd_out_int+0
;2hum2temp.c,119 :: 		lcd_out(2,4, ":");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,120 :: 		lcd_out_2digit(2,5, ss);
	MOVLW      2
	MOVWF      FARG_lcd_out_2digit_x+0
	MOVLW      5
	MOVWF      FARG_lcd_out_2digit_y+0
	MOVF       _ss+0, 0
	MOVWF      FARG_lcd_out_2digit_num+0
	CALL       _lcd_out_2digit+0
;2hum2temp.c,122 :: 		if(up_key) ss++;
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup50
	INCF       _ss+0, 1
L_setup50:
;2hum2temp.c,123 :: 		if(ss > 59) ss = 0;
	MOVLW      128
	XORLW      59
	MOVWF      R0+0
	MOVLW      128
	XORWF      _ss+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_setup51
	CLRF       _ss+0
L_setup51:
;2hum2temp.c,124 :: 		if(down_key) ss--;
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_setup52
	DECF       _ss+0, 1
L_setup52:
;2hum2temp.c,125 :: 		if(ss < 0) ss = 59;
	MOVLW      128
	XORWF      _ss+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_setup53
	MOVLW      59
	MOVWF      _ss+0
L_setup53:
;2hum2temp.c,127 :: 		delay_ms(300);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_setup54:
	DECFSZ     R13+0, 1
	GOTO       L_setup54
	DECFSZ     R12+0, 1
	GOTO       L_setup54
	DECFSZ     R11+0, 1
	GOTO       L_setup54
	NOP
	NOP
;2hum2temp.c,128 :: 		}
	GOTO       L_setup48
L_setup49:
;2hum2temp.c,129 :: 		EEPROM_write(6, ss);
	MOVLW      6
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _ss+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;2hum2temp.c,130 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_setup55:
	DECFSZ     R13+0, 1
	GOTO       L_setup55
	DECFSZ     R12+0, 1
	GOTO       L_setup55
	DECFSZ     R11+0, 1
	GOTO       L_setup55
	NOP
;2hum2temp.c,132 :: 		while(!setup_key){
L_setup56:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup57
;2hum2temp.c,133 :: 		lcd_out_int(2,1, mm);
	MOVLW      2
	MOVWF      FARG_lcd_out_int_x+0
	MOVLW      1
	MOVWF      FARG_lcd_out_int_y+0
	MOVF       _mm+0, 0
	MOVWF      FARG_lcd_out_int_num+0
	MOVF       _mm+1, 0
	MOVWF      FARG_lcd_out_int_num+1
	CALL       _lcd_out_int+0
;2hum2temp.c,134 :: 		lcd_out(2,4, ":");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,135 :: 		lcd_out_2digit(2,5, ss);
	MOVLW      2
	MOVWF      FARG_lcd_out_2digit_x+0
	MOVLW      5
	MOVWF      FARG_lcd_out_2digit_y+0
	MOVF       _ss+0, 0
	MOVWF      FARG_lcd_out_2digit_num+0
	CALL       _lcd_out_2digit+0
;2hum2temp.c,137 :: 		if(t_flag == 1) lcd_out(2,13, "ON ");
	MOVF       _t_flag+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_setup58
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      13
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_setup59
L_setup58:
;2hum2temp.c,138 :: 		else  lcd_out(2,13, "OFF");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      13
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_setup59:
;2hum2temp.c,140 :: 		if(up_key) {
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup60
;2hum2temp.c,141 :: 		if(t_flag == 1) t_flag = 0;
	MOVF       _t_flag+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_setup61
	CLRF       _t_flag+0
	GOTO       L_setup62
L_setup61:
;2hum2temp.c,142 :: 		else  t_flag = 1;
	MOVLW      1
	MOVWF      _t_flag+0
L_setup62:
;2hum2temp.c,143 :: 		}
L_setup60:
;2hum2temp.c,145 :: 		delay_ms(300);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_setup63:
	DECFSZ     R13+0, 1
	GOTO       L_setup63
	DECFSZ     R12+0, 1
	GOTO       L_setup63
	DECFSZ     R11+0, 1
	GOTO       L_setup63
	NOP
	NOP
;2hum2temp.c,146 :: 		}
	GOTO       L_setup56
L_setup57:
;2hum2temp.c,147 :: 		EEPROM_write(7, t_flag);
	MOVLW      7
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _t_flag+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;2hum2temp.c,148 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_setup64:
	DECFSZ     R13+0, 1
	GOTO       L_setup64
	DECFSZ     R12+0, 1
	GOTO       L_setup64
	DECFSZ     R11+0, 1
	GOTO       L_setup64
	NOP
;2hum2temp.c,150 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;2hum2temp.c,151 :: 		lcd_out(1,1, "Temp 1 limit:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,152 :: 		while(!setup_key){
L_setup65:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup66
;2hum2temp.c,153 :: 		lcd_out_short(2,1, temp1_alart);
	MOVLW      2
	MOVWF      FARG_lcd_out_short_x+0
	MOVLW      1
	MOVWF      FARG_lcd_out_short_y+0
	MOVF       _temp1_alart+0, 0
	MOVWF      FARG_lcd_out_short_num+0
	CALL       _lcd_out_short+0
;2hum2temp.c,154 :: 		lcd_chr(2,4, (char)223);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;2hum2temp.c,155 :: 		lcd_out(2,5, "C");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,157 :: 		if(up_key) temp1_alart++;
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup67
	INCF       _temp1_alart+0, 1
L_setup67:
;2hum2temp.c,158 :: 		if(temp1_alart > 100) temp1_alart = 0;
	MOVF       _temp1_alart+0, 0
	SUBLW      100
	BTFSC      STATUS+0, 0
	GOTO       L_setup68
	CLRF       _temp1_alart+0
L_setup68:
;2hum2temp.c,159 :: 		if(down_key) temp1_alart--;
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_setup69
	DECF       _temp1_alart+0, 1
L_setup69:
;2hum2temp.c,161 :: 		delay_ms(300);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_setup70:
	DECFSZ     R13+0, 1
	GOTO       L_setup70
	DECFSZ     R12+0, 1
	GOTO       L_setup70
	DECFSZ     R11+0, 1
	GOTO       L_setup70
	NOP
	NOP
;2hum2temp.c,162 :: 		}
	GOTO       L_setup65
L_setup66:
;2hum2temp.c,163 :: 		EEPROM_write(0, temp1_alart);
	CLRF       FARG_EEPROM_Write_Address+0
	MOVF       _temp1_alart+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;2hum2temp.c,164 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_setup71:
	DECFSZ     R13+0, 1
	GOTO       L_setup71
	DECFSZ     R12+0, 1
	GOTO       L_setup71
	DECFSZ     R11+0, 1
	GOTO       L_setup71
	NOP
;2hum2temp.c,166 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;2hum2temp.c,167 :: 		lcd_out(1,1, "Temp 2 limit:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,168 :: 		while(!setup_key){
L_setup72:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup73
;2hum2temp.c,169 :: 		lcd_out_short(2,1, temp2_alart);
	MOVLW      2
	MOVWF      FARG_lcd_out_short_x+0
	MOVLW      1
	MOVWF      FARG_lcd_out_short_y+0
	MOVF       _temp2_alart+0, 0
	MOVWF      FARG_lcd_out_short_num+0
	CALL       _lcd_out_short+0
;2hum2temp.c,170 :: 		lcd_chr(2,4, (char)223);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;2hum2temp.c,171 :: 		lcd_out(2,5, "C");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,173 :: 		if(up_key) temp2_alart++;
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup74
	INCF       _temp2_alart+0, 1
L_setup74:
;2hum2temp.c,174 :: 		if(temp2_alart > 100) temp2_alart = 0;
	MOVF       _temp2_alart+0, 0
	SUBLW      100
	BTFSC      STATUS+0, 0
	GOTO       L_setup75
	CLRF       _temp2_alart+0
L_setup75:
;2hum2temp.c,175 :: 		if(down_key) temp2_alart--;
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_setup76
	DECF       _temp2_alart+0, 1
L_setup76:
;2hum2temp.c,177 :: 		delay_ms(300);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_setup77:
	DECFSZ     R13+0, 1
	GOTO       L_setup77
	DECFSZ     R12+0, 1
	GOTO       L_setup77
	DECFSZ     R11+0, 1
	GOTO       L_setup77
	NOP
	NOP
;2hum2temp.c,178 :: 		}
	GOTO       L_setup72
L_setup73:
;2hum2temp.c,179 :: 		EEPROM_write(1, temp2_alart);
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _temp2_alart+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;2hum2temp.c,180 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_setup78:
	DECFSZ     R13+0, 1
	GOTO       L_setup78
	DECFSZ     R12+0, 1
	GOTO       L_setup78
	DECFSZ     R11+0, 1
	GOTO       L_setup78
	NOP
;2hum2temp.c,182 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;2hum2temp.c,183 :: 		lcd_out(1,1, "Humidity1 limit:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,184 :: 		while(!setup_key){
L_setup79:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup80
;2hum2temp.c,185 :: 		lcd_out_short(2,1, humidity1_alart);
	MOVLW      2
	MOVWF      FARG_lcd_out_short_x+0
	MOVLW      1
	MOVWF      FARG_lcd_out_short_y+0
	MOVF       _humidity1_alart+0, 0
	MOVWF      FARG_lcd_out_short_num+0
	CALL       _lcd_out_short+0
;2hum2temp.c,186 :: 		lcd_out(2,4, "%");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr14_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,188 :: 		if(up_key) humidity1_alart++;
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup81
	INCF       _humidity1_alart+0, 1
L_setup81:
;2hum2temp.c,189 :: 		if(humidity1_alart > 100) humidity1_alart = 0;
	MOVF       _humidity1_alart+0, 0
	SUBLW      100
	BTFSC      STATUS+0, 0
	GOTO       L_setup82
	CLRF       _humidity1_alart+0
L_setup82:
;2hum2temp.c,190 :: 		if(down_key) humidity1_alart--;
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_setup83
	DECF       _humidity1_alart+0, 1
L_setup83:
;2hum2temp.c,192 :: 		delay_ms(300);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_setup84:
	DECFSZ     R13+0, 1
	GOTO       L_setup84
	DECFSZ     R12+0, 1
	GOTO       L_setup84
	DECFSZ     R11+0, 1
	GOTO       L_setup84
	NOP
	NOP
;2hum2temp.c,193 :: 		}
	GOTO       L_setup79
L_setup80:
;2hum2temp.c,194 :: 		EEPROM_write(2, humidity1_alart);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _humidity1_alart+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;2hum2temp.c,195 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_setup85:
	DECFSZ     R13+0, 1
	GOTO       L_setup85
	DECFSZ     R12+0, 1
	GOTO       L_setup85
	DECFSZ     R11+0, 1
	GOTO       L_setup85
	NOP
;2hum2temp.c,197 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;2hum2temp.c,198 :: 		lcd_out(1,1, "Humidity2 limit:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr15_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,199 :: 		while(!setup_key){
L_setup86:
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_setup87
;2hum2temp.c,200 :: 		lcd_out_short(2,1, humidity2_alart);
	MOVLW      2
	MOVWF      FARG_lcd_out_short_x+0
	MOVLW      1
	MOVWF      FARG_lcd_out_short_y+0
	MOVF       _humidity2_alart+0, 0
	MOVWF      FARG_lcd_out_short_num+0
	CALL       _lcd_out_short+0
;2hum2temp.c,201 :: 		lcd_out(2,4, "%");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr16_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,203 :: 		if(up_key) humidity2_alart++;
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_setup88
	INCF       _humidity2_alart+0, 1
L_setup88:
;2hum2temp.c,204 :: 		if(humidity2 > 100) humidity2_alart = 0;
	MOVF       _humidity2+0, 0
	SUBLW      100
	BTFSC      STATUS+0, 0
	GOTO       L_setup89
	CLRF       _humidity2_alart+0
L_setup89:
;2hum2temp.c,205 :: 		if(down_key) humidity2_alart--;
	BTFSS      RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_setup90
	DECF       _humidity2_alart+0, 1
L_setup90:
;2hum2temp.c,207 :: 		delay_ms(300);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_setup91:
	DECFSZ     R13+0, 1
	GOTO       L_setup91
	DECFSZ     R12+0, 1
	GOTO       L_setup91
	DECFSZ     R11+0, 1
	GOTO       L_setup91
	NOP
	NOP
;2hum2temp.c,208 :: 		}
	GOTO       L_setup86
L_setup87:
;2hum2temp.c,209 :: 		EEPROM_write(3, humidity2_alart);
	MOVLW      3
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _humidity2_alart+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;2hum2temp.c,210 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;2hum2temp.c,211 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_setup92:
	DECFSZ     R13+0, 1
	GOTO       L_setup92
	DECFSZ     R12+0, 1
	GOTO       L_setup92
	DECFSZ     R11+0, 1
	GOTO       L_setup92
	NOP
;2hum2temp.c,212 :: 		}
L_end_setup:
	RETURN
; end of _setup

_alarm:

;2hum2temp.c,214 :: 		void alarm(){
;2hum2temp.c,215 :: 		buzzer = 1;
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
;2hum2temp.c,216 :: 		delay_ms(200);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_alarm93:
	DECFSZ     R13+0, 1
	GOTO       L_alarm93
	DECFSZ     R12+0, 1
	GOTO       L_alarm93
	DECFSZ     R11+0, 1
	GOTO       L_alarm93
	NOP
	NOP
;2hum2temp.c,217 :: 		buzzer = 0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;2hum2temp.c,218 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_alarm94:
	DECFSZ     R13+0, 1
	GOTO       L_alarm94
	DECFSZ     R12+0, 1
	GOTO       L_alarm94
	DECFSZ     R11+0, 1
	GOTO       L_alarm94
	NOP
	NOP
;2hum2temp.c,219 :: 		}
L_end_alarm:
	RETURN
; end of _alarm

_main:

;2hum2temp.c,221 :: 		void main() {
;2hum2temp.c,222 :: 		ADCON1 = 0x04;
	MOVLW      4
	MOVWF      ADCON1+0
;2hum2temp.c,223 :: 		TRISB0_bit = 1;
	BSF        TRISB0_bit+0, BitPos(TRISB0_bit+0)
;2hum2temp.c,224 :: 		TRISB1_bit = 1;
	BSF        TRISB1_bit+0, BitPos(TRISB1_bit+0)
;2hum2temp.c,225 :: 		TRISC = 0x80;
	MOVLW      128
	MOVWF      TRISC+0
;2hum2temp.c,226 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;2hum2temp.c,227 :: 		tmr_rly1 = 1;
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
;2hum2temp.c,228 :: 		tmr_rly2 = 0;
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
;2hum2temp.c,229 :: 		InitTimer0();
	CALL       _InitTimer0+0
;2hum2temp.c,230 :: 		lcd_init();
	CALL       _Lcd_Init+0
;2hum2temp.c,231 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;2hum2temp.c,232 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;2hum2temp.c,234 :: 		temp1_alart = EEPROM_read(0);
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp1_alart+0
;2hum2temp.c,235 :: 		temp2_alart = EEPROM_read(1);
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp2_alart+0
;2hum2temp.c,236 :: 		humidity1_alart = EEPROM_read(2);
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _humidity1_alart+0
;2hum2temp.c,237 :: 		humidity2_alart = EEPROM_read(3);
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _humidity2_alart+0
;2hum2temp.c,238 :: 		mm_H = EEPROM_read(4);
	MOVLW      4
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _mm_H+0
;2hum2temp.c,239 :: 		mm_L = EEPROM_read(5);
	MOVLW      5
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _mm_L+0
;2hum2temp.c,240 :: 		mm = (mm_H << 8) + mm_L;
	MOVF       _mm_H+0, 0
	MOVWF      _mm+1
	CLRF       _mm+0
	MOVF       R0+0, 0
	ADDWF      _mm+0, 1
	BTFSC      STATUS+0, 0
	INCF       _mm+1, 1
;2hum2temp.c,241 :: 		ss = EEPROM_read(6);
	MOVLW      6
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _ss+0
;2hum2temp.c,242 :: 		t_flag = EEPROM_read(7);
	MOVLW      7
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _t_flag+0
;2hum2temp.c,244 :: 		while(1){
L_main95:
;2hum2temp.c,245 :: 		dht11_sense = DHT11_read0();
	CALL       _DHT11_read0+0
	MOVF       R0+0, 0
	MOVWF      _dht11_sense+0
	MOVF       R0+1, 0
	MOVWF      _dht11_sense+1
;2hum2temp.c,246 :: 		humidity1 = dht11_sense >> 8;
	MOVF       R0+1, 0
	MOVWF      R2+0
	CLRF       R2+1
	MOVF       R2+0, 0
	MOVWF      _humidity1+0
;2hum2temp.c,247 :: 		read_temp1();
	CALL       _read_temp1+0
;2hum2temp.c,248 :: 		delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main97:
	DECFSZ     R13+0, 1
	GOTO       L_main97
	DECFSZ     R12+0, 1
	GOTO       L_main97
	DECFSZ     R11+0, 1
	GOTO       L_main97
	NOP
	NOP
;2hum2temp.c,250 :: 		dht11_sense = DHT11_read1();
	CALL       _DHT11_read1+0
	MOVF       R0+0, 0
	MOVWF      _dht11_sense+0
	MOVF       R0+1, 0
	MOVWF      _dht11_sense+1
;2hum2temp.c,251 :: 		humidity2 = dht11_sense >> 8;
	MOVF       R0+1, 0
	MOVWF      R2+0
	CLRF       R2+1
	MOVF       R2+0, 0
	MOVWF      _humidity2+0
;2hum2temp.c,252 :: 		read_temp2();
	CALL       _read_temp2+0
;2hum2temp.c,253 :: 		delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main98:
	DECFSZ     R13+0, 1
	GOTO       L_main98
	DECFSZ     R12+0, 1
	GOTO       L_main98
	DECFSZ     R11+0, 1
	GOTO       L_main98
	NOP
	NOP
;2hum2temp.c,255 :: 		lcd_out_short(1,1,humidity1);
	MOVLW      1
	MOVWF      FARG_lcd_out_short_x+0
	MOVLW      1
	MOVWF      FARG_lcd_out_short_y+0
	MOVF       _humidity1+0, 0
	MOVWF      FARG_lcd_out_short_num+0
	CALL       _lcd_out_short+0
;2hum2temp.c,256 :: 		lcd_out_short(2,1,humidity2);
	MOVLW      2
	MOVWF      FARG_lcd_out_short_x+0
	MOVLW      1
	MOVWF      FARG_lcd_out_short_y+0
	MOVF       _humidity2+0, 0
	MOVWF      FARG_lcd_out_short_num+0
	CALL       _lcd_out_short+0
;2hum2temp.c,257 :: 		lcd_out(1,4, "%");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr17_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,258 :: 		lcd_out(2,4, "%");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr18_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,259 :: 		lcd_out_short(1,6,temp1);
	MOVLW      1
	MOVWF      FARG_lcd_out_short_x+0
	MOVLW      6
	MOVWF      FARG_lcd_out_short_y+0
	MOVF       _temp1+0, 0
	MOVWF      FARG_lcd_out_short_num+0
	CALL       _lcd_out_short+0
;2hum2temp.c,260 :: 		lcd_out_short(1,12,temp2);
	MOVLW      1
	MOVWF      FARG_lcd_out_short_x+0
	MOVLW      12
	MOVWF      FARG_lcd_out_short_y+0
	MOVF       _temp2+0, 0
	MOVWF      FARG_lcd_out_short_num+0
	CALL       _lcd_out_short+0
;2hum2temp.c,261 :: 		lcd_chr(1,9, (char)223);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;2hum2temp.c,262 :: 		lcd_chr(1,15, (char)223);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;2hum2temp.c,263 :: 		lcd_out(1,10, "C");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr19_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,264 :: 		lcd_out(1,16, "C");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr20_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,266 :: 		lcd_out_int(2, 11, mm);
	MOVLW      2
	MOVWF      FARG_lcd_out_int_x+0
	MOVLW      11
	MOVWF      FARG_lcd_out_int_y+0
	MOVF       _mm+0, 0
	MOVWF      FARG_lcd_out_int_num+0
	MOVF       _mm+1, 0
	MOVWF      FARG_lcd_out_int_num+1
	CALL       _lcd_out_int+0
;2hum2temp.c,267 :: 		lcd_out(2,14, ":");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr21_2hum2temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;2hum2temp.c,268 :: 		lcd_out_2digit(2, 15, ss);
	MOVLW      2
	MOVWF      FARG_lcd_out_2digit_x+0
	MOVLW      15
	MOVWF      FARG_lcd_out_2digit_y+0
	MOVF       _ss+0, 0
	MOVWF      FARG_lcd_out_2digit_num+0
	CALL       _lcd_out_2digit+0
;2hum2temp.c,270 :: 		if(t_flag && sec_flag){
	MOVF       _t_flag+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main101
	BTFSS      _sec_flag+0, BitPos(_sec_flag+0)
	GOTO       L_main101
L__main116:
;2hum2temp.c,271 :: 		ss--;
	DECF       _ss+0, 1
;2hum2temp.c,272 :: 		if(ss < 0) {ss = 59; mm--;}
	MOVLW      128
	XORWF      _ss+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main102
	MOVLW      59
	MOVWF      _ss+0
	MOVLW      1
	SUBWF      _mm+0, 1
	BTFSS      STATUS+0, 0
	DECF       _mm+1, 1
L_main102:
;2hum2temp.c,273 :: 		if(mm == 0 && ss == 0) {
	MOVLW      0
	XORWF      _mm+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main147
	MOVLW      0
	XORWF      _mm+0, 0
L__main147:
	BTFSS      STATUS+0, 2
	GOTO       L_main105
	MOVF       _ss+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main105
L__main115:
;2hum2temp.c,274 :: 		mm_H = EEPROM_read(4);
	MOVLW      4
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _mm_H+0
;2hum2temp.c,275 :: 		mm_L = EEPROM_read(5);
	MOVLW      5
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _mm_L+0
;2hum2temp.c,276 :: 		ss = EEPROM_read(6);
	MOVLW      6
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _ss+0
;2hum2temp.c,277 :: 		mm = (mm_H << 8) + mm_L;
	MOVF       _mm_H+0, 0
	MOVWF      _mm+1
	CLRF       _mm+0
	MOVF       _mm_L+0, 0
	ADDWF      _mm+0, 1
	BTFSC      STATUS+0, 0
	INCF       _mm+1, 1
;2hum2temp.c,278 :: 		tmr_rly1 = ~tmr_rly1;
	MOVLW
	XORWF      RC4_bit+0, 1
;2hum2temp.c,279 :: 		tmr_rly2 = ~tmr_rly2;
	MOVLW
	XORWF      RC5_bit+0, 1
;2hum2temp.c,280 :: 		}
L_main105:
;2hum2temp.c,281 :: 		sec_flag = 0;
	BCF        _sec_flag+0, BitPos(_sec_flag+0)
;2hum2temp.c,282 :: 		}
L_main101:
;2hum2temp.c,284 :: 		if(setup_key) setup();
	BTFSS      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_main106
	CALL       _setup+0
L_main106:
;2hum2temp.c,286 :: 		if(temp1 != temp1_alart) {tmp1_rly = 1; alarm();}
	MOVLW      0
	XORWF      _temp1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main148
	MOVF       _temp1_alart+0, 0
	XORWF      _temp1+0, 0
L__main148:
	BTFSC      STATUS+0, 2
	GOTO       L_main107
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
	CALL       _alarm+0
	GOTO       L_main108
L_main107:
;2hum2temp.c,287 :: 		else tmp1_rly = 0;
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
L_main108:
;2hum2temp.c,288 :: 		if(temp2 != temp2_alart) {tmp2_rly = 1; alarm();}
	MOVLW      0
	XORWF      _temp2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main149
	MOVF       _temp2_alart+0, 0
	XORWF      _temp2+0, 0
L__main149:
	BTFSC      STATUS+0, 2
	GOTO       L_main109
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
	CALL       _alarm+0
	GOTO       L_main110
L_main109:
;2hum2temp.c,289 :: 		else tmp2_rly = 0;
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
L_main110:
;2hum2temp.c,290 :: 		if(humidity1 != humidity1_alart) {hum1_rly = 1; alarm();}
	MOVF       _humidity1+0, 0
	XORWF      _humidity1_alart+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main111
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
	CALL       _alarm+0
	GOTO       L_main112
L_main111:
;2hum2temp.c,291 :: 		else hum1_rly = 0;
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
L_main112:
;2hum2temp.c,292 :: 		if(humidity2 != humidity2_alart) {hum2_rly = 1; alarm();}
	MOVF       _humidity2+0, 0
	XORWF      _humidity2_alart+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main113
	BSF        RC3_bit+0, BitPos(RC3_bit+0)
	CALL       _alarm+0
	GOTO       L_main114
L_main113:
;2hum2temp.c,293 :: 		else hum2_rly = 0;
	BCF        RC3_bit+0, BitPos(RC3_bit+0)
L_main114:
;2hum2temp.c,294 :: 		}
	GOTO       L_main95
;2hum2temp.c,295 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
