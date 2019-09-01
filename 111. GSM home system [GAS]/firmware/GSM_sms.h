void nl_cr(){
  uart1_write(13);
  uart1_write(10);
}

void send_sms(char num[11], char text[160]){
  uart1_write_text("AT+CMGF=1");
  nl_cr();
  delay_ms(200);
  uart1_write_text("AT+CMGS= ");
  uart1_write(34);
  uart1_write_text(num);
  uart1_write(34);
  nl_cr();
  delay_ms(200);
  uart1_write_text(text);
  delay_ms(200);
  uart1_write(0x1A); //ctrl + Z
  delay_ms(5000);
  nl_cr();
}