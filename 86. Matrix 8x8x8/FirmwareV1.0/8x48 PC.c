// This is simple 8x48 LED Matrix open source
// project for educational purposes.
// This is contributed by Antor Ahmed.

#include "font.h"

#define DS PORTA.f0
#define ST PORTA.f1
#define SH PORTA.f2

//------------------------------------
//            USER CONTROL
//------------------------------------
         #define Matrix_col 64
       #define Scrolling_speed 30
//------------------------------------

int scroll;
int adress;
int count;
int update;
unsigned short row_data;
unsigned short col;
unsigned short speed;
unsigned short index;
unsigned short buffer[Matrix_col];

void masking(unsigned short row_temp){
  portb.f0 = row_temp.f5; portb.f1 = row_temp.f2;
  portb.f2 = row_temp.f0; portb.f3 = row_temp.f1;
  portb.f4 = row_temp.f3; portb.f5 = row_temp.f6;
  portb.f6 = row_temp.f4; portb.f7 = row_temp.f7;
}

char read_EEPROM(char adres){
  char dta;
  I2C1_Start();
  I2C1_Wr(0xA0);
  I2C1_Wr(adres);
  I2C1_Repeated_Start();
  I2C1_Wr(0xA1);
  dta = I2C1_Rd(0u);
  I2C1_Stop();
  return dta;
}

/*void load_text(){
  char read;
  for(count = 0; count < 70; count++){
    read = EEPROM_read(count);
    if(read == 0xFF) break;
    else text[count] = read;
  }
}*/

void load_text(){
  char x = 0;
  char read;
  for(x = 0; x < 80; x++) text[x] = 0;

  for(x = 0; x < 80; x++){
    read = 0;
    read = read_EEPROM(x);
    if(read == '#' || read == 0 || read == 0xFF) break;
    else text[x] = read;
  }
}

void main() {
  ADCON1 = 0x07;
  TRISA = 0x00; PORTA = 0x00;
  TRISB = 0x00; PORTB = 0x00;
  I2C1_Init(100000);
  delay_ms(1000);
  for(count = 0; count < Matrix_col; count++) buffer[count] = 0;

  while(1){
     load_text();
     index = strlen(text);
     for(scroll = 0; scroll < index; scroll++){
       adress = text[scroll] - 32;
       adress *= 8;
       for(count = adress; count < adress + 8; count++){
          for(update = 0; update < Matrix_col; update++){buffer[update] = buffer[update + 1];}
          buffer[Matrix_col - 1] = Character[count];
          for(speed = 0; speed < Scrolling_speed; speed++){
            DS = 0; SH = 1; SH = 0; ST = 1; ST = 0;
            for(col = 0; col < Matrix_col; col++){
              masking(buffer[col]);
              delay_us(20);
              masking(0);
              DS = 1; SH = 1; SH = 0; ST = 1; ST = 0;
            }
          }
       }
     }
  }
}