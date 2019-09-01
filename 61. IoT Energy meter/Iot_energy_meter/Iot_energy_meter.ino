#include <SoftwareSerial.h>
#include <LiquidCrystal.h>

LiquidCrystal lcdO(7, 8, 9, 10, 11, 12);
LiquidCrystal lcdC(A5, A4, A3, A2, A1, A0);
//#define gsm Serial
SoftwareSerial gsm(2, 3);

int mVperAmp = 185; // use 100 for 20A Module and 66 for 30A Module

#define SOURCE 1000
int watt, watt2, mA, timer;

void setup() {
  Serial.begin(9600);
  lcdO.begin(16, 2);
  lcdC.begin(16, 2);

  lcdO.clear();
  lcdC.clear();

  GSM_init();
  GSM_init();
}

void loop() {
  double amps = getCurrent(A7) - 0.06;
  double amps2 = getCurrent(A6) - 0.06;
  watt = amps * 220;
  watt2 = amps2 * 220;
  
  lcdC.setCursor(0, 0);
  lcdC.print((String)"Load: " + watt + "w  ");
  lcdC.setCursor(12, 0);
  lcdC.print("50Hz");
  lcdC.setCursor(0, 1);
  lcdC.print((String)amps + "A    ");
  lcdC.setCursor(10, 1);
  lcdC.print("V:220v"); 
  
  lcdO.setCursor(0, 0);
  lcdO.print("Iot Energy Meter");
  lcdO.setCursor(0, 1);
  lcdO.print((String) amps2 + "A " + watt2 + "W theft  ");

  timer++;
  if(timer > 50){
    timer = 0;
    send2Server();
  }

  if(gsm.available()) Serial.println(gsm.readString());
}

float getCurrent(byte pin){
  float result;
  
  int readValue;            
  int maxValue = 0;         
  int minValue = 1024; 
  double VRMS = 0;
  double AmpsRMS = 0;        
  
  uint32_t start_time = millis();
  while((millis()-start_time) < 1000) {
    readValue = analogRead(pin);
    if (readValue > maxValue) maxValue = readValue;
    if (readValue < minValue) minValue = readValue;
  }
  result = ((maxValue - minValue) * 5.0) / 1024.0;
  VRMS = (result / 2.0) * 0.707; 
  AmpsRMS = (VRMS * 1000) / mVperAmp;  
  return AmpsRMS;
}

 void GSM_init(){  //GSM initialization function, calls once when device start
  lcdO.print("Connecting GSM..");
  lcdC.print("Connecting GSM..");
  delay(5000);
  gsm.println("AT");
  delay(1000);
  gsm.println("ATE0");
  delay(1000); 
  gsm.println("AT+CGATT=1");
  delay(1000);
  gsm.println((String)"AT+SAPBR=3,1," + (char)34 + "CONTYPE" + (char)34 + "," + (char)34 + "GPRS" + (char)34); 
  delay(1000);
  gsm.println("AT+SAPBR=1,1"); 
  delay(1000);
  gsm.println("AT+HTTPINIT"); 
  delay(1000);
  lcdO.clear();
  lcdC.clear();
}

void send2Server(){  // send data to server within 5sec.                              
  lcdC.clear();
  lcdO.clear();
  lcdC.print("Sending server..");
  lcdO.print("Sending server..");
  gsm.println((String)"AT+HTTPPARA=" + (char)34 + "URL" + (char)34 + "," + (char)34 + "http://energymeterbd.000webhostapp.com/connect.php?s_value=" + SOURCE + "&u_value=" + watt + "&t_value=" + (SOURCE - watt) + (char)34);
  delay(1000);
  gsm.println("AT+HTTPACTION=0");
  delay(3000);
  lcdC.clear();
  lcdO.clear();
}
