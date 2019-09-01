#include <DHT.h>
#include <DHT_U.h>
#include <LiquidCrystal.h>
#include <Ultrasonic.h>

//----------------- Adjust alarm
#define T_MIN 15
#define T_MAX 35
#define H_MIN 30
#define H_MAX 75
#define S_MIN 20
#define S_MAX 100

#define tempInc 10
#define tempDec 13
#define IR1 9
#define IR2 8
#define buzz 11
#define temp A3
#define mq2 A2 
#define DHTPIN 12
#define DHTTYPE DHT11 

DHT hum(DHTPIN, DHTTYPE);
LiquidCrystal lcd(2, 3, 4, 5, 6, 7);
Ultrasonic sonar(A1, A0, 11600);

int temp_val, smoke, hum_val, distance;
byte person, temp_adder = 0;
bool gateStatus;

void setup() {
  Serial.begin(9600);
  lcd.begin(16, 2);
  hum.begin();

  pinMode(tempInc, INPUT_PULLUP);
  pinMode(tempDec, INPUT_PULLUP); 
  pinMode(buzz, OUTPUT);
  pinMode(IR1, INPUT);
  pinMode(IR2, INPUT);

  beep();
}

void loop() {
  readSensor();
  
  lcd.setCursor(0, 0);
  lcd.print((String)temp_val + (char)223 + "C  |  Hum:" + (String)hum_val + "%  ");
  lcd.setCursor(0, 1);
  lcd.print("Gas: " + (String)smoke + " PP  "); 

  if(temp_val < T_MIN) beep();
  if(temp_val > T_MAX) beep();
  if(hum_val < H_MIN) beep();
  if(hum_val > H_MAX) beep();
  if(smoke < S_MIN) beep();
  if(smoke > S_MAX) beep();

  if(!digitalRead(tempInc)) temp_adder++;
  if(!digitalRead(tempDec)) temp_adder--;

  delay(300);
}

void readSensor(){
  temp_val = analogRead(temp);
  temp_val = temp_val * 0.4887;
  temp_val += temp_adder;
  smoke = analogRead(mq2);

  hum_val = hum.readHumidity();
  //distance = sonar.Ranging(CM);

  Serial.println("Temp: " + (String)temp_val + "C | "
                 "CO: " + (String)smoke + " | "
                 "Humidity: " + (String)hum_val + "% | "
                 "Distance: " + (String)distance + "cm | ");
}

void showCounter(){
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Gate: ");
  if(!gateStatus) lcd.print("UNLOCKED");
  else lcd.print("LOCKED");

  lcd.setCursor(0, 1);
  lcd.print("Person: " + (String)person + "  ");
}


void beep(){
  digitalWrite(buzz, 1);
  delay(100);
  digitalWrite(buzz, 0);
}
