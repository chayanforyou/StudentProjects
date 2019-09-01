
_InitTimer1:

;pumpMotor.c,24 :: 		void InitTimer1(){
;pumpMotor.c,25 :: 		T1CON = 0x21;
	MOVLW      33
	MOVWF      T1CON+0
;pumpMotor.c,26 :: 		TMR1IF_bit = 0;
	BCF        TMR1IF_bit+0, BitPos(TMR1IF_bit+0)
;pumpMotor.c,27 :: 		TMR1H = 0x3C;
	MOVLW      60
	MOVWF      TMR1H+0
;pumpMotor.c,28 :: 		TMR1L = 0xB0;
	MOVLW      176
	MOVWF      TMR1L+0
;pumpMotor.c,29 :: 		TMR1IE_bit = 1;
	BSF        TMR1IE_bit+0, BitPos(TMR1IE_bit+0)
;pumpMotor.c,30 :: 		INTCON = 0xC0;
	MOVLW      192
	MOVWF      INTCON+0
;pumpMotor.c,31 :: 		}
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

;pumpMotor.c,33 :: 		void Interrupt(){
;pumpMotor.c,34 :: 		if (TMR1IF_bit){
	BTFSS      TMR1IF_bit+0, BitPos(TMR1IF_bit+0)
	GOTO       L_Interrupt0
;pumpMotor.c,35 :: 		TMR1IF_bit = 0;
	BCF        TMR1IF_bit+0, BitPos(TMR1IF_bit+0)
;pumpMotor.c,36 :: 		TMR1H = 0x3C;
	MOVLW      60
	MOVWF      TMR1H+0
;pumpMotor.c,37 :: 		TMR1L = 0xB0;
	MOVLW      176
	MOVWF      TMR1L+0
;pumpMotor.c,38 :: 		anime++;
	INCF       _anime+0, 1
;pumpMotor.c,39 :: 		counter++;
	INCF       _counter+0, 1
;pumpMotor.c,40 :: 		if(anime > 5) anime = 0;
	MOVF       _anime+0, 0
	SUBLW      5
	BTFSC      STATUS+0, 0
	GOTO       L_Interrupt1
	CLRF       _anime+0
L_Interrupt1:
;pumpMotor.c,41 :: 		if(counter == 10){
	MOVF       _counter+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_Interrupt2
;pumpMotor.c,42 :: 		counter = 0;
	CLRF       _counter+0
;pumpMotor.c,43 :: 		secFlag = 1;
	BSF        _secFlag+0, BitPos(_secFlag+0)
;pumpMotor.c,44 :: 		}
L_Interrupt2:
;pumpMotor.c,45 :: 		}
L_Interrupt0:
;pumpMotor.c,46 :: 		}
L_end_Interrupt:
L__Interrupt117:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _Interrupt

_clearDigit:

;pumpMotor.c,48 :: 		void clearDigit(){
;pumpMotor.c,49 :: 		digit1 = 1; digit2 = 1; digit3 = 1;
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
	BSF        RC1_bit+0, BitPos(RC1_bit+0)
	BSF        RC2_bit+0, BitPos(RC2_bit+0)
;pumpMotor.c,50 :: 		digit4 = 1; digit5 = 1;
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;pumpMotor.c,51 :: 		}
L_end_clearDigit:
	RETURN
; end of _clearDigit

_mask:

;pumpMotor.c,53 :: 		void mask(char val){
;pumpMotor.c,54 :: 		RB0_bit = val.b6;
	BTFSC      FARG_mask_val+0, 6
	GOTO       L__mask120
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L__mask121
L__mask120:
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
L__mask121:
;pumpMotor.c,55 :: 		RB1_bit = val.b5;
	BTFSC      FARG_mask_val+0, 5
	GOTO       L__mask122
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L__mask123
L__mask122:
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
L__mask123:
;pumpMotor.c,56 :: 		RB2_bit = val.b0;
	BTFSC      FARG_mask_val+0, 0
	GOTO       L__mask124
	BCF        RB2_bit+0, BitPos(RB2_bit+0)
	GOTO       L__mask125
L__mask124:
	BSF        RB2_bit+0, BitPos(RB2_bit+0)
L__mask125:
;pumpMotor.c,57 :: 		RB3_bit = val.b1;
	BTFSC      FARG_mask_val+0, 1
	GOTO       L__mask126
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
	GOTO       L__mask127
L__mask126:
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
L__mask127:
;pumpMotor.c,58 :: 		RB4_bit = val.b2;
	BTFSC      FARG_mask_val+0, 2
	GOTO       L__mask128
	BCF        RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L__mask129
L__mask128:
	BSF        RB4_bit+0, BitPos(RB4_bit+0)
L__mask129:
;pumpMotor.c,59 :: 		RB5_bit = val.b3;
	BTFSC      FARG_mask_val+0, 3
	GOTO       L__mask130
	BCF        RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L__mask131
L__mask130:
	BSF        RB5_bit+0, BitPos(RB5_bit+0)
L__mask131:
;pumpMotor.c,60 :: 		RB6_bit = val.b4;
	BTFSC      FARG_mask_val+0, 4
	GOTO       L__mask132
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L__mask133
L__mask132:
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
L__mask133:
;pumpMotor.c,61 :: 		}
L_end_mask:
	RETURN
; end of _mask

_segmentOut:

