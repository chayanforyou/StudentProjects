#include "font.h"
#define ds PORTC.f0
#define SH_CP PORTC.f1
#define ST_CP PORTC.f2
#define boot PORTC.f3

unsigned char msg1[] = "EID Mubarak.  ";    //14
unsigned char msg2[] = "BanglaDesh  ";      //12
unsigned char msg3[] = "Nice TO meet YOU.  "; //19
unsigned char msg4[] = "Welcome :)  ";  //12

unsigned short x, indx, rxbyte;
//unsigned char *google[30];

bit flag1;
bit flag2;
bit flag3;

void check(){
  if(portc.f4){delay_ms(300); flag1 = ~flag1; flag2 = 0; flag3 = 0;}
  if(portc.f5){delay_ms(300); flag2 = ~flag2; flag1 = 0; flag3 = 0;}
  if(portc.f6){delay_ms(300); flag3 = ~flag3; flag1 = 0; flag2 = 0;}
}

void main() {
trisc = 0b01110000;
trisb=0; portb=0; portc = 0;
delay_ms(500);
flag1 = 0; flag2 = 0; flag3 = 0;
  for(x=0;x<=40;x++){
    movee[x] = 0;
  }

  while(1){
    if(flag1){
      for(ll=0;ll<14;ll++){
        adress = msg1[ll] - 32;
        adress = adress * 8 ;
          for(count2=adress;count2<adress+8;count2++){
            for(count3=0;count3<40;count3++){movee[count3] = movee[count3 + 1];}
              movee[40] = Character[count2] ;
                for(i2=0;i2<4;i2++){
                  ds=1;SH_CP=0;SH_CP=1;ST_CP=0;ST_CP=1;
                    for(i=0;i<=40;i++){
                      PORTB =~ movee[i];
                      delay_us(500);
                      ds=0;SH_CP=0;SH_CP=1;ST_CP=0;ST_CP=1;
                      check();
                    }
                }
            }
          }
      }
      else if(flag2){
        for(ll=0;ll<12;ll++){
        adress = msg2[ll] - 32;
        adress = adress * 8 ;
          for(count2=adress;count2<adress+8;count2++){
            for(count3=0;count3<40;count3++){movee[count3] = movee[count3 + 1];}
              movee[40] = Character[count2] ;
                for(i2=0;i2<4;i2++){
                  ds=1;SH_CP=0;SH_CP=1;ST_CP=0;ST_CP=1;
                    for(i=0;i<=40;i++){
                      PORTB =~ movee[i];
                      delay_us(500);
                      ds=0;SH_CP=0;SH_CP=1;ST_CP=0;ST_CP=1;
                      check();
                    }
                }
            }
        }
      }
      else if(flag3){
        for(ll=0;ll<19;ll++){
        adress = msg3[ll] - 32;
        adress = adress * 8 ;
          for(count2=adress;count2<adress+8;count2++){
            for(count3=0;count3<40;count3++){movee[count3] = movee[count3 + 1];}
              movee[40] = Character[count2] ;
                for(i2=0;i2<4;i2++){
                  ds=1;SH_CP=0;SH_CP=1;ST_CP=0;ST_CP=1;
                    for(i=0;i<=40;i++){
                      PORTB =~ movee[i];
                      delay_us(500);
                      ds=0;SH_CP=0;SH_CP=1;ST_CP=0;ST_CP=1;
                      check();
                    }
                }
            }
        }
      }
      else{
        for(ll=0;ll<12;ll++){
        adress = msg4[ll] - 32;
        adress = adress * 8 ;
          for(count2=adress;count2<adress+8;count2++){
            for(count3=0;count3<40;count3++){movee[count3] = movee[count3 + 1];}
              movee[40] = Character[count2] ;
                for(i2=0;i2<4;i2++){
                  ds=1;SH_CP=0;SH_CP=1;ST_CP=0;ST_CP=1;
                    for(i=0;i<=40;i++){
                      PORTB =~ movee[i];
                      delay_us(500);
                      ds=0;SH_CP=0;SH_CP=1;ST_CP=0;ST_CP=1;
                      check();
                    }
                }
            }
        }
      }
  }
}