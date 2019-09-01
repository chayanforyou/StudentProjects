#include <LiquidCrystal.h>
#include <Servo.h>

Servo servo;
LiquidCrystal lcd(A0, A1, A2, A3, A4, A5); //RS, E, D4, D5, D6, D7

byte car_have[8] = {1,2,20,9,2,20,8,0};
byte no_car[8] = {0,17,10,4,10,17,0,0};

byte gate = 3;
byte slot1 = 4;
byte slot2 = 5;
byte slot3 = 6;
byte slot4 = 7;
byte slot5 = 8;
byte slot6 = 9;
// servo Pin 10

int pos, timer = 0;
char digit[3];

void setup() {
  lcd.begin(16, 2);
  servo.attach(10);
  pinMode(gate, INPUT);
  pinMode(slot1, INPUT);
  pinMode(slot2, INPUT);
  pinMode(slot3, INPUT);
  pinMode(slot4, INPUT); 
  lcd.createChar(0, car_have);
  lcd.createChar(1, no_car);
  gate_close();
}

void loop() {
  if(digitalRead(gate) == 0) gate_open();
  
  lcd.setCursor(0, 0);
  lcd.print("1  2  3  4  5  6");
  
  if(digitalRead(slot1) == 0){
    lcd.setCursor(1, 1);
    lcd.write(byte(0));
  }
  else{
    lcd.setCursor(1, 1);
    lcd.write(byte(1));
  }
  if(digitalRead(slot2) == 0){
    lcd.setCursor(3, 1);
    lcd.write(byte(0));
  }
  else{
    lcd.setCursor(3, 1);
    lcd.write(byte(1));
  }
  if(digitalRead(slot3) == 0){
    lcd.setCursor(6, 1);
    lcd.write(byte(0));
  }
  else{
    lcd.setCursor(6, 1);
    lcd.write(byte(1));
  }
  if(digitalRead(slot4) == 0){
    lcd.setCursor(9, 1);
    lcd.write(byte(0));
  }
  else{
    lcd.setCursor(9, 1);
    lcd.write(byte(1));
  }
  if(digitalRead(slot5) == 0){
    lcd.setCursor(12, 1);
    lcd.write(byte(0));
  }
  else{
    lcd.setCursor(12, 1);
    lcd.write(byte(1));
  }
  if(digitalRead(slot6) == 0){
    lcd.setCursor(15, 1);
    lcd.write(byte(0));
  }
  else{
    lcd.setCursor(15, 1);
    lcd.write(byte(1));
  }
}

void gate_open(){
  if(!digitalRead(slot1) && !digitalRead(slot2) && !digitalRead(slot3) && !digitalRead(slot4) && !digitalRead(slot5) && !digitalRead(slot6)){
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
  while(digitalRead(gate) == 0);
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

