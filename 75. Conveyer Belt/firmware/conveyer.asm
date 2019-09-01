
_select_lcd:

;conveyer.c,43 :: 		void select_lcd(short n){
;conveyer.c,44 :: 		if(n == 1){
	MOVF       FARG_select_lcd_n+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_select_lcd0
;conveyer.c,45 :: 		TRISB0_bit = 1;
	BSF        TRISB0_bit+0, BitPos(TRISB0_bit+0)
;conveyer.c,46 :: 		TRISB1_bit = 0;
	BCF        TRISB1_bit+0, BitPos(TRISB1_bit+0)
;conveyer.c,47 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_select_lcd1:
	DECFSZ     R13+0, 1
	GOTO       L_select_lcd1
	DECFSZ     R12+0, 1
	GOTO       L_select_lcd1
	NOP
	NOP
;conveyer.c,48 :: 		lcd_init();
	CALL       _Lcd_Init+0
;conveyer.c,49 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;conveyer.c,50 :: 		}
	GOTO       L_select_lcd2
L_select_lcd0:
;conveyer.c,52 :: 		TRISB0_bit = 0;
	BCF        TRISB0_bit+0, BitPos(TRISB0_bit+0)
;conveyer.c,53 :: 		TRISB1_bit = 1;
	BSF        TRISB1_bit+0, BitPos(TRISB1_bit+0)
;conveyer.c,54 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_select_lcd3:
	DECFSZ     R13+0, 1
	GOTO       L_select_lcd3
	DECFSZ     R12+0, 1
	GOTO       L_select_lcd3
	NOP
	NOP
;conveyer.c,55 :: 		lcd_init();
	CALL       _Lcd_Init+0
;conveyer.c,56 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;conveyer.c,57 :: 		}
L_select_lcd2:
;conveyer.c,58 :: 		}
L_end_select_lcd:
	RETURN
; end of _select_lcd

_servoRotate0:

;conveyer.c,60 :: 		void servoRotate0(){
;conveyer.c,62 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_servoRotate04:
	MOVLW      0
	SUBWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servoRotate067
	MOVLW      50
	SUBWF      R1+0, 0
L__servoRotate067:
	BTFSC      STATUS+0, 0
	GOTO       L_servoRotate05
;conveyer.c,63 :: 		servo = 1;
	BSF        RE0_bit+0, BitPos(RE0_bit+0)
;conveyer.c,64 :: 		Delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_servoRotate07:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate07
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate07
	NOP
;conveyer.c,65 :: 		servo = 0;
	BCF        RE0_bit+0, BitPos(RE0_bit+0)
;conveyer.c,66 :: 		Delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_servoRotate08:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate08
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate08
	NOP
	NOP
;conveyer.c,62 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;conveyer.c,67 :: 		}
	GOTO       L_servoRotate04
L_servoRotate05:
;conveyer.c,68 :: 		}
L_end_servoRotate0:
	RETURN
; end of _servoRotate0

_servoRotate90:

;conveyer.c,70 :: 		void servoRotate90() {
;conveyer.c,72 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_servoRotate909:
	MOVLW      0
	SUBWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servoRotate9069
	MOVLW      50
	SUBWF      R1+0, 0
L__servoRotate9069:
	BTFSC      STATUS+0, 0
	GOTO       L_servoRotate9010
;conveyer.c,73 :: 		servo = 1;
	BSF        RE0_bit+0, BitPos(RE0_bit+0)
;conveyer.c,74 :: 		Delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_servoRotate9012:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate9012
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate9012
	NOP
;conveyer.c,75 :: 		servo = 0;
	BCF        RE0_bit+0, BitPos(RE0_bit+0)
;conveyer.c,76 :: 		Delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_servoRotate9013:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate9013
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate9013
	NOP
	NOP
;conveyer.c,72 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;conveyer.c,77 :: 		}
	GOTO       L_servoRotate909
L_servoRotate9010:
;conveyer.c,78 :: 		}
L_end_servoRotate90:
	RETURN
; end of _servoRotate90

_motorOff:

;conveyer.c,80 :: 		void motorOff(){
;conveyer.c,81 :: 		motorA = 0;
	BCF        RE1_bit+0, BitPos(RE1_bit+0)
;conveyer.c,82 :: 		motorB = 0;
	BCF        RE2_bit+0, BitPos(RE2_bit+0)
;conveyer.c,83 :: 		}
L_end_motorOff:
	RETURN
