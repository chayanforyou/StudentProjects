sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D7_Direction at TRISB7_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB4_bit;

#define sensor RC0_bit
#define motor RC3_bit
int adc_value;
char txt[3];

void main(){
 trisC0_bit = 1;
 trisC3_bit = 0;
 lcd_init();
 lcd_cmd(_lcd_cursor_off);
 
 lcd_out(1,1,"SensorValue: ");
 lcd_out(2,1,"Motor: ");
 
 while(1){
   adc_value = adc_read(0);
   txt[0] = (adc_value / 100) + 48;
   txt[1] = ((adc_value % 100) / 10) + 48;
   txt[2] = (adc_value % 10) + 48;
   lcd_out(1,14, txt);
   delay_ms(500);

   if(adc_value >= 15){
     motor = 1;
     lcd_out(2,8,"ON ");
   }
   else{
     motor = 0;
     lcd_out(2,8,"OFF");
   }
 }
}

