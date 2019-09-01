#include "font.h"
#include "text.h"
#define row1 PORTB
#define row2 PORTC
#define sh RA0_bit
#define ds RA2_bit
#define st RA1_bit
#define w_key RA3_bit
#define b_key RA4_bit
#define t_key RA5_bit

#define text_line 10
#define text_per_line 24

int de;
bit text_f;

void send_data(int adrs){
  char temp;
  int dta;
  temp = Character[adrs];
  dta = temp << 4;
  row1 = dta;
  row2 = dta >> 8;
}

void show_text(char l, char *txt){
  short x = 0, y = 0, col;
  int adrs;
  ds = 0; sh = 1; sh = 0; st = 1; st = 0;
    for(col = 0; col <= 64; col++){
      if(col == 0) {x = 0; y = 0;}
      else if(col == 8) {x = 1; y = 0;}
      else if(col == 16) {x = 2; y = 0;}
      else if(col == 24) {x = 3; y = 0;}
      else if(col == 32) {x = 4; y = 0;}
      else if(col == 40) {x = 5; y = 0;}
      else if(col == 48) {x = 6; y = 0;}
      else if(col == 56) {x = 7; y = 0;}
      adrs = (txt[x] - 32) * 8;
      if(l == 0) send_data(adrs + y);
      else if(l == 1) row1 = Character[adrs + y];
      else row2 = Character[adrs + y];
      delay_us(100);
      row1 = 0x00; row2 = 0x00;
      ds = 1; sh = 1; sh = 0; st = 1; st = 0;
      y++;
    }
}

void check_sensor(){
  if(w_key) for(de = 0; de < 200; de++) show_text(0, "Welcome!");
  if(t_key) {
    for(de = 0; de < 200; de++) {
      show_text(1, " Thank  ");
      show_text(2, "    You!");
    }
  }
  if(b_key) {
    text_f = ~text_f;
    if(text_f == 1) for(de = 0; de < 200; de++) show_text(1, "Text ON ");
  }
  if(text_f == 0) for(de = 0; de < 200; de++) show_text(2, "Text OFF");
}

void scroll_text(){
  char r, col, y;
  int i, s;
  i = (text_line * text_per_line) - 64;
  for(s = 0; s < i; s+=2){
    for(r = 0; r < 20; r++){
      ds = 0; sh = 1; sh = 0; st = 1; st = 0; y = 0;
      for(col = 0; col <= 64; col++){
        row1 = text[y + s];
        row2 = text[y + 1 + s];
        delay_us(100);
        row1 = 0x00; row2 = 0x00;
        ds = 1; sh = 1; sh = 0; st = 1; st = 0;
        y+=2;
        check_sensor();
      }
    }
  }
}

void main() {
  adcon1 = 7;
  trisa = 0x38; porta = 0;
  trisb = 0x00; portb = 0;
  trisc = 0x00; portc = 0;
  text_f = 0;

  while(1){
    check_sensor();
    if (text_f == 1) scroll_text();
  }
}