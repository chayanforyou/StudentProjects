sbit row_sh at rb0_bit;
sbit row_ds at rb1_bit;
sbit row_st at rb2_bit;
sbit col_sh at rb3_bit;
sbit col_ds at rb4_bit;
sbit col_st at rb5_bit;

unsigned short col, row, dta;

unsigned const short text[] = {
0x7F , 0xFF , 0xCC , 0xCC , 0xCC , 0xFF , 0x7F , 0x00 //A
};

void main() {
TRISB = 0x00; PORTB = 0x00;

  while(1){
   col_ds = 1; col_sh = 1; col_sh = 0; col_st = 1; col_st = 0;
     for(col=0;col<8;col++){
       for(row=0;row<8;row++){
        dta =~ text[col];
        row_ds = dta >> row;
        row_sh = 1; row_sh = 0;
        row_st = 1; row_st = 0;
       }
     col_ds = 0; col_sh = 1; col_sh = 0; col_st = 1; col_st = 0;
     delay_ms(3);
     }
  }
}