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

  sbit rst  at RC1_bit;   //RST or CE
  sbit i_o  at RC2_bit;   //I/O or Data
  sbit sclk at RC3_bit;   //SCLK or Clk
  sbit rst_Direction  at TRISC1_bit;
  sbit i_o_Direction  at TRISC2_bit;
  sbit sclk_Direction at TRISC3_bit;
  
  #define rly_1 RC4_bit
  #define rly_2 RC5_bit
  #define rly_3 RC6_bit
  #define set_key RA0_bit
  #define butt_a RA2_bit
  #define butt_b RA5_bit
  #define butt_c RC0_bit

  
  unsigned short tasks, desire_watt, mask;
  unsigned short morning_hh, morning_mm, morning_watt;
  unsigned short midday_hh, midday_mm, midday_watt;
  unsigned short night_hh, night_mm, night_watt;
  unsigned short current_watt, current_hh, current_mm;
  unsigned int morning_int, midday_int, night_int, current_int;

  bit morning_flag;
  bit midday_flag;
  bit night_flag;
  
void dec2ascii(unsigned short temp, char x, char y){
   Lcd_Chr(x,y,((temp / 10)  + 48));
   Lcd_Chr(x,y+1,((temp % 10)  + 48));
}
  
void show_time(){
   lcd_out(1,2, "Time:");
   tasks = read_Hours();
   current_hh = tasks;
   dec2ascii(tasks, 1, 8);
   Lcd_Chr(1,10,':');

   tasks = read_Minutes();
   current_mm = tasks;
   dec2ascii(tasks, 1, 11);
   Lcd_Chr(1,13,':');

   tasks = read_Seconds();
   dec2ascii(tasks, 1, 14);
}

void time_txt(char x){
   lcd_out(2,1, "Time: ");
   lcd_out(2,9, ":");
   if(x == 0) lcd_out(2,13, "HH");
   else lcd_out(2,13, "MM");
}

void watt_txt(){
   lcd_out(2,1, "Watt: ");
   lcd_out(2,9,"      ");
}

