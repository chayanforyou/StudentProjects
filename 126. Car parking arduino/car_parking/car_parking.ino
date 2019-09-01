#include <LiquidCrystal.h>
#include <Servo.h>

Servo servo;
LiquidCrystal lcd(A0, A1, A2, A3, A4, A5);

byte car_have[8] = {1,2,20,9,2,20,8,0};
byte no_car[8] = {0,17,10,4,10,17,0,0};

byte laser = 3;
byte car_1_pin = 4;
byte car_2_pin = 5;
byte car_3_pin = 6;
byte car_4_pin = 7;

int pos, timer = 0;
char digit[3];

void setup() {
  lcd.begin(16, 2);
  servo.attach(9);
  pinMode(laser, INPUT);
  pinMode(car_1_pin, INPUT);
  pinMode(car_2_pin, INPUT);
  pinMode(car_3_pin, INPUT);
  pinMode(car_4_pin, INPUT); 
  lcd.createChar(0, car_have);
  lcd.createChar(1, no_car);
  gate_close();
}

void loop() {
  lcd.setCursor(0, 0);
  lcd.print("Slot1:");
  lcd.setCursor(9, 0);
  lcd.print("Slot2:");
  lcd.setCursor(0, 1);
  lcd.print("Slot3:");
  lcd.setCursor(9, 1);
  lcd.print("Slot4:");
  if(digitalRead(laser) == 0) gate_open();
  if(digitalRead(car_1_pin) == 0){
    lcd.setCursor(6, 0);
    lcd.write(byte(0));
  }
  else{
    lcd.setCursor(6, 0);
    lcd.write(byte(1));
  }
  if(digitalRead(car_2_pin) == 0){
    lcd.setCursor(15, 0);
    lcd.write(byte(0));
  }
  else{
    lcd.setCursor(15, 0);
    lcd.write(byte(1));
  }
  if(digitalRead(car_3_pin) == 0){
    lcd.setCursor(6, 1);
    lcd.write(byte(0));
  }
  else{
    lcd.setCursor(6, 1);
    lcd.write(byte(1));
  }
  if(digitalRead(car_4_pin) == 0){
    lcd.setCursor(15, 1);
    lcd.write(byte(0));
  }
  else{
    lcd.setCursor(15, 1);
    lcd.write(byte(1));
  }
}

void gate_open(){
  if(digitalRead(car_1_pin) == 0 && digitalRead(car_2_pin) == 0 && digitalRead(car_3_pin) == 0 && digitalRead(car_4_pin) == 0){
     lcd.clear();
     lcd.setCursor(0, 0);
     lcd.print("Slot FULL...");
     delay(1000);
     lcd.clear();
     return; 
  }
  timer = 10;
  lcd.clear();
  lcd.setCursor(0, 1);
  lcd.print("Car detected...");
  for (pos = 0; pos <= 90; pos += 1) { 
    servo.write(pos);             
    delay(15);                      
  }
  while(digitalRead(laser) == 0);
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Gate will close");
  lcd.setCursor(0, 1);
  lcd.print("within ");
  lcd.setCursor(10, 1);
  lcd.print("second");
  while(timer >= 0){
    digit[0] = timer / 10 + 48; 
    digit[1] = timer % 10 + 48; 
    lcd.setCursor(7, 1);
    lcd.write(digit);
    delay(1000); 
    timer--;
  }
  gate_close();
  lcd.clear();
}

void gate_close(){
  for (pos = 90; pos >= 0; pos -= 1) { 
    servo.write(pos);              
    delay(15);                       
  }
}

