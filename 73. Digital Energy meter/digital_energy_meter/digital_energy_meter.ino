#include <LiquidCrystal.h>

#define butt A3
#define relay 8
LiquidCrystal lcd(7, 6, 5, 4, 3, 2);

int mVperAmp = 385; // use 100 for 20A Module and 66 for 30A Module

int acVolt, watt, bill, balance, ct, st, second, minute;
float unit;

void setup() {
  Serial.begin(115200);
  lcd.begin(16, 2);
  pinMode(relay, OUTPUT);
  pinMode(butt, INPUT);
}

void loop() {
  int volt = getACvolt();
  double amps = getCurrent(A6) - 0.06;
  watt = acVolt * amps;
  if(watt < 0) watt = 0;
  checkSecond();

  if(balance > 0) digitalWrite(relay, 1);
  else digitalWrite(relay, 0);

  lcd.setCursor(0, 0);
  lcd.print((String) leadZero(volt) + "V " + leadZero(watt) + "W u:" + unit + "      ");
  lcd.setCursor(0, 1);
  lcd.print((String)"R:" + leadZero(balance) + "tk  U:" + leadZero(bill) + "tk   ");

  if(digitalRead(butt)) {balance += 10; while(digitalRead(butt));}
  delay(200);
}

void checkSecond(){
  ct = millis();
  if(ct - st >= 1000){
    st = ct;
    second++;
    if(second == 60){
      minute++;
      second = 0;

      unit += (watt / 1000.0);
      bill += (unit * 10);
      if(balance > 0) balance -= bill;
    }
  }
}

String leadZero(int val){
  if(val < 10)return (String)"00" + val;
  else if(val < 100) return (String)"0" + val;
  else return (String)val;
}

int getACvolt(){
  for(byte i = 0; i < 100; i++){
    if(analogRead(A0) == 0) acVolt = 0;
    else if(analogRead(A0) > acVolt){
      acVolt = analogRead(A0);
    }
  }
  return acVolt / 2.51;
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
