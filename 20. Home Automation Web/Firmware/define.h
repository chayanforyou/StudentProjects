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

#define sound RC4_bit
#define rly_1 RC0_bit
#define rly_2 RC1_bit
#define rly_3 RC2_bit
#define rly_4 RC3_bit

char smoke, tmp, rxd, x = 0;
char r_status[7];
#define temp (tmp * 0.0196) * 100

void newline(){
  uart1_write(13);
  uart1_write(10);
}

void check_relay(){
  if(x == 5 && r_status[0] == 'R'){
    r_status[0] = 0;
    if(r_status[1] == '1') rly_1 = 0;
    if(r_status[2] == '1') rly_2 = 0;
    if(r_status[3] == '1') rly_3 = 0;
    if(r_status[4] == '1') rly_4 = 0;
    if(r_status[1] == '0') rly_1 = 1;
    if(r_status[2] == '0') rly_2 = 1;
    if(r_status[3] == '0') rly_3 = 1;
    if(r_status[4] == '0') rly_4 = 1;
  }
}

void interrupt (){
  if (PIR1.RCIF) {
    PIR1.RCIF = 0;
    rxd = 0;
    rxd = UART1_read();
    r_status[x] = rxd;
    x++;
    if(x == 7) x = 0;
    check_relay();
  }
}

void print_dec(char x, char y, char value){
  char digit[4];
  digit[0] = value / 100 + 48;
  digit[1] = (value % 100) / 10 + 48;
  digit[2] = value % 10 + 48;
  digit[3] = 0;
  lcd_out(x,y, digit);
  uart1_write(digit[0]);
  uart1_write(digit[1]);
  uart1_write(digit[2]);
  newline();
}