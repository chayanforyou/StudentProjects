#line 1 "E:/Electronics/Abrar's corner/Raktim Sir/Overheating alarm/overheating.c"





sbit LCD_RS at RB1_bit;
sbit LCD_EN at RB2_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB1_bit;
sbit LCD_EN_Direction at TRISB2_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;


char temp;
char value;
float volt;
char txt[3];

char msg1[] = "Temp: ";
char msg2[] = "Machine Overheat";

const char character[] = {6,9,9,6,0,0,0,0};

void showdegree(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(64);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 0);
}


void action(char temp){
 if(temp >= 40){
  portc.f5  =  1 ;
  portc.f3  =  1 ;
 lcd_out(2,1, msg2);
 }
 else{
  portc.f5  =  0 ;
  portc.f3  =  0 ;
 lcd_out(2,1, "                ");
 }
}

void main() {
 lcd_init();
 lcd_cmd(_lcd_cursor_off);
 trisc = 0x00; portc = 0x00;

 while(1){
 value = adc_read(0);
 volt = value * 0.0197;
 temp = volt * 100;
 txt[0] = (temp / 10) + 48;
 txt[1] = (temp % 10) + 48;
 lcd_out(1,1, msg1);
 lcd_out(1,7, txt);
 showdegree(1,9);
 lcd_out(1,10, "C");
 delay_ms(300);
 action(temp);
 }
}