;pumpMotor.c,63 :: 		void segmentOut(char d, char val){
;pumpMotor.c,64 :: 		mask(val);
	MOVF       FARG_segmentOut_val+0, 0
	MOVWF      FARG_mask_val+0
	CALL       _mask+0
;pumpMotor.c,65 :: 		switch(d){
	GOTO       L_segmentOut3
;pumpMotor.c,66 :: 		case 1: digit1 = 0; break;
L_segmentOut5:
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
	GOTO       L_segmentOut4
;pumpMotor.c,67 :: 		case 2: digit2 = 0; break;
L_segmentOut6:
	BCF        RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_segmentOut4
;pumpMotor.c,68 :: 		case 3: digit3 = 0; break;
L_segmentOut7:
	BCF        RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_segmentOut4
;pumpMotor.c,69 :: 		case 4: digit4 = 0; break;
L_segmentOut8:
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
	GOTO       L_segmentOut4
;pumpMotor.c,70 :: 		case 5: digit5 = 0; break;
L_segmentOut9:
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
	GOTO       L_segmentOut4
;pumpMotor.c,71 :: 		}
L_segmentOut3:
	MOVF       FARG_segmentOut_d+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_segmentOut5
	MOVF       FARG_segmentOut_d+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_segmentOut6
	MOVF       FARG_segmentOut_d+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_segmentOut7
	MOVF       FARG_segmentOut_d+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_segmentOut8
	MOVF       FARG_segmentOut_d+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_segmentOut9
L_segmentOut4:
;pumpMotor.c,72 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_segmentOut10:
	DECFSZ     R13+0, 1
	GOTO       L_segmentOut10
	DECFSZ     R12+0, 1
	GOTO       L_segmentOut10
	NOP
	NOP
;pumpMotor.c,73 :: 		clearDigit();
	CALL       _clearDigit+0
;pumpMotor.c,74 :: 		}
L_end_segmentOut:
	RETURN
; end of _segmentOut

_segmentByte:

;pumpMotor.c,76 :: 		void segmentByte(char d, char val){
;pumpMotor.c,78 :: 		digit[0] = cathode[val / 10];
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_segmentByte_val+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      _cathode+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_cathode+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      segmentByte_digit_L0+0
;pumpMotor.c,79 :: 		digit[1] = cathode[val % 10];
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_segmentByte_val+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      _cathode+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_cathode+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      segmentByte_digit_L0+1
;pumpMotor.c,81 :: 		segmentOut(d, digit[0]);
	MOVF       FARG_segmentByte_d+0, 0
	MOVWF      FARG_segmentOut_d+0
	MOVF       segmentByte_digit_L0+0, 0
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,82 :: 		segmentOut(d + 1, digit[1]);
	INCF       FARG_segmentByte_d+0, 0
	MOVWF      FARG_segmentOut_d+0
	MOVF       segmentByte_digit_L0+1, 0
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,83 :: 		}
L_end_segmentByte:
	RETURN
; end of _segmentByte

_animation:

;pumpMotor.c,85 :: 		void animation(){
;pumpMotor.c,86 :: 		switch(anime){
	GOTO       L_animation11
;pumpMotor.c,87 :: 		case 0: segmentOut(1, 1); break;
L_animation13:
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      1
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
	GOTO       L_animation12
;pumpMotor.c,88 :: 		case 1: segmentOut(1, 2); break;
L_animation14:
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      2
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
	GOTO       L_animation12
;pumpMotor.c,89 :: 		case 2: segmentOut(1, 4); break;
L_animation15:
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      4
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
	GOTO       L_animation12
;pumpMotor.c,90 :: 		case 3: segmentOut(1, 8); break;
L_animation16:
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      8
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
	GOTO       L_animation12
;pumpMotor.c,91 :: 		case 4: segmentOut(1, 16); break;
L_animation17:
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      16
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
	GOTO       L_animation12
;pumpMotor.c,92 :: 		case 5: segmentOut(1, 32); break;
L_animation18:
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      32
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
	GOTO       L_animation12
;pumpMotor.c,93 :: 		}
L_animation11:
	MOVF       _anime+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_animation13
	MOVF       _anime+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_animation14
	MOVF       _anime+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_animation15
	MOVF       _anime+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_animation16
	MOVF       _anime+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_animation17
	MOVF       _anime+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_animation18
L_animation12:
;pumpMotor.c,94 :: 		}
L_end_animation:
	RETURN
; end of _animation

_EEPROMWrite:

;pumpMotor.c,96 :: 		void EEPROMWrite(char addrs, char val){
;pumpMotor.c,97 :: 		soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;pumpMotor.c,98 :: 		soft_I2C_Write(0xA2);
	MOVLW      162
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;pumpMotor.c,99 :: 		soft_I2C_Write(addrs);
	MOVF       FARG_EEPROMWrite_addrs+0, 0
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;pumpMotor.c,100 :: 		soft_I2C_Write(val);
	MOVF       FARG_EEPROMWrite_val+0, 0
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;pumpMotor.c,101 :: 		soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;pumpMotor.c,102 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_EEPROMWrite19:
	DECFSZ     R13+0, 1
	GOTO       L_EEPROMWrite19
	DECFSZ     R12+0, 1
	GOTO       L_EEPROMWrite19
	NOP
	NOP
;pumpMotor.c,103 :: 		}
L_end_EEPROMWrite:
	RETURN
