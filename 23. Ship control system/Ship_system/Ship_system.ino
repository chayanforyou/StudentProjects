#include "HX711.h"
#include <Servo.h> 
#include <LiquidCrystal.h>

#define DOUT 2
#define CLK 3
#define IR_butt 4
#define sonar_butt 5
#define weight_butt 6
#define trig 7
#define echo 8
#define IR_sense 9
#define s_motor 10
#define motor 11
#define BUZZ 12

//--------------------------------- 
#define object 10
#define calibration_factor -7050
//---------------------------------

HX711 scale(DOUT, CLK);
LiquidCrystal lcd(14, 15, 16, 17, 18, 19); 
Servo servo;

long duration;
int distanceInch;
int human = 0;
int gram = 0;

bool IR_flag = false;
bool sonar_flag = false;
bool weight_flag = false;
bool gate_flag = false;

void setup() {
  lcd.begin(16,2); 
  lcd.clear();
  servo.attach(s_motor);
  Serial.begin(9600);
  Serial.println("HX711 scale Monitoring...");

  scale.set_scale(calibration_factor);
  scale.tare();
  
  pinMode(trig, OUTPUT);
  pinMode(echo, INPUT);
  pinMode(IR_butt, INPUT);
  pinMode(sonar_butt, INPUT);
  pinMode(weight_butt, INPUT);
  pinMode(IR_sense, INPUT);
  pinMode(s_motor, OUTPUT);
  pinMode(BUZZ, OUTPUT);
  pinMode(motor, OUTPUT);
  delay(2000);
}

void loop() {
  mode_check();
  if(sonar_flag == 1) check_sonar(); 
  else{
    lcd.setCursor(0,0);
    lcd.print("Sonar System OFF");
    delay(10);
  }
  if(IR_flag == 1) check_IR(); 
  else{
    human = 0;
    lcd.setCursor(0,1);
    lcd.print("-OFF-");
    delay(10);
  }
  if(weight_flag == 1) check_weight(); 
  else{
    scale.tare();
    digitalWrite(motor, LOW);
    lcd.setCursor(6,1);
    lcd.print("Weight OFF");
    delay(10);
  }
}

void check_sonar(){
  digitalWrite(trig, LOW);
  delayMicroseconds(2);
  digitalWrite(trig, HIGH);
  delayMicroseconds(10);
  digitalWrite(trig, LOW);
  duration = pulseIn(echo, HIGH);
  distanceInch = duration * 0.0133 / 2;
  lcd.setCursor(0,0);
  lcd.print("Distance:");
  lcd.print(distanceInch);
  lcd.print(" inch ");
  if(distanceInch <= object) alarm();
}

void check_IR(){
  if(digitalRead(IR_sense) == LOW && human < 30){
    human++;
    alarm();
  }
  lcd.setCursor(0,1);
  lcd.print("P:");
  lcd.print(human);
  if(human < 30 && gate_flag == true){
    gate_flag = false;
    servo.write(100);  
  }
  if(human == 30 && gate_flag == false){
    gate_flag = true;
    servo.write(0);  
    alarm();
  }
}

void check_weight(){
  Serial.print("Reading: ");
  Serial.print(scale.get_units(), 1);
  Serial.print(" Kg"); 
  Serial.println();
  gram = scale.get_units() * 10;
  lcd.setCursor(7,1);
  lcd.print(gram);
  lcd.print(" gram   ");
  if(gram > 1000) digitalWrite(motor, LOW);
  else digitalWrite(motor, HIGH);
}

void alarm(){
  digitalWrite(BUZZ, HIGH);
  delay(1000);
  digitalWrite(BUZZ, LOW); 
}

void mode_check(){
  if(digitalRead(sonar_butt) == HIGH){
    lcd.clear();
    sonar_flag = !sonar_flag;
    if(sonar_flag == true){
      lcd.setCursor(0,1);
      lcd.print("Sonar System ON");
      delay(1000);
    }
    else{
      lcd.setCursor(0,1);
      lcd.print("Sonar System OFF");
      delay(1000);
    }
    lcd.clear();  
  }
  if(digitalRead(IR_butt) == HIGH){
    lcd.clear();
    IR_flag = !IR_flag;
    if(IR_flag == true){
      lcd.setCursor(0,1);
      lcd.print("IR System ON");
      delay(1000);
    }
    else{
      lcd.setCursor(0,1);
      lcd.print("IR System OFF");
      delay(1000);
    }
    lcd.clear();  
  }
  if(digitalRead(weight_butt) == HIGH){
    lcd.clear();
    weight_flag = !weight_flag;
    if(weight_flag == true){
      lcd.setCursor(0,1);
      lcd.print("Weight System ON");
      delay(1000);
    }
    else{
      lcd.setCursor(0,1);
      lcd.print("Weight SystemOFF");
      delay(1000);
    }
    lcd.clear();  
  }
}
