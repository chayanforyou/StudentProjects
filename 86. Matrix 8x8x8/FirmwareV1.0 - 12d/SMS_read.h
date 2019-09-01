
char rxd, checkpoint, x;
char number[12] = "";
char message[80] = "";
bit flag;

void RecSMS();
void GSM_init();

void interrupt () {
  if (PIR1.RCIF) {
    rxd = 0;
    rxd = Uart1_Read();
    flag = 1;
    RecSMS();
    PIR1.RCIF = 0;
  }
}

void GSM_init(){
  INTCON = 0xC0;
  PIE1.RCIE = 1;
  UART1_Init(9600);
  checkpoint = 0, x = 0;

Delay_ms(1000);
  UART1_Write_Text("AT\r\n");
  Delay_ms(500);
  UART1_Write_Text("ATE0\r\n");
  Delay_ms(500);
  UART1_Write_Text("AT+CMGF=1\r\n");
  Delay_ms(500);
  UART1_Write_Text("AT+CNMI=1,2,0,0,0\r\n");
  Delay_ms(500);
  return;
}

void RecSMS(){
  if(flag){
  if(rxd == '+' && checkpoint == 0) {checkpoint = 1;}
  if(rxd == 'C' && checkpoint == 1) {checkpoint = 2;}
  if(rxd == 'M' && checkpoint == 2) {checkpoint = 3;}
  if(rxd == 'T' && checkpoint == 3) {checkpoint = 4;}

  if(rxd == '8' && checkpoint == 4) {checkpoint = 5;}
  if(rxd == '0' && checkpoint == 5) {checkpoint = 6;}

  if(checkpoint == 6){
    number[x] = rxd;
    x++;
    if(x > 10) {x = 0; checkpoint = 7;}
  }

  if(rxd == (char)13 && checkpoint == 7) {checkpoint = 8;}
  if(rxd == (char)10 && checkpoint == 8) {checkpoint = 9;}

  if(checkpoint == 9){
    message[x - 1] = rxd;
    x++;
    if(rxd == 13) {
      message[x - 2] = 0;
      x = 0;
      checkpoint = 0;
    }
  }
  flag = 0;
  }
}