; end of _EEPROMWrite

_EEPROMRead:

;pumpMotor.c,105 :: 		char EEPROMRead(char addrs){
;pumpMotor.c,107 :: 		soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;pumpMotor.c,108 :: 		soft_I2C_Write(0xA2);
	MOVLW      162
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;pumpMotor.c,109 :: 		soft_I2C_Write(addrs);
	MOVF       FARG_EEPROMRead_addrs+0, 0
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;pumpMotor.c,110 :: 		soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;pumpMotor.c,111 :: 		soft_I2C_Write(0xA3);
	MOVLW      163
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;pumpMotor.c,112 :: 		dta = soft_I2C_Read(0u);
	CLRF       FARG_Soft_I2C_Read_ack+0
	CLRF       FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      EEPROMRead_dta_L0+0
;pumpMotor.c,113 :: 		soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;pumpMotor.c,114 :: 		delay_ms(25);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_EEPROMRead20:
	DECFSZ     R13+0, 1
	GOTO       L_EEPROMRead20
	DECFSZ     R12+0, 1
	GOTO       L_EEPROMRead20
	NOP
;pumpMotor.c,115 :: 		return dta;
	MOVF       EEPROMRead_dta_L0+0, 0
	MOVWF      R0+0
;pumpMotor.c,116 :: 		}
L_end_EEPROMRead:
	RETURN
; end of _EEPROMRead

_checkUP:

;pumpMotor.c,123 :: 		char checkUP(char val){
;pumpMotor.c,125 :: 		if(upKey && !bFlag) {
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_checkUP23
	MOVF       checkUP_bFlag_L0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_checkUP23
L__checkUP107:
;pumpMotor.c,126 :: 		val++;
	INCF       FARG_checkUP_val+0, 1
;pumpMotor.c,127 :: 		if(val > 99) val = 0;
	MOVF       FARG_checkUP_val+0, 0
	SUBLW      99
	BTFSC      STATUS+0, 0
	GOTO       L_checkUP24
	CLRF       FARG_checkUP_val+0
L_checkUP24:
;pumpMotor.c,128 :: 		bFlag = 1;
	MOVLW      1
	MOVWF      checkUP_bFlag_L0+0
;pumpMotor.c,129 :: 		}
L_checkUP23:
;pumpMotor.c,130 :: 		if(!upKey) bFlag = 0;
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_checkUP25
	CLRF       checkUP_bFlag_L0+0
L_checkUP25:
;pumpMotor.c,131 :: 		return val;
	MOVF       FARG_checkUP_val+0, 0
	MOVWF      R0+0
;pumpMotor.c,132 :: 		}
L_end_checkUP:
	RETURN
; end of _checkUP

_checkDOWN:

;pumpMotor.c,134 :: 		char checkDOWN(char val){
;pumpMotor.c,136 :: 		if(downKey && !bFlag) {
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_checkDOWN28
	MOVF       checkDOWN_bFlag_L0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_checkDOWN28
L__checkDOWN108:
;pumpMotor.c,137 :: 		if(val != 0) val--;
	MOVF       FARG_checkDOWN_val+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_checkDOWN29
	DECF       FARG_checkDOWN_val+0, 1
L_checkDOWN29:
;pumpMotor.c,138 :: 		bFlag = 1;
	MOVLW      1
	MOVWF      checkDOWN_bFlag_L0+0
;pumpMotor.c,139 :: 		}
L_checkDOWN28:
;pumpMotor.c,140 :: 		if(!downKey) bFlag = 0;
	BTFSC      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_checkDOWN30
	CLRF       checkDOWN_bFlag_L0+0
L_checkDOWN30:
;pumpMotor.c,141 :: 		return val;
	MOVF       FARG_checkDOWN_val+0, 0
	MOVWF      R0+0
;pumpMotor.c,142 :: 		}
L_end_checkDOWN:
	RETURN
; end of _checkDOWN

_setupTime:

