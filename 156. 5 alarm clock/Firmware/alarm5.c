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

//------------------ Declaration the pins of the DS1302 ------------------------
sbit rst  at RA2_bit;   //RST or CE
sbit sclk at RA0_bit;   //SCLK or Clk
sbit i_o  at RA1_bit;   //I/O or Data

sbit rst_Direction  at TRISA2_bit;
sbit sclk_Direction at TRISA0_bit;
sbit i_o_Direction  at TRISA1_bit;

#define butt_a RB0_bit
#define butt_b RB1_bit
#define output RC3_bit

unsigned short task, delay, x, alarm_flag;
unsigned short current_hh, current_mm;
unsigned short alarm1_hh, alarm1_mm;
unsigned short alarm2_hh, alarm2_mm;
unsigned short alarm3_hh, alarm3_mm;
unsigned short alarm4_hh, alarm4_mm;
unsigned short alarm5_hh, alarm5_mm;
int current_int, alarm1_int, alarm2_int, alarm3_int, alarm4_int, alarm5_int;

sbit flag_1 at alarm_flag.b0;
sbit flag_2 at alarm_flag.b1;
sbit flag_3 at alarm_flag.b2;
sbit flag_4 at alarm_flag.b3;
sbit flag_5 at alarm_flag.b4;

void dec_print_lcd(char temp, char x, char y){
   Lcd_Chr(x, y, ((temp / 10)  + 48));
   Lcd_Chr(x, y+1,((temp % 10)  + 48));
}

void show_clock(){
   task = read_Hours();
   current_hh = task;
   dec_print_lcd(task, 1, 5);
   Lcd_Chr(1,7,':');
   task = read_Minutes();
   current_mm = task;
   dec_print_lcd(task, 1, 8);
   Lcd_Chr(1,10,':');
   task = read_Seconds();
   dec_print_lcd(task, 1, 11);
}

void alarm_select(char temp){
   switch(temp){
      case 1:
         dec_print_lcd(alarm1_hh, 1, 8);
         dec_print_lcd(alarm1_mm, 1, 11);
         break;
      case 2:
         dec_print_lcd(alarm2_hh, 1, 8);
         dec_print_lcd(alarm2_mm, 1, 11);
         break;
      case 3:
         dec_print_lcd(alarm3_hh, 1, 8);
         dec_print_lcd(alarm3_mm, 1, 11);
         break;
      case 4:
         dec_print_lcd(alarm4_hh, 1, 8);
         dec_print_lcd(alarm4_mm, 1, 11);
         break;
      case 5:
         dec_print_lcd(alarm5_hh, 1, 8);
         dec_print_lcd(alarm5_mm, 1, 11);
         break;
   }
}

