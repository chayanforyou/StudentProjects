
_MPU6050_Init:

;mpu6050.h,140 :: 		void  MPU6050_Init (){
;mpu6050.h,141 :: 		MPU6050_I2C_Start ();
	CALL       _Soft_I2C_Start+0
;mpu6050.h,142 :: 		MPU6050_I2C_Wr (MPU6050_ADDRESS);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;mpu6050.h,143 :: 		MPU6050_I2C_Wr (MPU6050_RA_PWR_MGMT_1);
	MOVLW      107
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;mpu6050.h,144 :: 		MPU6050_I2C_Wr ( 2 ); // Sleep OFF
	MOVLW      2
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;mpu6050.h,145 :: 		MPU6050_I2C_Wr ( 0 );
	CLRF       FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;mpu6050.h,146 :: 		MPU6050_I2C_Stop ();
	CALL       _Soft_I2C_Stop+0
;mpu6050.h,147 :: 		MPU6050_I2C_Start ();
	CALL       _Soft_I2C_Start+0
;mpu6050.h,148 :: 		MPU6050_I2C_Wr (MPU6050_ADDRESS);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;mpu6050.h,149 :: 		MPU6050_I2C_Wr (MPU6050_RA_GYRO_CONFIG);
	MOVLW      27
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;mpu6050.h,150 :: 		MPU6050_I2C_Wr ( 0 ); // gyro_config, + -250 ° / s
	CLRF       FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;mpu6050.h,151 :: 		MPU6050_I2C_Wr ( 0 ); // accel_config + -2g
	CLRF       FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;mpu6050.h,152 :: 		MPU6050_I2C_Stop ();
	CALL       _Soft_I2C_Stop+0
;mpu6050.h,153 :: 		}
L_end_MPU6050_Init:
	RETURN
; end of _MPU6050_Init

_MPU6050_Read:

