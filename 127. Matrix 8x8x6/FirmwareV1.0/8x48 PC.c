#include "font.h"

#define DS PORTA.f0
#define ST PORTA.f1
#define SH PORTA.f2
#define pc_key RC3_bit


int scroll, adress, count, update;
unsigned short row_data, col, speed, index;
unsigned short buffer[48];

char text[80];

void masking(unsigned short row_temp){
  portb.f0 = row_temp.f5; portb.f1 = row_temp.f2;
  portb.f2 = row_temp.f0; portb.f3 = row_temp.f1;
  portb.f4 = row_temp.f3; portb.f5 = row_temp.f6;
  portb.f6 = row_temp.f4; portb.f7 = row_temp.f7;
}

void load_text(){
  char read;
  for(count = 0; count < 80; count++){
    read = EEPROM_read(count);
    if(read == 0xFF) break;
    else text[count] = read;
  }
}

void pc_mode(){
   for(count = 0; count < 80; count++) EEPROM_write(count, 0xFF);
   for(count = 0; count < 80; count++) text[count] = 0xFF;
   uart1_read_text(text, "#", 255);
   index = strlen(text) - 1;
   for(count = 0; count < index; count++){
      EEPROM_write(count, text[count]);
   }
   uart1_write_text("msg saved.\n");
}

void main() {
  ADCON1 = 0x07; 
  TRISA = 0x00; PORTA = 0x00;
  TRISB = 0x00; PORTB = 0x00;
  TRISC3_bit = 1;
  UART1_init(9600);
  for(count = 0; count < 48; count++) buffer[count] = 0;
  if(pc_key) pc_mode();

  while(1){
     load_text();
     index = strlen(text);
     for(scroll = 0; scroll < index; scroll++){
       adress = text[scroll] - 32;
       adress *= 8;
       for(count = adress; count < adress + 8; count++){
          for(update = 0; update < 48; update++){buffer[update] = buffer[update + 1];}
          buffer[47] = Character[count];
          for(speed = 0; speed < 20; speed++){
            DS = 0; SH = 1; SH = 0; ST = 1; ST = 0;
            for(col = 0; col < 48; col++){
              row_data = buffer[col];
              masking(row_data);
              delay_us(100);
              PORTB = 0;
              DS = 1; SH = 1; SH = 0; ST = 1; ST = 0;
            }
          }
       }
     }
  }
}