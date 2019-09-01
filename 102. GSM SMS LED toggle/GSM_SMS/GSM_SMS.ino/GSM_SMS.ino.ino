#include <SoftwareSerial.h>

SoftwareSerial gsm(10, 11);
char butt = 4;
char relay = 13;

char number[11];
char msg[10];
char checkpoint = 0, rxd = 0, x = 0;

void setup() {
  gsm.begin(9600);
  pinMode(butt, INPUT);
  pinMode(relay, OUTPUT);
  GSM_init(); 
}

void loop(){
  rxd = gsm.read();
  SMS_read();
  Call_receive();
  if(digitalRead(butt) == 0) CALL_contact();
}

void GSM_init(){
  //delay(5000);

  rxd = 0;
  while(rxd != 'K'){
    gsm.println("AT");
    delay(1000);
    rxd = gsm.read();
  } 
  gsm.println("ATE0");
  delay(1000);
  gsm.println("AT+CMGF=1");
  delay(1000);
  gsm.println("AT+CNMI=1,2,0,0,0"); 
  delay(1000);
}

void CALL_contact(){
  gsm.println("ATD>1;"); 
  delay(1000);
}

void SMS_read(){
  if(checkpoint == 0 && rxd == '+') checkpoint = 1;
  if(checkpoint == 1 && rxd == 'C') checkpoint = 2;
  if(checkpoint == 2 && rxd == 'M') checkpoint = 3;
  if(checkpoint == 3 && rxd == 'T') checkpoint = 4;

  if(checkpoint == 4 && rxd == 13) checkpoint = 5; 
  if(checkpoint == 5 && rxd == 10) checkpoint = 6;
  if(checkpoint == 6 && rxd != 10) checkpoint = 7;

  if(checkpoint == 7 && rxd == 'L') checkpoint = 8;
  if(checkpoint == 8 && rxd == 'O') checkpoint = 9;
  if(checkpoint == 9 && rxd == 'C') checkpoint = 10;
  if(checkpoint == 10 && rxd == 'K') {
     checkpoint = 0;
     digitalWrite(relay, LOW);
  }

  if(checkpoint == 7 && rxd == 'U') checkpoint = 8;
  if(checkpoint == 8 && rxd == 'N') checkpoint = 9;
  if(checkpoint == 9 && rxd == 'L') checkpoint = 10;
  if(checkpoint == 10 && rxd == 'O') checkpoint = 11;
  if(checkpoint == 11 && rxd == 'C') checkpoint = 12;
  if(checkpoint == 12 && rxd == 'K') {
     checkpoint = 0;
     digitalWrite(relay, HIGH);
  }
}

void Call_receive(){
  if(checkpoint == 0 && rxd == 'R') checkpoint = 1;
  if(checkpoint == 1 && rxd == 'I') checkpoint = 2;
  if(checkpoint == 2 && rxd == 'N') checkpoint = 3;
  if(checkpoint == 3 && rxd == 'G') {
     delay(3000);
     gsm.println("ATA");
     checkpoint = 0;
  }
}
