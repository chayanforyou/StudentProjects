#include <TinyGPS++.h>
#include <SoftwareSerial.h>

TinyGPSPlus gps;
SoftwareSerial neo6(2, 3);
SoftwareSerial sim800(6, 7);

char rxd = 0, checkpoint = 0, x = 0;
char number[11];

void setup(){
  Serial.begin(115200);
  neo6.begin(9600);
  sim800.begin(115200);
  GSM_init();
}


void loop(){
  if (neo6.available() > 0){
    if (gps.encode(neo6.read())){
      Serial.print(F("Location: ")); 
      if (gps.location.isValid()){
        Serial.print(gps.location.lat(), 6);
        Serial.print(F(","));
        Serial.print(gps.location.lng(), 6);
        Serial.println();
      }
      else {
        Serial.print(F("INVALID"));
        Serial.println();
      }
    }
  }
  rxd = sim800.read();
  SMS_read();
}

void GSM_init(){
  delay(10000);
  sim800.println("AT");
  delay(1000);
  sim800.println("ATE0");
  delay(1000);
  sim800.println("AT+CSDH=1");
  delay(1000);
  sim800.println("AT+CMGF=1");
  delay(1000);
  sim800.println("AT+CNMI=1,2,0,0,0"); 
  delay(1000);
  sim800.println("AT+CMGD=4"); 
  delay(1000);
}

void SMS_read(){
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
  
  if(checkpoint == 10 && rxd == 'L') checkpoint = 11;
  if(checkpoint == 11 && rxd == 'O') checkpoint = 12;
  if(checkpoint == 12 && rxd == 'C') checkpoint = 13;
  if(checkpoint == 13 && rxd == 'A') checkpoint = 14;
  if(checkpoint == 14 && rxd == 'T') checkpoint = 15;
  if(checkpoint == 15 && rxd == 'I') {
     checkpoint = 0;
     send_SMS();
  }
}

void send_SMS(){
  Serial.println("SMS received."); 
  Serial.print("Number:");
  Serial.println(number);  
  sim800.print("AT+CMGF=1\r\n");
  delay(200);
  sim800.print("AT+CMGS=\"");
  delay(200);
  sim800.print(number);
  sim800.print("\"\r\n");
  delay(200);
  sim800.print("Latitude: ");
  sim800.print(gps.location.lat(), 6);
  sim800.print("Longitude: ");
  sim800.print(gps.location.lng(), 6);
  sim800.write(0x1A); 
  sim800.print("\r\n");
  delay(3000);
}