void setup(){
   rly_1 = 0; rly_2 = 0; rly_3 = 0;
   Lcd_Cmd(_LCD_CLEAR);
   lcd_out(1,1, "Watt per load:");
   delay_ms(2000);
   lcd_out(2,5, "Watt");
   dec2ascii(desire_watt, 2, 1);

      while(!butt_c){                                 //Watt per load
        if(butt_b){desire_watt++; delay_ms(500);}
        if(butt_a){desire_watt--; delay_ms(500);}
        if(desire_watt > 23) desire_watt = 0;
        dec2ascii(desire_watt, 2, 1);
        if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
      }
   EEPROM_write(9, desire_watt);
   delay_ms(500);

   Lcd_Cmd(_LCD_CLEAR);
   lcd_out(1,1, "Morning setup:");
   time_txt(0);
   dec2ascii(morning_hh, 2, 7);
   dec2ascii(morning_mm, 2, 10);

      while(!butt_c){                                 //morning Hours
        if(butt_b){morning_hh++; delay_ms(500);}
        if(butt_a){morning_hh--; delay_ms(500);}
        if(morning_hh > 23) morning_hh = 0;
        dec2ascii(morning_hh, 2, 7);
        if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
      }
   EEPROM_write(0, morning_hh);
   delay_ms(500);

   time_txt(1);

      while(!butt_c){                                 //morning Minutes
        if(butt_b){morning_mm++; delay_ms(500);}
        if(butt_a){morning_mm--; delay_ms(500);}
        if(morning_mm > 59) morning_mm = 0;
        dec2ascii(morning_mm, 2, 10);
        if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
      }
   EEPROM_write(1, morning_mm);
   delay_ms(500);

   watt_txt();

      while(!butt_c){                                 //morning watt
        if(butt_b){morning_watt++; delay_ms(500);}
        if(butt_a){morning_watt--; delay_ms(500);}
        if(morning_watt > 99) morning_watt = 0;
        dec2ascii(morning_watt, 2, 7);
        if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
      }
   EEPROM_write(2, morning_watt);
   delay_ms(500);

   Lcd_Cmd(_LCD_CLEAR);
   lcd_out(1,1, "Midday setup:");
   time_txt(0);
   dec2ascii(midday_hh, 2, 7);
   dec2ascii(midday_mm, 2, 10);

      while(!butt_c){                                 //Midday Hours
        lcd_out(2,9, ":");
        lcd_out(2,13, "HH");
        if(butt_b){midday_hh++; delay_ms(500);}
        if(butt_a){midday_hh--; delay_ms(500);}
        if(midday_hh > 23) midday_hh = 0;
        dec2ascii(midday_hh, 2, 7);
        if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
      }
   EEPROM_write(3, midday_hh);
   delay_ms(500);
   
   time_txt(1);

      while(!butt_c){                                 //Midday Minutes
        if(butt_b){midday_mm++; delay_ms(500);}
        if(butt_a){midday_mm--; delay_ms(500);}
        if(midday_mm > 59) midday_mm = 0;
        dec2ascii(midday_mm, 2, 10);
        if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
      }
   EEPROM_write(4, midday_mm);
   delay_ms(500);
   
   watt_txt();

      while(!butt_c){                                 //Midday watt
        if(butt_b){midday_watt++; delay_ms(500);}
        if(butt_a){midday_watt--; delay_ms(500);}
        if(midday_watt > 99) midday_watt = 0;
        dec2ascii(midday_watt, 2, 7);
        if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
      }
   EEPROM_write(5, midday_watt);
   delay_ms(500);

   Lcd_Cmd(_LCD_CLEAR);
   lcd_out(1,1, "Night setup:");
   time_txt(0);
   dec2ascii(night_hh, 2, 7);
   dec2ascii(night_mm, 2, 10);

      while(!butt_c){                                 //night Hours
        if(butt_b){night_hh++; delay_ms(500);}
        if(butt_a){night_hh--; delay_ms(500);}
        if(night_hh > 23) night_hh = 0;
        dec2ascii(night_hh, 2, 7);
        if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
      }
   EEPROM_write(6, night_hh);
   delay_ms(500);

   time_txt(1);

      while(!butt_c){                                 //night Minutes
        if(butt_b){night_mm++; delay_ms(500);}
        if(butt_a){night_mm--; delay_ms(500);}
        if(night_mm > 59) night_mm = 0;
        dec2ascii(night_mm, 2, 10);
        if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
      }
   EEPROM_write(7, night_mm);
   delay_ms(500);

   watt_txt();

      while(!butt_c){                                 //night watt
        if(butt_b){night_watt++; delay_ms(500);}
        if(butt_a){night_watt--; delay_ms(500);}
        if(night_watt > 99) night_watt = 0;
        dec2ascii(night_watt, 2, 7);
        if(set_key) {delay_ms(500); Lcd_Cmd(_LCD_CLEAR); return;}
      }
   EEPROM_write(8, night_watt);
   delay_ms(500);
   Lcd_Cmd(_LCD_CLEAR);
}

void current_load(){
   if(rly_1 && !rly_2 && !rly_3) current_watt = desire_watt;
   else if(!rly_1 && rly_2 && !rly_3) current_watt = desire_watt;
   else if(!rly_1 && !rly_2 && rly_3) current_watt = desire_watt;
   else if(rly_1 && rly_2 && !rly_3) current_watt = 2 * desire_watt;
   else if(rly_1 && rly_3 && !rly_2) current_watt = 2 * desire_watt;
   else if(rly_2 && rly_3 && !rly_1) current_watt = 2 * desire_watt;
   else if(rly_1 && rly_2 && rly_3) current_watt = 3 * desire_watt;
   else current_watt = 0;
}

