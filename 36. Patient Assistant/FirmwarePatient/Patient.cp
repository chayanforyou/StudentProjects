#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/36. Patient Assistant/FirmwarePatient/Patient.c"
sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;
#line 1 "c:/users/antor/google drive/embedded projects/tanvir bhai/projects/36. patient assistant/firmwarepatient/mpu6050.h"
#line 125 "c:/users/antor/google drive/embedded projects/tanvir bhai/projects/36. patient assistant/firmwarepatient/mpu6050.h"
typedef struct{
 struct {
 signed int X;
 signed int Y;
 signed int Z;
 } Accel;

 signed int Temperature;
 struct{
 signed int X;
 signed int Y;
 signed int Z;
 } Gyro;
} MPU6050;

void MPU6050_Init (){
  Soft_I2C_Start  ();
  Soft_I2C_Write  ( 0xD0 );
  Soft_I2C_Write  ( 0x6B );
  Soft_I2C_Write  ( 2 );
  Soft_I2C_Write  ( 0 );
  Soft_I2C_Stop  ();
  Soft_I2C_Start  ();
  Soft_I2C_Write  ( 0xD0 );
  Soft_I2C_Write  ( 0x1B );
  Soft_I2C_Write  ( 0 );
  Soft_I2C_Write  ( 0 );
  Soft_I2C_Stop  ();
}

void MPU6050_Read ( MPU6050 * Sensor){
  Soft_I2C_Start  ();
  Soft_I2C_Write  ( 0xD0 );
  Soft_I2C_Write  ( 0x3B );
  Soft_I2C_Start  ();
  Soft_I2C_Write  ( 0xD0  | 1 );
 Sensor -> Accel .X = (  Soft_I2C_Read  ( 1 ) << 8 ) |  Soft_I2C_Read  ( 1 );
 Sensor -> Accel .Y = (  Soft_I2C_Read  ( 1 ) << 8 ) |  Soft_I2C_Read  ( 1 );
 Sensor -> Accel .Z = (  Soft_I2C_Read  ( 1 ) << 8 ) |  Soft_I2C_Read  ( 1 );
 Sensor -> Temperature = (  Soft_I2C_Read  ( 1 ) << 8 ) |  Soft_I2C_Read  ( 1 );
 Sensor -> Gyro .X = (  Soft_I2C_Read  ( 1 ) << 8 ) |  Soft_I2C_Read  ( 1 );
 Sensor -> Gyro .Y = (  Soft_I2C_Read  ( 1 ) << 8 ) |  Soft_I2C_Read  ( 1 );
 Sensor -> Gyro .Z = (  Soft_I2C_Read  ( 1 ) << 8 ) |  Soft_I2C_Read  ( 0 );
  Soft_I2C_Stop  ();
 Sensor -> Temperature += 12421 ;
 Sensor -> Temperature /= 340 ;
}
#line 16 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/36. Patient Assistant/FirmwarePatient/Patient.c"
sbit Soft_I2C_Scl at RC7_bit;
sbit Soft_I2C_Sda at RC6_bit;
sbit Soft_I2C_Scl_Direction at TRISC7_bit;
sbit Soft_I2C_Sda_Direction at TRISC6_bit;

MPU6050 Sensor;
char msg[7] ;

void main() {
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Soft_I2C_Init();
 MPU6050_Init();
 Lcd_Out(1,1,"X:");
 Lcd_Out(1,8,"Y:");
 Lcd_Out(2,1,"Z:");

 while (1){
 MPU6050_Read(&Sensor);
 IntToStr(Sensor.Gyro.X,msg);
 Lcd_Out(1,3,msg);
 IntToStr(Sensor.Gyro.Y,msg);
 Lcd_Out(1,10,msg);
 IntToStr(Sensor.Gyro.Z,msg);
 Lcd_Out(2,3,msg);
 Delay_ms(500);
 }
}
