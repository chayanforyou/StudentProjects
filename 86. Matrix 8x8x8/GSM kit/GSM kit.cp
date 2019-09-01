#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Aminul Sir/7. Matrix 8x8x8/GSM kit/GSM kit.c"




char rxd, checkpoint, x;
char number[12] = "";
char msg[80] absolute 0x020;
bit flag;

char AT[] = "AT\r\n";
char ATE[] = "ATE0\r\n";
char ASCI[] = "AT+CMGF=1\r\n";
char MSG_mode[] = "AT+CNMI=1,2,0,0,0\r\n";


void write_EEPROM(char adres, char dta){
 I2C1_Start();
 I2C1_Wr(0xA0);
 I2C1_Wr(adres);
 I2C1_Wr(dta);
 I2C1_Stop();
 delay_ms(100);
}

void GSM_init(){
  RA5_bit  = 1;
 Delay_ms(5000);
 UART1_Write_Text(AT);
 Delay_ms(1000);
 UART1_Write_Text(ATE);
 Delay_ms(1000);
 UART1_Write_Text(ASCI);
 Delay_ms(1000);
 UART1_Write_Text(MSG_mode);
 Delay_ms(1000);
  RA5_bit  = 0;
}

void RecSMS(){
 if(rxd == '+' && checkpoint == 0) checkpoint = 1;
 if(rxd == 'C' && checkpoint == 1) checkpoint = 2;
 if(rxd == 'M' && checkpoint == 2) checkpoint = 3;
 if(rxd == 'T' && checkpoint == 3) checkpoint = 4;

 if(rxd == '8' && checkpoint == 4) checkpoint = 5;
 if(rxd == '0' && checkpoint == 5) checkpoint = 6;

 if(checkpoint == 6){
 number[x] = rxd;
 x++;
 if(x > 10) {x = 0; checkpoint = 7;}
 }

 if(rxd == (char)13 && checkpoint == 7) checkpoint = 8;
 if(rxd == (char)10 && checkpoint == 8) checkpoint = 9;

 if(rxd != (char)10 && checkpoint == 9) checkpoint = 10;

 if(checkpoint == 10){
 msg[x] = rxd;
 x++;
 if(rxd == 13 || x > 79){
 msg[x - 1] = 0xFF;
 x = 0;
 checkpoint = 0;
  RA0_bit  = 1;  RA5_bit  = 1;
 for(x = 0; x < strlen(msg); x++) write_EEPROM(x, msg[x]);
 delay_ms(1000);
  RA0_bit  = 0;  RA5_bit  = 0;
 }
 }
}

void interrupt (){
 if (PIR1.RCIF) {
 PIR1.RCIF = 0;
 rxd = 0;
 rxd = UART1_read();
 RecSMS();
 }
}

void main() {
 ADCON1 = 0x07;
 TRISA = 0x00;
 PORTA = 0x00;
 INTCON = 0xC0;
 PIE1.RCIE = 1;

 UART1_Init(9600);
 I2C1_Init(100000);
 GSM_init();

 for(x = 0; x < 80; x++) msg[x] = 0;
 checkpoint = 0, x = 0; flag = 0;

 while(1){

 }
}