; end of _motorOff

_motorClock:

;conveyer.c,85 :: 		void motorClock(){
;conveyer.c,86 :: 		motorA = 1;
	BSF        RE1_bit+0, BitPos(RE1_bit+0)
;conveyer.c,87 :: 		motorB = 0;
	BCF        RE2_bit+0, BitPos(RE2_bit+0)
;conveyer.c,88 :: 		}
L_end_motorClock:
	RETURN
; end of _motorClock

_motorAntiClock:

;conveyer.c,90 :: 		void motorAntiClock(){
;conveyer.c,91 :: 		motorA = 0;
	BCF        RE1_bit+0, BitPos(RE1_bit+0)
;conveyer.c,92 :: 		motorB = 1;
	BSF        RE2_bit+0, BitPos(RE2_bit+0)
;conveyer.c,93 :: 		}
L_end_motorAntiClock:
	RETURN
; end of _motorAntiClock

_strConstCopy:

;conveyer.c,95 :: 		void strConstCopy(char *dest, const char *source) {
;conveyer.c,96 :: 		while(*source)
L_strConstCopy14:
	MOVF       FARG_strConstCopy_source+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       FARG_strConstCopy_source+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_strConstCopy15
;conveyer.c,97 :: 		*dest++ = *source++;
	MOVF       FARG_strConstCopy_source+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       FARG_strConstCopy_source+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      R0+0
	MOVF       FARG_strConstCopy_dest+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	INCF       FARG_strConstCopy_dest+0, 1
	INCF       FARG_strConstCopy_source+0, 1
	BTFSC      STATUS+0, 2
	INCF       FARG_strConstCopy_source+1, 1
	GOTO       L_strConstCopy14
L_strConstCopy15:
;conveyer.c,98 :: 		*dest = 0;
	MOVF       FARG_strConstCopy_dest+0, 0
	MOVWF      FSR
	CLRF       INDF+0
;conveyer.c,99 :: 		}
L_end_strConstCopy:
	RETURN
; end of _strConstCopy

_defaultLcd:

;conveyer.c,101 :: 		void defaultLcd(){
;conveyer.c,102 :: 		select_lcd(1);
	MOVLW      1
	MOVWF      FARG_select_lcd_n+0
	CALL       _select_lcd+0
;conveyer.c,103 :: 		strConstCopy(txt, txt1);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt1+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt1+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,104 :: 		lcd_out(1,1, txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,105 :: 		strConstCopy(txt, txt2);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt2+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt2+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,106 :: 		lcd_out(2,1, txt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,108 :: 		select_lcd(2);
	MOVLW      2
	MOVWF      FARG_select_lcd_n+0
	CALL       _select_lcd+0
;conveyer.c,109 :: 		strConstCopy(txt, txt1);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt1+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt1+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,110 :: 		lcd_out(1,1, txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,111 :: 		strConstCopy(txt, txt2);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt2+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt2+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,112 :: 		lcd_out(2,1, txt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,113 :: 		}
L_end_defaultLcd:
	RETURN
; end of _defaultLcd

_main:

;conveyer.c,115 :: 		void main() {
;conveyer.c,116 :: 		ADCON1 = 7;
	MOVLW      7
	MOVWF      ADCON1+0
;conveyer.c,117 :: 		CMCON = 7;
	MOVLW      7
	MOVWF      CMCON+0
;conveyer.c,118 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;conveyer.c,119 :: 		TRISE = 0x00;
	CLRF       TRISE+0
;conveyer.c,121 :: 		motorOff();
	CALL       _motorOff+0
;conveyer.c,122 :: 		servoRotate0();
	CALL       _servoRotate0+0
;conveyer.c,123 :: 		defaultLcd();
	CALL       _defaultLcd+0
;conveyer.c,124 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
	NOP
;conveyer.c,126 :: 		while(1){
L_main17:
;conveyer.c,127 :: 		if(irSensor1 == 0){
	BTFSC      RD4_bit+0, BitPos(RD4_bit+0)
	GOTO       L_main19
;conveyer.c,128 :: 		servoRotate90();
	CALL       _servoRotate90+0
;conveyer.c,129 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	DECFSZ     R11+0, 1
	GOTO       L_main20
	NOP
	NOP
;conveyer.c,130 :: 		servoRotate0();
	CALL       _servoRotate0+0
;conveyer.c,131 :: 		}
L_main19:
;conveyer.c,133 :: 		if(butt1 == 1 && checkpoint == 0){
	BTFSS      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main23
	MOVF       _checkpoint+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main23
L__main64:
;conveyer.c,134 :: 		checkpoint = 1;
	MOVLW      1
	MOVWF      _checkpoint+0
;conveyer.c,135 :: 		motorClock();
	CALL       _motorClock+0
;conveyer.c,137 :: 		select_lcd(1);
	MOVLW      1
	MOVWF      FARG_select_lcd_n+0
	CALL       _select_lcd+0
;conveyer.c,138 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;conveyer.c,139 :: 		strConstCopy(txt, txt3);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt3+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt3+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,140 :: 		lcd_out(2,1, txt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,142 :: 		select_lcd(2);
	MOVLW      2
	MOVWF      FARG_select_lcd_n+0
	CALL       _select_lcd+0
;conveyer.c,143 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;conveyer.c,144 :: 		strConstCopy(txt, txt4);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt4+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt4+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,145 :: 		lcd_out(2,1, txt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,146 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
	NOP
;conveyer.c,147 :: 		}
L_main23:
;conveyer.c,149 :: 		if(irSensor2 == 0 && checkpoint == 1){
	BTFSC      RD5_bit+0, BitPos(RD5_bit+0)
	GOTO       L_main27
	MOVF       _checkpoint+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main27
L__main63:
;conveyer.c,150 :: 		checkpoint = 2;
	MOVLW      2
	MOVWF      _checkpoint+0
;conveyer.c,151 :: 		motorOff();
	CALL       _motorOff+0
;conveyer.c,153 :: 		select_lcd(1);
	MOVLW      1
	MOVWF      FARG_select_lcd_n+0
	CALL       _select_lcd+0
;conveyer.c,154 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;conveyer.c,155 :: 		strConstCopy(txt, txt5);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt5+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt5+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,156 :: 		lcd_out(1,1, txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,157 :: 		strConstCopy(txt, txt6);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt6+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt6+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,158 :: 		lcd_out(2,1, txt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,159 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	DECFSZ     R11+0, 1
	GOTO       L_main28
	NOP
	NOP
;conveyer.c,160 :: 		}
L_main27:
;conveyer.c,162 :: 		if(butt2 == 1 && checkpoint == 2){
	BTFSS      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main31
	MOVF       _checkpoint+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main31
L__main62:
;conveyer.c,163 :: 		checkpoint = 3;
	MOVLW      3
	MOVWF      _checkpoint+0
;conveyer.c,164 :: 		motorAntiClock();
	CALL       _motorAntiClock+0
;conveyer.c,165 :: 		delay_ms(300);
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
;conveyer.c,166 :: 		}
L_main31:
;conveyer.c,168 :: 		if(irSensor3 == 0 && checkpoint == 3){
	BTFSC      RD6_bit+0, BitPos(RD6_bit+0)
	GOTO       L_main35
	MOVF       _checkpoint+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main35
L__main61:
;conveyer.c,169 :: 		checkpoint = 4;
	MOVLW      4
	MOVWF      _checkpoint+0
;conveyer.c,170 :: 		motorOff();
	CALL       _motorOff+0
;conveyer.c,171 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	DECFSZ     R11+0, 1
	GOTO       L_main36
	NOP
	NOP
;conveyer.c,172 :: 		}
L_main35:
;conveyer.c,174 :: 		if(butt3 == 1 && checkpoint == 4){
	BTFSS      RD2_bit+0, BitPos(RD2_bit+0)
	GOTO       L_main39
	MOVF       _checkpoint+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main39
L__main60:
;conveyer.c,175 :: 		checkpoint = 5;
	MOVLW      5
	MOVWF      _checkpoint+0
;conveyer.c,176 :: 		motorClock();
	CALL       _motorClock+0
;conveyer.c,178 :: 		select_lcd(2);
	MOVLW      2
	MOVWF      FARG_select_lcd_n+0
	CALL       _select_lcd+0
;conveyer.c,179 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;conveyer.c,180 :: 		strConstCopy(txt, txt3);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt3+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt3+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,181 :: 		lcd_out(2,1, txt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,183 :: 		select_lcd(1);
	MOVLW      1
	MOVWF      FARG_select_lcd_n+0
	CALL       _select_lcd+0
;conveyer.c,184 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;conveyer.c,185 :: 		strConstCopy(txt, txt4);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt4+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt4+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,186 :: 		lcd_out(2,1, txt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,187 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main40:
	DECFSZ     R13+0, 1
	GOTO       L_main40
	DECFSZ     R12+0, 1
	GOTO       L_main40
	DECFSZ     R11+0, 1
	GOTO       L_main40
	NOP
	NOP
;conveyer.c,188 :: 		}
L_main39:
;conveyer.c,190 :: 		if(irSensor4 == 0 && checkpoint == 5){
	BTFSC      RD7_bit+0, BitPos(RD7_bit+0)
	GOTO       L_main43
	MOVF       _checkpoint+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main43
L__main59:
;conveyer.c,191 :: 		checkpoint = 6;
	MOVLW      6
	MOVWF      _checkpoint+0
;conveyer.c,192 :: 		motorOff();
	CALL       _motorOff+0
;conveyer.c,193 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main44:
	DECFSZ     R13+0, 1
	GOTO       L_main44
	DECFSZ     R12+0, 1
	GOTO       L_main44
	DECFSZ     R11+0, 1
	GOTO       L_main44
	NOP
	NOP
;conveyer.c,194 :: 		}
L_main43:
;conveyer.c,196 :: 		if(butt4 == 1 && checkpoint == 6){
	BTFSS      RD3_bit+0, BitPos(RD3_bit+0)
	GOTO       L_main47
	MOVF       _checkpoint+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main47
L__main58:
;conveyer.c,197 :: 		checkpoint = 7;
	MOVLW      7
	MOVWF      _checkpoint+0
;conveyer.c,198 :: 		select_lcd(1);
	MOVLW      1
	MOVWF      FARG_select_lcd_n+0
	CALL       _select_lcd+0
;conveyer.c,199 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;conveyer.c,200 :: 		strConstCopy(txt, txt7);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt7+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt7+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,201 :: 		lcd_out(1,1, txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,202 :: 		strConstCopy(txt, txt8);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt8+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt8+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,203 :: 		lcd_out(2,1, txt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,205 :: 		select_lcd(2);
	MOVLW      2
	MOVWF      FARG_select_lcd_n+0
	CALL       _select_lcd+0
;conveyer.c,206 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;conveyer.c,207 :: 		strConstCopy(txt, txt7);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt7+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt7+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,208 :: 		lcd_out(1,1, txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,209 :: 		strConstCopy(txt, txt8);
	MOVLW      _txt+0
	MOVWF      FARG_strConstCopy_dest+0
	MOVLW      _txt8+0
	MOVWF      FARG_strConstCopy_source+0
	MOVLW      hi_addr(_txt8+0)
	MOVWF      FARG_strConstCopy_source+1
	CALL       _strConstCopy+0
;conveyer.c,210 :: 		lcd_out(2,1, txt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;conveyer.c,211 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main48:
	DECFSZ     R13+0, 1
	GOTO       L_main48
	DECFSZ     R12+0, 1
	GOTO       L_main48
	DECFSZ     R11+0, 1
	GOTO       L_main48
	NOP
	NOP
;conveyer.c,212 :: 		}
L_main47:
;conveyer.c,214 :: 		if(irSensor3 == 0 && checkpoint == 7){
	BTFSC      RD6_bit+0, BitPos(RD6_bit+0)
	GOTO       L_main51
	MOVF       _checkpoint+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_main51
L__main57:
;conveyer.c,215 :: 		checkpoint = 8;
	MOVLW      8
	MOVWF      _checkpoint+0
;conveyer.c,216 :: 		motorAntiClock();
	CALL       _motorAntiClock+0
;conveyer.c,217 :: 		defaultLcd();
	CALL       _defaultLcd+0
;conveyer.c,218 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main52:
	DECFSZ     R13+0, 1
	GOTO       L_main52
	DECFSZ     R12+0, 1
	GOTO       L_main52
	DECFSZ     R11+0, 1
	GOTO       L_main52
	NOP
	NOP
;conveyer.c,219 :: 		}
L_main51:
;conveyer.c,221 :: 		if(irSensor3 == 1 && checkpoint == 8){
	BTFSS      RD6_bit+0, BitPos(RD6_bit+0)
	GOTO       L_main55
	MOVF       _checkpoint+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L_main55
L__main56:
;conveyer.c,222 :: 		checkpoint = 0;
	CLRF       _checkpoint+0
;conveyer.c,223 :: 		motorOff();
	CALL       _motorOff+0
;conveyer.c,224 :: 		}
L_main55:
;conveyer.c,225 :: 		}
	GOTO       L_main17
;conveyer.c,226 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
