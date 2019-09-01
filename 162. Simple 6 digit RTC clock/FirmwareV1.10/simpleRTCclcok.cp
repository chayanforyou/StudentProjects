#line 1 "C:/Users/antor/Google Drive/Embedded Projects/STechBD/Projects/Simple 6 digit RTC clock/FirmwareV1.10/simpleRTCclcok.c"
short delay;
unsigned short hh, mm, ss, tmp, hh_tmp;
sbit ap at tmp.b5;
#line 1 "c:/users/antor/google drive/embedded projects/stechbd/projects/simple 6 digit rtc clock/firmwarev1.10/ds1307.h"





unsigned short read_ds1307(unsigned short address){
 unsigned short r_data;
 I2C_Start();
 I2C_Write(0xD0);
 I2C_Write(address);
 I2C_repeated_Start();
 I2C_Write(0xD1);
 r_data = I2C_Read(0);
 I2C_Stop();
 if(address != 2)r_data = bcd2dec(r_data);
 return r_data;
}

void write_ds1307(unsigned short address,unsigned short w_data){
 if(address != 2)w_data = dec2bcd(w_data);
 I2C_Start();
 I2C_Write(0xD0);
 I2C_Write(address);
 I2C_Write(w_data);
 I2C_Stop();
}

void check_ap(){
 if(ap & 1){
  porta.f0  = 0;  porta.f1  = 1;
 }
 else {
  porta.f0  = 1;  porta.f1  = 0;
 }
}
#line 1 "c:/users/antor/google drive/embedded projects/stechbd/projects/simple 6 digit rtc clock/firmwarev1.10/7segment.h"








void pic_init(){
 ADCON1 = 0x07; trisa = 0x3C;
 trisb = 0x00; portb = 0x00;
 trisc = 0x00; portc = 0x00;
 I2C_Init(100000);

}


char cathode[] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};

void display_clear(){
  portc.f0  = 0;  portc.f1  = 0;  portc.f2  = 0;
  portc.f5  = 0;  portc.f6  = 0;  portc.f7  = 0;
}

void show_hour(char x){
 unsigned short temp;
 temp = x / 10;
  PORTB  = cathode[temp];
  portc.f0  = 1; delay_ms(1); display_clear();
 temp = x % 10;
  PORTB  = cathode[temp];
  portc.f1  = 1; delay_ms(1); display_clear();
}

void show_minute(char x){
 unsigned short temp;
 temp = x / 10;
  PORTB  = cathode[temp];
  portc.f2  = 1; delay_ms(1); display_clear();
 temp = x % 10;
  PORTB  = cathode[temp];
  portc.f5  = 1; delay_ms(1); display_clear();
}

void show_second(char x){
 unsigned short temp;
 temp = x / 10;
  PORTB  = cathode[temp];
  portc.f6  = 1; delay_ms(1); display_clear();
 temp = x % 10;
  PORTB  = cathode[temp];
  portc.f7  = 1; delay_ms(1); display_clear();
}
#line 13 "C:/Users/antor/Google Drive/Embedded Projects/STechBD/Projects/Simple 6 digit RTC clock/FirmwareV1.10/simpleRTCclcok.c"
const unsigned short hh_code[] = {0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x70,0x71,0x72,
 0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x50,0x51,0x52};

void default_time(){
 hh = 0x51;

 mm = 59;
 ss = 0;
 write_ds1307(0, ss);
 write_ds1307(1, mm);
 write_ds1307(2, hh);
}

void calibrate(){
 hh = 12; mm = 0; ss = 0; hh_tmp = hh;
 delay_ms(500);
 while(1){
 hour:
 for(delay=0;delay<100;delay++){
 show_display('H', hh);
 show_display('M', mm);
 show_display('S', ss);
 }
 for(delay=0;delay<100;delay++){
 if(hh > 12)hh = 1; if(hh < 1)hh = 12;
 if( portc.f6 ){hh += 1; hh_tmp += 1; break;}
 if( portc.f7 ){hh -= 1; hh_tmp -= 1; break;}
 if(hh_tmp > 24)hh_tmp = 1;
 if(hh_tmp < 1)hh_tmp = 24;
 if(hh_tmp > 11 & hh_tmp < 24){ porta.f0 =1;  porta.f1 =0;}
 else{ porta.f0 =0;  porta.f1 =1;}
 show_display('M', mm);
 show_display('S', ss);
 }
 if( porta.f5 )goto minute;
 goto hour;
 minute:
 for(delay=0;delay<100;delay++){
 show_display('H', hh);
 show_display('M', mm);
 show_display('S', ss);
 }
 for(delay=0;delay<100;delay++){
 if( portc.f6 ){mm += 1; break;}
 if( portc.f7 ){mm -= 1; break;}
 if(mm > 60)mm = 0; if(mm < 0)mm = 59;
 show_display('H', hh);
 show_display('S', ss);
 }
 if( porta.f5 )goto second;
 goto minute;
 second:
 for(delay=0;delay<100;delay++){
 show_display('H', hh);
 show_display('M', mm);
 show_display('S', ss);
 }
 for(delay=0;delay<100;delay++){
 if( portc.f6 ){ss += 1; break;}
 if( portc.f7 ){ss -= 1; break;}
 if(ss > 60)ss = 0; if(ss < 0)ss = 59;
 show_display('H', hh);
 show_display('M', mm);
 }
 if( porta.f5 )goto write_data;
 goto second;
 write_data:
 hh = hh_code[hh_tmp - 1];
 write_ds1307(2, hh);
 write_ds1307(1, mm);
 write_ds1307(0, ss);
 break;
 }
}

void main() {
 pic_init();
 default_time();

 while(1){
 ss = read_ds1307(0);
 mm = read_ds1307(1);
 tmp = read_ds1307(2);
 hh = tmp & 0b00011111;
 if(hh > 9) hh-=6;
 check_ap();
 for(delay=0;delay<20;delay++){
 show_display('H', hh);
 show_display('M', mm);
 show_display('S', ss);
 }
 if( porta.f4 )calibrate();
 }
}