void auto_adjust(char watt){
  Lcd_Cmd(_LCD_CLEAR);
  lcd_out(2,2, "!! Overload !!");
  delay_ms(2000);
  
  while(1){
     rly_1 = 0;
     current_load();
     if(current_watt <= watt) break;
     rly_2 = 0;
     current_load();
     if(current_watt <= watt) break;
     rly_3 = 0;
     current_load();
     if(current_watt <= watt) break;
  }
  Lcd_Cmd(_LCD_CLEAR);
  return;
}

void default_work(){
   show_time();
   if(set_key) setup();

   current_load();
   dec2ascii(current_watt, 2, 7);
   lcd_out(2,1, "Load: ");
   lcd_out(2,9, " Watt");
}

int dec2int(char hi, char low){
   return (hi * 1000) + low;
}

void main(){
  ADCON1 = 0x07;
  TRISA = 0x3F;
  TRISC = 0x01;
  PORTC = 0x00;
  Lcd_Init();
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_Cmd(_LCD_CURSOR_OFF);
  DS1302_Init();
  morning_hh = EEPROM_read(0);
  morning_mm = EEPROM_read(1);
  morning_watt = EEPROM_read(2);
  midday_hh = EEPROM_read(3);
  midday_mm = EEPROM_read(4);
  midday_watt = EEPROM_read(5);
  night_hh = EEPROM_read(6);
  night_mm = EEPROM_read(7);
  night_watt = EEPROM_read(8);
  desire_watt = EEPROM_read(9);
  current_watt = 0;
  morning_flag = 0;
  midday_flag = 0;
  night_flag = 0;
  current_int = 0;
  morning_int = 0;
  midday_int = 0;
  night_int = 0;
  
  //write_time(16, 25, 0);
  
  lcd_out(2,1, "Please wait..");
  delay_ms(2000);
  Lcd_Cmd(_LCD_CLEAR);
  
  
  while(1){
     default_work();
     rly_1 = 0; rly_2 = 0; rly_3 = 0;
     lcd_out(2,15,"--");
     current_int = dec2int(current_hh, current_mm);
     
     morning_int = dec2int(morning_hh, morning_mm);
     if(current_int <= morning_int) morning_flag = 1;
     
     while(morning_flag){
       if(current_int > morning_int) morning_flag = 0;
       default_work();

       if(butt_a) {rly_1 =~ rly_1; delay_ms(500);}
       if(butt_b) {rly_2 =~ rly_2; delay_ms(500);}
       if(butt_c) {rly_3 =~ rly_3; delay_ms(500);}
       if(current_watt > morning_watt) auto_adjust(morning_watt);
       lcd_out(2,15,"Mo");
     }
     
     midday_int = dec2int(midday_hh, midday_mm);
     if(current_int <= midday_int) midday_flag = 1;
     
     while(midday_flag){
       if(current_int > midday_int) midday_flag = 0;
       default_work();

       if(butt_a) {rly_1 =~ rly_1; delay_ms(500);}
       if(butt_b) {rly_2 =~ rly_2; delay_ms(500);}
       if(butt_c) {rly_3 =~ rly_3; delay_ms(500);}
       if(current_watt > midday_watt) auto_adjust(midday_watt);
       lcd_out(2,15,"Md");
     }
     
     night_int = dec2int(night_hh, night_mm);
     if(current_int <= night_int) night_flag = 1;
     
     while(night_flag){
       if(current_int > night_int) night_flag = 0;
       default_work();

       if(butt_a) {rly_1 =~ rly_1; delay_ms(500);}
       if(butt_b) {rly_2 =~ rly_2; delay_ms(500);}
       if(butt_c) {rly_3 =~ rly_3; delay_ms(500);}
       if(current_watt > night_watt) auto_adjust(night_watt);
       lcd_out(2,15,"Ni");
     }
  }
}