void setup_time(){
   delay_ms(1000);
   Lcd_Cmd(_LCD_CLEAR);
   lcd_out(1,1,"Alarm");

   x = 1;
   lcd_chr(1,6,x+48);
   Lcd_Chr(1,7,':');
   Lcd_Chr(1,10,':');

   Lcd_Chr(1,8,'H');
   while(!butt_a){                 //alarm 1 HH
      if(butt_b) {alarm1_hh++; delay_ms(500);}
      if(alarm1_hh > 23) alarm1_hh = 0;
      alarm_select(x);
   }
   EEPROM_write(0, alarm1_hh);
   delay_ms(500);

   Lcd_Chr(1,8,'M');
   while(!butt_a){                 //alarm 1 MM
      if(butt_b) {alarm1_mm++; delay_ms(500);}
      if(alarm1_mm > 59) alarm1_mm = 0;
      alarm_select(x);
   }
   EEPROM_write(1, alarm1_mm);
   delay_ms(500);

   Lcd_Chr(1,8,'S');
   while(!butt_a){                 //alarm 1 Status
      if(butt_b) {flag_1 =~ flag_1; delay_ms(500);}
      if(flag_1) Lcd_Chr(1,6,'1');
      else Lcd_Chr(1,6,'0');
   }
   EEPROM_write(11, alarm_flag);
   delay_ms(500);

   x = 2;
   lcd_chr(1,6,x+48);

   Lcd_Chr(1,8,'H');
   while(!butt_a){                 //alarm 2 HH
      if(butt_b) {alarm2_hh++; delay_ms(500);}
      if(alarm2_hh > 23) alarm2_hh = 0;
      alarm_select(x);
   }
   EEPROM_write(2, alarm2_hh);
   delay_ms(500);

   Lcd_Chr(1,8,'M');
   while(!butt_a){                 //alarm 2 MM
      if(butt_b) {alarm2_mm++; delay_ms(500);}
      if(alarm2_mm > 59) alarm2_mm = 0;
      alarm_select(x);
   }
   EEPROM_write(3, alarm2_mm);
   delay_ms(500);

   Lcd_Chr(1,8,'S');
   while(!butt_a){                 //alarm 2 Status
      if(butt_b) {flag_2 =~ flag_2; delay_ms(500);}
      if(flag_2) Lcd_Chr(1,6,'1');
      else Lcd_Chr(1,6,'0');
   }
   EEPROM_write(11, alarm_flag);
   delay_ms(500);

   x = 3;
   lcd_chr(1,6,x+48);

   Lcd_Chr(1,8,'H');
   while(!butt_a){                 //alarm 3 HH
      if(butt_b) {alarm3_hh++; delay_ms(500);}
      if(alarm3_hh > 23) alarm3_hh = 0;
      alarm_select(x);
   }
   EEPROM_write(4, alarm3_hh);
   delay_ms(500);


   Lcd_Chr(1,8,'M');
   while(!butt_a){                 //alarm 3 MM
      if(butt_b) {alarm3_mm++; delay_ms(500);}
      if(alarm3_mm > 59) alarm3_mm = 0;
      alarm_select(x);
   }
   EEPROM_write(5, alarm3_mm);
   delay_ms(500);

   Lcd_Chr(1,8,'S');
   while(!butt_a){                 //alarm 3 Status
      if(butt_b) {flag_3 =~ flag_3; delay_ms(500);}
      if(flag_3) Lcd_Chr(1,6,'1');
      else Lcd_Chr(1,6,'0');
   }
   EEPROM_write(11, alarm_flag);
   delay_ms(500);

   x = 4;
   lcd_chr(1,6,x+48);

   Lcd_Chr(1,8,'H');
   while(!butt_a){                 //alarm 4 HH
      if(butt_b) {alarm4_hh++; delay_ms(500);}
      if(alarm4_hh > 23) alarm4_hh = 0;
      alarm_select(x);
   }
   EEPROM_write(6, alarm4_hh);
   delay_ms(500);

   Lcd_Chr(1,8,'M');
   while(!butt_a){                 //alarm 4 MM
      if(butt_b) {alarm4_mm++; delay_ms(500);}
      if(alarm4_mm > 59) alarm4_mm = 0;
      alarm_select(x);
   }
   EEPROM_write(7, alarm4_mm);
   delay_ms(500);

   Lcd_Chr(1,8,'S');
   while(!butt_a){                 //alarm 4 Status
      if(butt_b) {flag_4 =~ flag_4; delay_ms(500);}
      if(flag_4) Lcd_Chr(1,6,'1');
      else Lcd_Chr(1,6,'0');
   }
   EEPROM_write(11, alarm_flag);
   delay_ms(500);

   x = 5;
   lcd_chr(1,6,x+48);

   Lcd_Chr(1,8,'H');
   while(!butt_a){                 //alarm 5 HH
      if(butt_b) {alarm5_hh++; delay_ms(500);}
      if(alarm5_hh > 23) alarm5_hh = 0;
      alarm_select(x);
   }
   EEPROM_write(8, alarm5_hh);
   delay_ms(500);

   Lcd_Chr(1,8,'M');
   while(!butt_a){                 //alarm 5 MM
      if(butt_b) {alarm5_mm++; delay_ms(500);}
      if(alarm5_mm > 59) alarm5_mm = 0;
      alarm_select(x);
   }
   EEPROM_write(9, alarm5_mm);
   delay_ms(500);

   Lcd_Chr(1,8,'S');
   while(!butt_a){                 //alarm 5 Status
      if(butt_b) {flag_5 =~ flag_5; delay_ms(500);}
      if(flag_5) Lcd_Chr(1,6,'1');
      else Lcd_Chr(1,6,'0');
   }
   EEPROM_write(11, alarm_flag);
   delay_ms(500);

   Lcd_Cmd(_LCD_CLEAR);
   Lcd_out(1,1,"Delay: ");
   while(!butt_a){                 //alarm delay in second
      if(butt_b) {delay++; delay_ms(500);}
      if(delay > 99) delay = 0;
      dec_print_lcd(delay, 1, 8);
   }
   EEPROM_write(10, delay);
   delay_ms(500);
   Lcd_Cmd(_LCD_CLEAR);
}

void alarming(){
   Lcd_Cmd(_LCD_CLEAR);
   Lcd_out(1,1,"Alarming...");
   
   for(x = delay; x >= 0; x--){
      output = 1;
      delay_ms(1000);
      delay_ms(1000);
      delay_ms(1000);
      dec_print_lcd(x, 1, 12);
      if(x == 0) break;
   }
   output = 0;
   
   delay_ms(100);
   Lcd_Cmd(_LCD_CLEAR);
   Lcd_Cmd(_LCD_RETURN_HOME);
   Lcd_out(1,1,"Pls Wait 1min...");

   for(x = 0; x < 60; x++){
      delay_ms(1000);
      delay_ms(1000);
   }
   Lcd_Cmd(_LCD_CLEAR);
}

int dec2int(char hi, char low){
   return (hi * 100) + low;
}

void main(){
  ADCON1 = 7;
  //CMCON = 7;
  trisB0_bit = 1;
  trisB1_bit = 1;
  trisC3_bit = 0;

  Lcd_Init();
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_Cmd(_LCD_CURSOR_OFF);
  DS1302_Init();
  output = 0;
  
  //write_Time(21,29,0);
  
  alarm1_hh = EEPROM_read(0);
  alarm1_mm = EEPROM_read(1);
  alarm2_hh = EEPROM_read(2);
  alarm2_mm = EEPROM_read(3);
  alarm3_hh = EEPROM_read(4);
  alarm3_mm = EEPROM_read(5);
  alarm4_hh = EEPROM_read(6);
  alarm4_mm = EEPROM_read(7);
  alarm5_hh = EEPROM_read(8);
  alarm5_mm = EEPROM_read(9);
  delay = EEPROM_read(10);
  alarm_flag = EEPROM_read(11);
  
  while(1){
     show_clock();
     if(butt_a) setup_time();
     
     current_int = dec2int(current_hh, current_mm);
     alarm1_int = dec2int(alarm1_hh, alarm1_mm);
     alarm2_int = dec2int(alarm2_hh, alarm2_mm);
     alarm3_int = dec2int(alarm3_hh, alarm3_mm);
     alarm4_int = dec2int(alarm4_hh, alarm4_mm);
     alarm5_int = dec2int(alarm5_hh, alarm5_mm);
     
     if(flag_1) if(current_int == alarm1_int) alarming();
     if(flag_2) if(current_int == alarm2_int) alarming();
     if(flag_3) if(current_int == alarm3_int) alarming();
     if(flag_4) if(current_int == alarm4_int) alarming();
     if(flag_5) if(current_int == alarm5_int) alarming();
  }
}