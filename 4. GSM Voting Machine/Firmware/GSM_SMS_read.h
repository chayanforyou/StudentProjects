char output;
char number[15];

void linefeed(){
 UART1_Write(13);
 UART1_Write(10);
 delay_ms(20);
}

void GSM_init(){
  uart1_write_text("AT");
  linefeed();
  uart1_write_text("ATE");
  linefeed();
  uart1_write_text("AT + CMGF = 1");
  linefeed();
  uart1_write_text("AT+CNMI=1,2,0,0,0");
  linefeed();
}

void check_sms(){
  char x;
  if (UART1_Data_Ready() == 1){
    output = uart1_read();
    if(output == '+'){
      for(x=0;x<6;x++){
        output = uart1_read();
      }
      for(x=0;x<15;x++){
        number[x] = uart1_read();
      }
    }
  lcd_out(4,1,number);
  }
}