short delay;
unsigned short hh, mm, ss, tmp, hh_tmp;
sbit ap at tmp.b5;

#include "ds1307.h"
#include "7segment.h"

#define setup porta.f4
#define select porta.f5
#define up portc.f6
#define down portc.f7

const unsigned short hh_code[] = {0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x70,0x71,0x72,
                                  0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x50,0x51,0x52};

void default_time(){
  hh = 0x51;    //PM = 0x61[1] - 0x72[12]
                //AM = 0x41[1] - 0x52[12]
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
      if(up){hh += 1; hh_tmp += 1; break;}
      if(down){hh -= 1; hh_tmp -= 1; break;}
      if(hh_tmp > 24)hh_tmp = 1;
      if(hh_tmp < 1)hh_tmp = 24;
      if(hh_tmp > 11 & hh_tmp < 24){am=1; pm=0;}
      else{am=0; pm=1;}
      show_display('M', mm);
      show_display('S', ss);
    }
    if(select)goto minute;
  goto hour;
  minute:
    for(delay=0;delay<100;delay++){
      show_display('H', hh);
      show_display('M', mm);
      show_display('S', ss);
    }
    for(delay=0;delay<100;delay++){
      if(up){mm += 1; break;}
      if(down){mm -= 1; break;}
      if(mm > 60)mm = 0; if(mm < 0)mm = 59;
      show_display('H', hh);
      show_display('S', ss);
    }
    if(select)goto second;
  goto minute;
  second:
    for(delay=0;delay<100;delay++){
      show_display('H', hh);
      show_display('M', mm);
      show_display('S', ss);
    }
    for(delay=0;delay<100;delay++){
      if(up){ss += 1; break;}
      if(down){ss -= 1; break;}
      if(ss > 60)ss = 0; if(ss < 0)ss = 59;
      show_display('H', hh);
      show_display('M', mm);
    }
    if(select)goto write_data;
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
    if(setup)calibrate();
  }
}