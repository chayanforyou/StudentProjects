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

#define USE_MPU6050_SOFT_I2C
#include "MPU6050.h"
sbit Soft_I2C_Scl           at RC7_bit;
sbit Soft_I2C_Sda           at RC6_bit;
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