;pumpMotor.c,144 :: 		void setupTime(){
;pumpMotor.c,146 :: 		delay_ms(400);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_setupTime31:
	DECFSZ     R13+0, 1
	GOTO       L_setupTime31
	DECFSZ     R12+0, 1
	GOTO       L_setupTime31
	DECFSZ     R11+0, 1
	GOTO       L_setupTime31
;pumpMotor.c,147 :: 		while(!setKey){
L_setupTime32:
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime33
;pumpMotor.c,148 :: 		for(d = 0; d < 100; d++){
	CLRF       setupTime_d_L0+0
L_setupTime34:
	MOVLW      100
	SUBWF      setupTime_d_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_setupTime35
;pumpMotor.c,149 :: 		segmentOut(1, 16);  // 1
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      16
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,150 :: 		segmentByte(2, targetMM);
	MOVLW      2
	MOVWF      FARG_segmentByte_d+0
	MOVF       _targetMM+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,151 :: 		segmentByte(4, targetSS);
	MOVLW      4
	MOVWF      FARG_segmentByte_d+0
	MOVF       _targetSS+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,152 :: 		targetMM = checkUP(targetMM);
	MOVF       _targetMM+0, 0
	MOVWF      FARG_checkUP_val+0
	CALL       _checkUP+0
	MOVF       R0+0, 0
	MOVWF      _targetMM+0
;pumpMotor.c,153 :: 		targetMM = checkDOWN(targetMM);
	MOVF       R0+0, 0
	MOVWF      FARG_checkDOWN_val+0
	CALL       _checkDOWN+0
	MOVF       R0+0, 0
	MOVWF      _targetMM+0
;pumpMotor.c,154 :: 		if(setKey) break;
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime37
	GOTO       L_setupTime35
L_setupTime37:
;pumpMotor.c,148 :: 		for(d = 0; d < 100; d++){
	INCF       setupTime_d_L0+0, 1
;pumpMotor.c,155 :: 		}
	GOTO       L_setupTime34
L_setupTime35:
;pumpMotor.c,156 :: 		for(d = 0; d < 100; d++){
	CLRF       setupTime_d_L0+0
L_setupTime38:
	MOVLW      100
	SUBWF      setupTime_d_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_setupTime39
;pumpMotor.c,157 :: 		segmentOut(1, 16);  // 1
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      16
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,158 :: 		segmentByte(4, currentSS);
	MOVLW      4
	MOVWF      FARG_segmentByte_d+0
	MOVF       _currentSS+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,159 :: 		targetMM = checkUP(targetMM);
	MOVF       _targetMM+0, 0
	MOVWF      FARG_checkUP_val+0
	CALL       _checkUP+0
	MOVF       R0+0, 0
	MOVWF      _targetMM+0
;pumpMotor.c,160 :: 		targetMM = checkDOWN(targetMM);
	MOVF       R0+0, 0
	MOVWF      FARG_checkDOWN_val+0
	CALL       _checkDOWN+0
	MOVF       R0+0, 0
	MOVWF      _targetMM+0
;pumpMotor.c,161 :: 		if(setKey) break;
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime41
	GOTO       L_setupTime39
L_setupTime41:
;pumpMotor.c,156 :: 		for(d = 0; d < 100; d++){
	INCF       setupTime_d_L0+0, 1
;pumpMotor.c,162 :: 		}
	GOTO       L_setupTime38
L_setupTime39:
;pumpMotor.c,163 :: 		}
	GOTO       L_setupTime32
L_setupTime33:
;pumpMotor.c,164 :: 		delay_ms(400);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_setupTime42:
	DECFSZ     R13+0, 1
	GOTO       L_setupTime42
	DECFSZ     R12+0, 1
	GOTO       L_setupTime42
	DECFSZ     R11+0, 1
	GOTO       L_setupTime42
;pumpMotor.c,165 :: 		EEPROMWrite(0, targetMM);
	CLRF       FARG_EEPROMWrite_addrs+0
	MOVF       _targetMM+0, 0
	MOVWF      FARG_EEPROMWrite_val+0
	CALL       _EEPROMWrite+0
;pumpMotor.c,167 :: 		while(!setKey){
L_setupTime43:
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime44
;pumpMotor.c,168 :: 		for(d = 0; d < 100; d++){
	CLRF       setupTime_d_L0+0
L_setupTime45:
	MOVLW      100
	SUBWF      setupTime_d_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_setupTime46
;pumpMotor.c,169 :: 		segmentOut(1, 16);  // 1
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      16
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,170 :: 		segmentByte(2, targetMM);
	MOVLW      2
	MOVWF      FARG_segmentByte_d+0
	MOVF       _targetMM+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,171 :: 		segmentByte(4, targetSS);
	MOVLW      4
	MOVWF      FARG_segmentByte_d+0
	MOVF       _targetSS+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,172 :: 		targetSS = checkUP(targetSS);
	MOVF       _targetSS+0, 0
	MOVWF      FARG_checkUP_val+0
	CALL       _checkUP+0
	MOVF       R0+0, 0
	MOVWF      _targetSS+0
;pumpMotor.c,173 :: 		targetSS = checkDOWN(targetSS);
	MOVF       R0+0, 0
	MOVWF      FARG_checkDOWN_val+0
	CALL       _checkDOWN+0
	MOVF       R0+0, 0
	MOVWF      _targetSS+0
;pumpMotor.c,174 :: 		if(setKey) break;
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime48
	GOTO       L_setupTime46
L_setupTime48:
;pumpMotor.c,168 :: 		for(d = 0; d < 100; d++){
	INCF       setupTime_d_L0+0, 1
;pumpMotor.c,175 :: 		}
	GOTO       L_setupTime45
L_setupTime46:
;pumpMotor.c,176 :: 		for(d = 0; d < 100; d++){
	CLRF       setupTime_d_L0+0
L_setupTime49:
	MOVLW      100
	SUBWF      setupTime_d_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_setupTime50
;pumpMotor.c,177 :: 		segmentOut(1, 16);  // 1
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      16
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,178 :: 		segmentByte(2, targetMM);
	MOVLW      2
	MOVWF      FARG_segmentByte_d+0
	MOVF       _targetMM+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,179 :: 		targetSS = checkUP(targetSS);
	MOVF       _targetSS+0, 0
	MOVWF      FARG_checkUP_val+0
	CALL       _checkUP+0
	MOVF       R0+0, 0
	MOVWF      _targetSS+0
;pumpMotor.c,180 :: 		targetSS = checkDOWN(targetSS);
	MOVF       R0+0, 0
	MOVWF      FARG_checkDOWN_val+0
	CALL       _checkDOWN+0
	MOVF       R0+0, 0
	MOVWF      _targetSS+0
;pumpMotor.c,181 :: 		if(setKey) break;
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime52
	GOTO       L_setupTime50
L_setupTime52:
;pumpMotor.c,176 :: 		for(d = 0; d < 100; d++){
	INCF       setupTime_d_L0+0, 1
;pumpMotor.c,182 :: 		}
	GOTO       L_setupTime49
L_setupTime50:
;pumpMotor.c,183 :: 		}
	GOTO       L_setupTime43
L_setupTime44:
;pumpMotor.c,184 :: 		delay_ms(400);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_setupTime53:
	DECFSZ     R13+0, 1
	GOTO       L_setupTime53
	DECFSZ     R12+0, 1
	GOTO       L_setupTime53
	DECFSZ     R11+0, 1
	GOTO       L_setupTime53
;pumpMotor.c,185 :: 		EEPROMWrite(1, targetSS);
	MOVLW      1
	MOVWF      FARG_EEPROMWrite_addrs+0
	MOVF       _targetSS+0, 0
	MOVWF      FARG_EEPROMWrite_val+0
	CALL       _EEPROMWrite+0
;pumpMotor.c,187 :: 		while(!setKey){
L_setupTime54:
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime55
;pumpMotor.c,188 :: 		for(d = 0; d < 100; d++){
	CLRF       setupTime_d_L0+0
L_setupTime56:
	MOVLW      100
	SUBWF      setupTime_d_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_setupTime57
;pumpMotor.c,189 :: 		segmentOut(1, 92);  // 0
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      92
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,190 :: 		segmentByte(2, repeatHH);
	MOVLW      2
	MOVWF      FARG_segmentByte_d+0
	MOVF       _repeatHH+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,191 :: 		segmentByte(4, repeatMM);
	MOVLW      4
	MOVWF      FARG_segmentByte_d+0
	MOVF       _repeatMM+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,192 :: 		repeatHH = checkUP(repeatHH);
	MOVF       _repeatHH+0, 0
	MOVWF      FARG_checkUP_val+0
	CALL       _checkUP+0
	MOVF       R0+0, 0
	MOVWF      _repeatHH+0
;pumpMotor.c,193 :: 		repeatHH = checkDOWN(repeatHH);
	MOVF       R0+0, 0
	MOVWF      FARG_checkDOWN_val+0
	CALL       _checkDOWN+0
	MOVF       R0+0, 0
	MOVWF      _repeatHH+0
;pumpMotor.c,194 :: 		if(setKey) break;
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime59
	GOTO       L_setupTime57
L_setupTime59:
;pumpMotor.c,188 :: 		for(d = 0; d < 100; d++){
	INCF       setupTime_d_L0+0, 1
;pumpMotor.c,195 :: 		}
	GOTO       L_setupTime56
L_setupTime57:
;pumpMotor.c,196 :: 		for(d = 0; d < 100; d++){
	CLRF       setupTime_d_L0+0
L_setupTime60:
	MOVLW      100
	SUBWF      setupTime_d_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_setupTime61
;pumpMotor.c,197 :: 		segmentOut(1, 92);  // 0
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      92
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,198 :: 		segmentByte(4, repeatMM);
	MOVLW      4
	MOVWF      FARG_segmentByte_d+0
	MOVF       _repeatMM+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,199 :: 		repeatHH = checkUP(repeatHH);
	MOVF       _repeatHH+0, 0
	MOVWF      FARG_checkUP_val+0
	CALL       _checkUP+0
	MOVF       R0+0, 0
	MOVWF      _repeatHH+0
;pumpMotor.c,200 :: 		repeatHH = checkDOWN(repeatHH);
	MOVF       R0+0, 0
	MOVWF      FARG_checkDOWN_val+0
	CALL       _checkDOWN+0
	MOVF       R0+0, 0
	MOVWF      _repeatHH+0
;pumpMotor.c,201 :: 		if(setKey) break;
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime63
	GOTO       L_setupTime61
L_setupTime63:
;pumpMotor.c,196 :: 		for(d = 0; d < 100; d++){
	INCF       setupTime_d_L0+0, 1
;pumpMotor.c,202 :: 		}
	GOTO       L_setupTime60
L_setupTime61:
;pumpMotor.c,203 :: 		}
	GOTO       L_setupTime54
L_setupTime55:
;pumpMotor.c,204 :: 		delay_ms(400);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_setupTime64:
	DECFSZ     R13+0, 1
	GOTO       L_setupTime64
	DECFSZ     R12+0, 1
	GOTO       L_setupTime64
	DECFSZ     R11+0, 1
	GOTO       L_setupTime64
;pumpMotor.c,205 :: 		EEPROMWrite(5, repeatHH);
	MOVLW      5
	MOVWF      FARG_EEPROMWrite_addrs+0
	MOVF       _repeatHH+0, 0
	MOVWF      FARG_EEPROMWrite_val+0
	CALL       _EEPROMWrite+0
;pumpMotor.c,207 :: 		while(!setKey){
L_setupTime65:
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime66
;pumpMotor.c,208 :: 		for(d = 0; d < 100; d++){
	CLRF       setupTime_d_L0+0
L_setupTime67:
	MOVLW      100
	SUBWF      setupTime_d_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_setupTime68
;pumpMotor.c,209 :: 		segmentOut(1, 92);  // 0
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      92
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,210 :: 		segmentByte(2, repeatHH);
	MOVLW      2
	MOVWF      FARG_segmentByte_d+0
	MOVF       _repeatHH+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,211 :: 		segmentByte(4, repeatMM);
	MOVLW      4
	MOVWF      FARG_segmentByte_d+0
	MOVF       _repeatMM+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,212 :: 		repeatMM = checkUP(repeatMM);
	MOVF       _repeatMM+0, 0
	MOVWF      FARG_checkUP_val+0
	CALL       _checkUP+0
	MOVF       R0+0, 0
	MOVWF      _repeatMM+0
;pumpMotor.c,213 :: 		repeatMM = checkDOWN(repeatMM);
	MOVF       R0+0, 0
	MOVWF      FARG_checkDOWN_val+0
	CALL       _checkDOWN+0
	MOVF       R0+0, 0
	MOVWF      _repeatMM+0
;pumpMotor.c,214 :: 		if(setKey) break;
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime70
	GOTO       L_setupTime68
L_setupTime70:
;pumpMotor.c,208 :: 		for(d = 0; d < 100; d++){
	INCF       setupTime_d_L0+0, 1
;pumpMotor.c,215 :: 		}
	GOTO       L_setupTime67
L_setupTime68:
;pumpMotor.c,216 :: 		for(d = 0; d < 100; d++){
	CLRF       setupTime_d_L0+0
L_setupTime71:
	MOVLW      100
	SUBWF      setupTime_d_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_setupTime72
;pumpMotor.c,217 :: 		segmentOut(1, 92);  // 0
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      92
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,218 :: 		segmentByte(2, repeatHH);
	MOVLW      2
	MOVWF      FARG_segmentByte_d+0
	MOVF       _repeatHH+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,219 :: 		repeatMM = checkUP(repeatMM);
	MOVF       _repeatMM+0, 0
	MOVWF      FARG_checkUP_val+0
	CALL       _checkUP+0
	MOVF       R0+0, 0
	MOVWF      _repeatMM+0
;pumpMotor.c,220 :: 		repeatMM = checkDOWN(repeatMM);
	MOVF       R0+0, 0
	MOVWF      FARG_checkDOWN_val+0
	CALL       _checkDOWN+0
	MOVF       R0+0, 0
	MOVWF      _repeatMM+0
;pumpMotor.c,221 :: 		if(setKey) break;
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_setupTime74
	GOTO       L_setupTime72
L_setupTime74:
;pumpMotor.c,216 :: 		for(d = 0; d < 100; d++){
	INCF       setupTime_d_L0+0, 1
;pumpMotor.c,222 :: 		}
	GOTO       L_setupTime71
L_setupTime72:
;pumpMotor.c,223 :: 		}
	GOTO       L_setupTime65
L_setupTime66:
;pumpMotor.c,224 :: 		delay_ms(400);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_setupTime75:
	DECFSZ     R13+0, 1
	GOTO       L_setupTime75
	DECFSZ     R12+0, 1
	GOTO       L_setupTime75
	DECFSZ     R11+0, 1
	GOTO       L_setupTime75
;pumpMotor.c,225 :: 		EEPROMWrite(6, repeatMM);
	MOVLW      6
	MOVWF      FARG_EEPROMWrite_addrs+0
	MOVF       _repeatMM+0, 0
	MOVWF      FARG_EEPROMWrite_val+0
	CALL       _EEPROMWrite+0
;pumpMotor.c,226 :: 		}
L_end_setupTime:
	RETURN
; end of _setupTime

_main:

;pumpMotor.c,228 :: 		void main() {
;pumpMotor.c,229 :: 		ADCON1 = 0x07; TRISA = 0x0F;
	MOVLW      7
	MOVWF      ADCON1+0
	MOVLW      15
	MOVWF      TRISA+0
;pumpMotor.c,230 :: 		TRISB = 0x00; PORTB = 0x00;
	CLRF       TRISB+0
	CLRF       PORTB+0
;pumpMotor.c,231 :: 		TRISC = 0x00; PORTC = 0x00;
	CLRF       TRISC+0
	CLRF       PORTC+0
;pumpMotor.c,232 :: 		soft_I2C_init();
	CALL       _Soft_I2C_Init+0
;pumpMotor.c,233 :: 		InitTimer1();
	CALL       _InitTimer1+0
;pumpMotor.c,244 :: 		targetMM = EEPROMRead(0);
	CLRF       FARG_EEPROMRead_addrs+0
	CALL       _EEPROMRead+0
	MOVF       R0+0, 0
	MOVWF      _targetMM+0
;pumpMotor.c,245 :: 		targetSS = EEPROMRead(1);
	MOVLW      1
	MOVWF      FARG_EEPROMRead_addrs+0
	CALL       _EEPROMRead+0
	MOVF       R0+0, 0
	MOVWF      _targetSS+0
;pumpMotor.c,246 :: 		currentMM = EEPROMRead(2);
	MOVLW      2
	MOVWF      FARG_EEPROMRead_addrs+0
	CALL       _EEPROMRead+0
	MOVF       R0+0, 0
	MOVWF      _currentMM+0
;pumpMotor.c,247 :: 		currentSS = EEPROMRead(3);
	MOVLW      3
	MOVWF      FARG_EEPROMRead_addrs+0
	CALL       _EEPROMRead+0
	MOVF       R0+0, 0
	MOVWF      _currentSS+0
;pumpMotor.c,248 :: 		motorFlag = EEPROMRead(4);
	MOVLW      4
	MOVWF      FARG_EEPROMRead_addrs+0
	CALL       _EEPROMRead+0
	MOVF       R0+0, 0
	MOVWF      _motorFlag+0
;pumpMotor.c,249 :: 		repeatHH = EEPROMRead(5);
	MOVLW      5
	MOVWF      FARG_EEPROMRead_addrs+0
	CALL       _EEPROMRead+0
	MOVF       R0+0, 0
	MOVWF      _repeatHH+0
;pumpMotor.c,250 :: 		repeatMM = EEPROMRead(6);
	MOVLW      6
	MOVWF      FARG_EEPROMRead_addrs+0
	CALL       _EEPROMRead+0
	MOVF       R0+0, 0
	MOVWF      _repeatMM+0
;pumpMotor.c,251 :: 		currentHH = EEPROMRead(7);
	MOVLW      7
	MOVWF      FARG_EEPROMRead_addrs+0
	CALL       _EEPROMRead+0
	MOVF       R0+0, 0
	MOVWF      _currentHH+0
;pumpMotor.c,253 :: 		while(1){
L_main76:
;pumpMotor.c,254 :: 		if(motorFlag == 0 && motorKey){
	MOVF       _motorFlag+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main80
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_main80
L__main114:
;pumpMotor.c,255 :: 		relay = 0;
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;pumpMotor.c,256 :: 		led = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;pumpMotor.c,258 :: 		EEPROMWrite(7, currentHH);
	MOVLW      7
	MOVWF      FARG_EEPROMWrite_addrs+0
	MOVF       _currentHH+0, 0
	MOVWF      FARG_EEPROMWrite_val+0
	CALL       _EEPROMWrite+0
;pumpMotor.c,259 :: 		segmentByte(2, currentHH);
	MOVLW      2
	MOVWF      FARG_segmentByte_d+0
	MOVF       _currentHH+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,260 :: 		EEPROMWrite(2, currentMM);
	MOVLW      2
	MOVWF      FARG_EEPROMWrite_addrs+0
	MOVF       _currentMM+0, 0
	MOVWF      FARG_EEPROMWrite_val+0
	CALL       _EEPROMWrite+0
;pumpMotor.c,261 :: 		segmentByte(4, currentMM);
	MOVLW      4
	MOVWF      FARG_segmentByte_d+0
	MOVF       _currentMM+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,262 :: 		EEPROMWrite(3, currentSS);
	MOVLW      3
	MOVWF      FARG_EEPROMWrite_addrs+0
	MOVF       _currentSS+0, 0
	MOVWF      FARG_EEPROMWrite_val+0
	CALL       _EEPROMWrite+0
;pumpMotor.c,263 :: 		animation();
	CALL       _animation+0
;pumpMotor.c,265 :: 		if(secFlag) {
	BTFSS      _secFlag+0, BitPos(_secFlag+0)
	GOTO       L_main81
;pumpMotor.c,266 :: 		if(currentSS == 0 && currentMM == 0 && currentHH == 0) {
	MOVF       _currentSS+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main84
	MOVF       _currentMM+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main84
	MOVF       _currentHH+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main84
L__main113:
;pumpMotor.c,267 :: 		currentMM = targetMM;
	MOVF       _targetMM+0, 0
	MOVWF      _currentMM+0
;pumpMotor.c,268 :: 		currentSS = targetSS;
	MOVF       _targetSS+0, 0
	MOVWF      _currentSS+0
;pumpMotor.c,269 :: 		motorFlag = 1;
	MOVLW      1
	MOVWF      _motorFlag+0
;pumpMotor.c,270 :: 		EEPROMWrite(4, motorFlag);
	MOVLW      4
	MOVWF      FARG_EEPROMWrite_addrs+0
	MOVLW      1
	MOVWF      FARG_EEPROMWrite_val+0
	CALL       _EEPROMWrite+0
;pumpMotor.c,271 :: 		}
L_main84:
;pumpMotor.c,273 :: 		if(currentSS == 0) {
	MOVF       _currentSS+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main85
;pumpMotor.c,274 :: 		currentSS = 60;
	MOVLW      60
	MOVWF      _currentSS+0
;pumpMotor.c,275 :: 		if(currentMM != 0) currentMM--;
	MOVF       _currentMM+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main86
	DECF       _currentMM+0, 1
L_main86:
;pumpMotor.c,276 :: 		if(currentMM == 0 && currentHH != 0){
	MOVF       _currentMM+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main89
	MOVF       _currentHH+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main89
L__main112:
;pumpMotor.c,277 :: 		currentMM = 59;
	MOVLW      59
	MOVWF      _currentMM+0
;pumpMotor.c,278 :: 		currentHH--;
	DECF       _currentHH+0, 1
;pumpMotor.c,279 :: 		}
L_main89:
;pumpMotor.c,280 :: 		}
L_main85:
;pumpMotor.c,282 :: 		currentSS--;
	DECF       _currentSS+0, 1
;pumpMotor.c,283 :: 		secFlag = 0;
	BCF        _secFlag+0, BitPos(_secFlag+0)
;pumpMotor.c,284 :: 		}
L_main81:
;pumpMotor.c,285 :: 		}
	GOTO       L_main90
L_main80:
;pumpMotor.c,286 :: 		else if(motorFlag == 1 && motorKey){
	MOVF       _motorFlag+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main93
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_main93
L__main111:
;pumpMotor.c,287 :: 		relay = 1;
	BSF        RC0_bit+0, BitPos(RC0_bit+0)
;pumpMotor.c,288 :: 		led = 1;
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
;pumpMotor.c,290 :: 		segmentByte(2, currentMM);
	MOVLW      2
	MOVWF      FARG_segmentByte_d+0
	MOVF       _currentMM+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,291 :: 		segmentByte(4, currentSS);
	MOVLW      4
	MOVWF      FARG_segmentByte_d+0
	MOVF       _currentSS+0, 0
	MOVWF      FARG_segmentByte_val+0
	CALL       _segmentByte+0
;pumpMotor.c,292 :: 		animation();
	CALL       _animation+0
;pumpMotor.c,294 :: 		if(secFlag) {
	BTFSS      _secFlag+0, BitPos(_secFlag+0)
	GOTO       L_main94
;pumpMotor.c,295 :: 		if(currentSS == 0 && currentMM != 0) {
	MOVF       _currentSS+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main97
	MOVF       _currentMM+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main97
L__main110:
;pumpMotor.c,296 :: 		currentSS = 60;
	MOVLW      60
	MOVWF      _currentSS+0
;pumpMotor.c,297 :: 		currentMM--;
	DECF       _currentMM+0, 1
;pumpMotor.c,298 :: 		}
L_main97:
;pumpMotor.c,300 :: 		if(currentSS == 0 && currentMM == 0) {
	MOVF       _currentSS+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main100
	MOVF       _currentMM+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main100
L__main109:
;pumpMotor.c,301 :: 		currentHH = repeatHH;
	MOVF       _repeatHH+0, 0
	MOVWF      _currentHH+0
;pumpMotor.c,302 :: 		currentMM = repeatMM;
	MOVF       _repeatMM+0, 0
	MOVWF      _currentMM+0
;pumpMotor.c,303 :: 		currentSS = 1;
	MOVLW      1
	MOVWF      _currentSS+0
;pumpMotor.c,304 :: 		motorFlag = 0;
	CLRF       _motorFlag+0
;pumpMotor.c,305 :: 		EEPROMWrite(4, motorFlag);
	MOVLW      4
	MOVWF      FARG_EEPROMWrite_addrs+0
	CLRF       FARG_EEPROMWrite_val+0
	CALL       _EEPROMWrite+0
;pumpMotor.c,306 :: 		}
L_main100:
;pumpMotor.c,308 :: 		currentSS--;
	DECF       _currentSS+0, 1
;pumpMotor.c,310 :: 		EEPROMWrite(2, currentMM);
	MOVLW      2
	MOVWF      FARG_EEPROMWrite_addrs+0
	MOVF       _currentMM+0, 0
	MOVWF      FARG_EEPROMWrite_val+0
	CALL       _EEPROMWrite+0
;pumpMotor.c,311 :: 		EEPROMWrite(3, currentSS);
	MOVLW      3
	MOVWF      FARG_EEPROMWrite_addrs+0
	MOVF       _currentSS+0, 0
	MOVWF      FARG_EEPROMWrite_val+0
	CALL       _EEPROMWrite+0
;pumpMotor.c,312 :: 		secFlag = 0;
	BCF        _secFlag+0, BitPos(_secFlag+0)
;pumpMotor.c,313 :: 		}
L_main94:
;pumpMotor.c,314 :: 		}
	GOTO       L_main101
L_main93:
;pumpMotor.c,315 :: 		else if(!motorKey){
	BTFSC      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_main102
;pumpMotor.c,316 :: 		relay = 0;
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;pumpMotor.c,317 :: 		led = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;pumpMotor.c,318 :: 		segmentOut(1, 63);     // O
	MOVLW      1
	MOVWF      FARG_segmentOut_d+0
	MOVLW      63
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,319 :: 		segmentOut(2, 113);    // F
	MOVLW      2
	MOVWF      FARG_segmentOut_d+0
	MOVLW      113
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,320 :: 		segmentOut(3, 113);    // F
	MOVLW      3
	MOVWF      FARG_segmentOut_d+0
	MOVLW      113
	MOVWF      FARG_segmentOut_val+0
	CALL       _segmentOut+0
;pumpMotor.c,322 :: 		if(setKey) {while(setKey); setupTime();}
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main103
L_main104:
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main105
	GOTO       L_main104
L_main105:
	CALL       _setupTime+0
L_main103:
;pumpMotor.c,323 :: 		if(motorKey) motorFlag = 1;
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_main106
	MOVLW      1
	MOVWF      _motorFlag+0
L_main106:
;pumpMotor.c,324 :: 		currentMM = targetMM;
	MOVF       _targetMM+0, 0
	MOVWF      _currentMM+0
;pumpMotor.c,325 :: 		currentSS = targetSS;
	MOVF       _targetSS+0, 0
	MOVWF      _currentSS+0
;pumpMotor.c,326 :: 		}
L_main102:
L_main101:
L_main90:
;pumpMotor.c,327 :: 		}
	GOTO       L_main76
;pumpMotor.c,328 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
