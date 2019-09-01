#line 1 "E:/Electronics/Abrar's corner/Momin Bhai/GSM home system [GAS]/firmware/gsm800l.c"
#line 1 "e:/electronics/abrar's corner/momin bhai/gsm home system [gas]/firmware/gsm_sms.h"
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
 delay_ms(5000);
 nl_cr();
}
#line 8 "E:/Electronics/Abrar's corner/Momin Bhai/GSM home system [GAS]/firmware/gsm800l.c"
char number[] = "01764180287";

unsigned short adc, temp;

short get_temp(){
 adc = adc_read(0);
 temp = (adc * 0.0197) * 100;
 return temp;
}

void safe(){
  portc.f1  = 0;  portc.f3  = 0;
  portc.f0  = 0;
 send_sms(number,"Room safe. :-)");
}

void both(){
 send_sms(number,"Smoke and Fire both Detected.");
}

void main() {
 adcon1 = 0x04;
 trisa.f2 = 1;
 trisC = 0x00; portc = 0x00;
 UART1_Init(9600);
 delay_ms(10000);

 while(1){
  portc.f0  = 0;
 temp = get_temp();
 if(temp > 40){
  portc.f0  = 1;  portc.f1  = 1;
 send_sms(number,"Fire Detected.");
 while(temp > 40){
 temp = get_temp();
 if(! porta.f2 ){
 both();
 while(! porta.f2 );
 }
 }
 safe();
 }
 if(! porta.f2 ){
  portc.f0  = 1;  portc.f3  = 1;
 send_sms(number,"Smoke Detected.");
 while(! porta.f2 ){
 temp = get_temp();
 if(temp > 40){
 both();
 while(temp > 40){
 temp = get_temp();
 }
 }
 }
 safe();
 }
 }
}