;mpu6050.h,155 :: 		void  MPU6050_Read ( MPU6050 * Sensor){
;mpu6050.h,156 :: 		MPU6050_I2C_Start ();
	CALL       _Soft_I2C_Start+0
;mpu6050.h,157 :: 		MPU6050_I2C_Wr (MPU6050_ADDRESS);
	MOVLW      208
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;mpu6050.h,158 :: 		MPU6050_I2C_Wr (MPU6050_RA_ACCEL_XOUT_H);
	MOVLW      59
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;mpu6050.h,159 :: 		MPU6050_I2C_Start ();
	CALL       _Soft_I2C_Start+0
;mpu6050.h,160 :: 		MPU6050_I2C_Wr (MPU6050_ADDRESS |  1 );
	MOVLW      209
	MOVWF      FARG_Soft_I2C_Write_data_+0
	CALL       _Soft_I2C_Write+0
;mpu6050.h,161 :: 		Sensor -> Accel .X = ( MPU6050_I2C_Rd ( 1 ) <<  8 ) |  MPU6050_I2C_Rd ( 1 );
	MOVF       FARG_MPU6050_Read_Sensor+0, 0
	MOVWF      FLOC__MPU6050_Read+2
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__MPU6050_Read+1
	CLRF       FLOC__MPU6050_Read+0
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       FLOC__MPU6050_Read+0, 0
	IORWF      R0+0, 1
	MOVF       FLOC__MPU6050_Read+1, 0
	IORWF      R0+1, 1
	MOVF       FLOC__MPU6050_Read+2, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;mpu6050.h,162 :: 		Sensor -> Accel .Y = ( MPU6050_I2C_Rd ( 1 ) <<  8 ) |  MPU6050_I2C_Rd ( 1 );
	MOVLW      2
	ADDWF      FARG_MPU6050_Read_Sensor+0, 0
	MOVWF      FLOC__MPU6050_Read+2
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__MPU6050_Read+1
	CLRF       FLOC__MPU6050_Read+0
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       FLOC__MPU6050_Read+0, 0
	IORWF      R0+0, 1
	MOVF       FLOC__MPU6050_Read+1, 0
	IORWF      R0+1, 1
	MOVF       FLOC__MPU6050_Read+2, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;mpu6050.h,163 :: 		Sensor -> Accel .Z = ( MPU6050_I2C_Rd ( 1 ) <<  8 ) |  MPU6050_I2C_Rd ( 1 );
	MOVLW      4
	ADDWF      FARG_MPU6050_Read_Sensor+0, 0
	MOVWF      FLOC__MPU6050_Read+2
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__MPU6050_Read+1
	CLRF       FLOC__MPU6050_Read+0
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       FLOC__MPU6050_Read+0, 0
	IORWF      R0+0, 1
	MOVF       FLOC__MPU6050_Read+1, 0
	IORWF      R0+1, 1
	MOVF       FLOC__MPU6050_Read+2, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;mpu6050.h,164 :: 		Sensor -> Temperature = ( MPU6050_I2C_Rd ( 1 ) <<  8 ) |  MPU6050_I2C_Rd ( 1 );
	MOVLW      6
	ADDWF      FARG_MPU6050_Read_Sensor+0, 0
	MOVWF      FLOC__MPU6050_Read+2
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__MPU6050_Read+1
	CLRF       FLOC__MPU6050_Read+0
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       FLOC__MPU6050_Read+0, 0
	IORWF      R0+0, 1
	MOVF       FLOC__MPU6050_Read+1, 0
	IORWF      R0+1, 1
	MOVF       FLOC__MPU6050_Read+2, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;mpu6050.h,165 :: 		Sensor -> Gyro .X = ( MPU6050_I2C_Rd ( 1 ) <<  8 ) |  MPU6050_I2C_Rd ( 1 );
	MOVLW      8
	ADDWF      FARG_MPU6050_Read_Sensor+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      FLOC__MPU6050_Read+2
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__MPU6050_Read+1
	CLRF       FLOC__MPU6050_Read+0
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       FLOC__MPU6050_Read+0, 0
	IORWF      R0+0, 1
	MOVF       FLOC__MPU6050_Read+1, 0
	IORWF      R0+1, 1
	MOVF       FLOC__MPU6050_Read+2, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;mpu6050.h,166 :: 		Sensor -> Gyro .Y = ( MPU6050_I2C_Rd ( 1 ) <<  8 ) |  MPU6050_I2C_Rd ( 1 );
	MOVLW      8
	ADDWF      FARG_MPU6050_Read_Sensor+0, 0
	MOVWF      R0+0
	MOVLW      2
	ADDWF      R0+0, 0
	MOVWF      FLOC__MPU6050_Read+2
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__MPU6050_Read+1
	CLRF       FLOC__MPU6050_Read+0
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       FLOC__MPU6050_Read+0, 0
	IORWF      R0+0, 1
	MOVF       FLOC__MPU6050_Read+1, 0
	IORWF      R0+1, 1
	MOVF       FLOC__MPU6050_Read+2, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;mpu6050.h,167 :: 		Sensor -> Gyro .Z = ( MPU6050_I2C_Rd ( 1 ) <<  8 ) |  MPU6050_I2C_Rd ( 0 );
	MOVLW      8
	ADDWF      FARG_MPU6050_Read_Sensor+0, 0
	MOVWF      R0+0
	MOVLW      4
	ADDWF      R0+0, 0
	MOVWF      FLOC__MPU6050_Read+2
	MOVLW      1
	MOVWF      FARG_Soft_I2C_Read_ack+0
	MOVLW      0
	MOVWF      FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__MPU6050_Read+1
	CLRF       FLOC__MPU6050_Read+0
	CLRF       FARG_Soft_I2C_Read_ack+0
	CLRF       FARG_Soft_I2C_Read_ack+1
	CALL       _Soft_I2C_Read+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       FLOC__MPU6050_Read+0, 0
	IORWF      R0+0, 1
	MOVF       FLOC__MPU6050_Read+1, 0
	IORWF      R0+1, 1
	MOVF       FLOC__MPU6050_Read+2, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;mpu6050.h,168 :: 		MPU6050_I2C_Stop ();
	CALL       _Soft_I2C_Stop+0
;mpu6050.h,169 :: 		Sensor -> Temperature += 12421 ;
	MOVLW      6
	ADDWF      FARG_MPU6050_Read_Sensor+0, 0
	MOVWF      R2+0
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVLW      133
	ADDWF      INDF+0, 0
	MOVWF      R0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDLW      48
	MOVWF      R0+1
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;mpu6050.h,170 :: 		Sensor -> Temperature  /= 340 ;
	MOVLW      6
	ADDWF      FARG_MPU6050_Read_Sensor+0, 0
	MOVWF      FLOC__MPU6050_Read+0
	MOVF       FLOC__MPU6050_Read+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+1
	MOVLW      84
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       FLOC__MPU6050_Read+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;mpu6050.h,171 :: 		}
L_end_MPU6050_Read:
	RETURN
; end of _MPU6050_Read

_main:

;Patient.c,24 :: 		void main() {
;Patient.c,25 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;Patient.c,26 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Patient.c,27 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Patient.c,28 :: 		Soft_I2C_Init();
	CALL       _Soft_I2C_Init+0
;Patient.c,29 :: 		MPU6050_Init();
	CALL       _MPU6050_Init+0
;Patient.c,30 :: 		Lcd_Out(1,1,"X:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Patient+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Patient.c,31 :: 		Lcd_Out(1,8,"Y:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Patient+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Patient.c,32 :: 		Lcd_Out(2,1,"Z:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Patient+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Patient.c,34 :: 		while (1){
L_main0:
;Patient.c,35 :: 		MPU6050_Read(&Sensor);
	MOVLW      _Sensor+0
	MOVWF      FARG_MPU6050_Read_Sensor+0
	CALL       _MPU6050_Read+0
;Patient.c,36 :: 		IntToStr(Sensor.Gyro.X,msg);
	MOVF       _Sensor+8, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _Sensor+9, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _msg+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;Patient.c,37 :: 		Lcd_Out(1,3,msg);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Patient.c,38 :: 		IntToStr(Sensor.Gyro.Y,msg);
	MOVF       _Sensor+10, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _Sensor+11, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _msg+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;Patient.c,39 :: 		Lcd_Out(1,10,msg);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Patient.c,40 :: 		IntToStr(Sensor.Gyro.Z,msg);
	MOVF       _Sensor+12, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _Sensor+13, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _msg+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;Patient.c,41 :: 		Lcd_Out(2,3,msg);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Patient.c,42 :: 		Delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;Patient.c,43 :: 		}
	GOTO       L_main0
;Patient.c,44 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
