#line 1 "E:/Electronics/Abrar's corner/Raktim Sir/GSM home system [GAS]/firmware/gsm800l.c"
#line 1 "e:/electronics/abrar's corner/raktim sir/gsm home system [gas]/firmware/gsm_sms.h"
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
 uart1_write(0x1A);
 delay_ms(2000);
 nl_cr();
}
#line 6 "E:/Electronics/Abrar's corner/Raktim Sir/GSM home system [GAS]/firmware/gsm800l.c"
char number[] = "01932640587";

unsigned short adc, temp;

short get_temp(){
 adc = adc_read(0);
 temp = (adc * 0.0197) * 100;
 return temp;
}

void safe(){
  portc.f0  = 0;
 send_sms(number,"Room safe. :-)");
}

void both(){
 send_sms(number,"LPG Gas and Fire both Detected.");
}

void reset_SIM(){
 char x;
 delay_ms(1000);
 UART1_Write_Text("AT+CPOWD=1");
 for(x=0;x<40;x++){
  portc.f0  = 1;
 delay_ms(500);
  portc.f0  = 0;
 delay_ms(500);
 }
}

void main() {
 adcon1 = 0x04;
 trisa.f2 = 1; trisc.f0 = 0; portc = 0;
 UART1_Init(9600);
 reset_SIM();

 while(1){
 temp = get_temp();
 if(temp > 40){
  portc.f0  = 1;
 send_sms(number,"Fire Detected.");
 while(temp > 30){
 temp = get_temp();
 if(! porta.f2 ){
 both();
 while(! porta.f2 );
 }
 }
 safe();
 }
 if(! porta.f2 ){
  portc.f0  = 1;
 send_sms(number,"LPG Gas Detected.");
 while(! porta.f2 ){
 temp = get_temp();
 if(temp > 40){
 both();
 while(temp > 30){
 temp = get_temp();
 }
 }
 }
 safe();
 }
 }
}
