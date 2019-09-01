#include <LiquidCrystal.h>
#include <OneWire.h> 
#include <DallasTemperature.h>

#define buzz         13
#define led          5
#define ONE_WIRE_BUS 6 
#define phSensor     A1
#define turbidity    A0

LiquidCrystal lcd(2, 4, 9, 10, 11, 12);
OneWire oneWire(ONE_WIRE_BUS); 
DallasTemperature tempSensor(&oneWire);

byte timer = 0;

void setup() {
  Serial.begin(9600);
  lcd.begin(16, 2);
  tempSensor.begin();

  pinMode(led, OUTPUT);
  pinMode(buzz, OUTPUT);

  Serial.println("LABEL,Time,Date,pH,pH Condition,Turbidity,Turbidity Condition,Temperature,Temperature Condition,Motor Condition");
}

void loop() {
  float temp = getTemp();
  float ph = getPH();
  float turbidity = getTurbidity();
  
  if(timer == 0){
    Serial.print("DATA,TIME,DATE,");
    Serial.print(ph);
    Serial.print(",");

    if(ph >= 6.5 && ph <= 7.5) Serial.print("GOOD,");
    else if(ph < 6.5) Serial.print("LOW pH,");
    else Serial.print("HIGH pH,");

    Serial.print(turbidity);
    Serial.print(",");

    if(turbidity >= 1.5 && turbidity <= 2.5) Serial.print("GOOD,");
    else if(turbidity < 1.5) Serial.print("LOW turbidity,");
    else Serial.print("HIGH turbidity,");

    Serial.print(temp);
    Serial.print(",");

    if(temp >= 25.0 && temp <= 32.0) Serial.print("Normal,");
    else if(temp < 25.0) Serial.print("COOL,");
    else Serial.print("HOT,");

    if(digitalRead(led)) Serial.println("ON");
    else Serial.println("OFF");
  }

  if(ph < 6.5 || ph > 8.0 || turbidity < 1.5 || turbidity > 2.5 || temp < 25.0 || temp > 32.0){
    digitalWrite(led, 1);
    digitalWrite(buzz, 1);
  }
  else{
    digitalWrite(led, 0);
    digitalWrite(buzz, 0);
  }
  
  lcd.setCursor(0, 0);
  lcd.print((String)"Turbidity: " + turbidity + "   ");
  lcd.setCursor(0, 1);
  lcd.print((String)"pH: " + ph + "  " + temp + (char)223 + "C");

  delay(100);
  timer++;
  if(timer == 50) timer = 0;
}

float getTemp(){
  tempSensor.requestTemperatures();
  return tempSensor.getTempCByIndex(0);
}

float getPH(){
  unsigned long int avgValue = 0; 
  int buf[10], temp;
  
  for(int i = 0; i < 10; i++){ 
    buf[i] = analogRead(phSensor);
    delay(10);
  }
  for(int i = 0; i < 9; i++){
    for(int j = i + 1; j < 10; j++){
      if(buf[i] > buf[j]){
        temp = buf[i];
        buf[i] = buf[j];
        buf[j] = temp;
      }
    }
  }
  for(int i = 2; i < 8; i++) avgValue += buf[i];
  float pHVol = (float)avgValue * 5.0 / 1024 / 6;
  float phValue = -5.70 * pHVol + 23.34; // 21.34;
  return phValue;
}

float getTurbidity(){
  float volt = 0, ntu = 0;
  for(int i = 0; i < 800; i++){
    volt += ((float)analogRead(turbidity) / 1023) * 5;
  }
  volt = volt / 800;
  volt = round_to_dp(volt, 1);
  if(volt < 2.5) ntu = 3000;
  else ntu = -1120.4 * square(volt) + 5742.3 * volt - 4353.8; 
  return ntu / 1000;
}

float round_to_dp( float in_value, int decimal_place ){
  float multiplier = powf( 10.0f, decimal_place );
  in_value = roundf( in_value * multiplier ) / multiplier;
  return in_value;
}

