#include <DHT.h>
#include <DHT_U.h>
#include <LiquidCrystal.h>
#include <EEPROM.h>

#define up 6
#define set 5
#define down 4
#define buzz 11
#define tmpA_r 2
#define tmpB_r 3
#define humA_r 7
#define humB_r 8
#define tmrA_r 9
#define tmrB_r 10

DHT humidity_1(0, DHT11);
DHT humidity_2(1, DHT11);

const int rs = 12, en = 13, d4 = A2, d5 = A3, d6 = A4, d7 = A5;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

int tmpA, tmpB, humA, humB;
int mm, ss;
byte mm_H, mm_L, tmr_flag;

byte tmpA_alart, tmpB_alart, humA_alart, humB_alart;

void show_title(){
  lcd.setCursor(0,3);
  lcd.print("Made by Antor Ahmed.");  //20 char ONLY and MUST
}

void setup() {
  humidity_1.begin();
  humidity_2.begin();
  lcd.begin(20, 4);

  pinMode(tmpA_r, OUTPUT);
  pinMode(tmpB_r, OUTPUT);
  pinMode(humA_r, OUTPUT);
  pinMode(humB_r, OUTPUT);
  pinMode(tmrA_r, OUTPUT);
  pinMode(tmrB_r, OUTPUT);
  pinMode(buzz, OUTPUT);

  pinMode(up, INPUT);
  pinMode(set, INPUT);
  pinMode(down, INPUT);

  mm_H = EEPROM.read(0);
  mm_L = EEPROM.read(1);
  ss = EEPROM.read(2);
  tmr_flag = EEPROM.read(3);
  tmpA = EEPROM.read(4);
  tmpB = EEPROM.read(5);
  humA = EEPROM.read(6);
  humB = EEPROM.read(7);
  mm = (mm_H << 8) + mm_L;

  digitalWrite(tmrA_r, HIGH);
  digitalWrite(tmrB_r, LOW);
}

void get_temp1(){
  tmpA = (analogRead(A6)  - analogRead(A7)) * 0.4887;
  tmpA = tmpA * 1.8 + 32;
}

void get_temp2(){
  tmpB = (analogRead(A0)  - analogRead(A1)) * 0.4887;
  tmpB = tmpB * 1.8 + 32;
}

void timer(){
  if(tmr_flag == 1){
    lcd.setCursor(7,2);
    lcd.print(mm);
    lcd.print(":");
    lcd.print(ss);
    lcd.print("   ");
    
    if(ss == 0) {ss = 60; mm--;}
    ss--;
    if(mm == 0 && ss == 0){
      mm_H = EEPROM.read(0);
      mm_L = EEPROM.read(1);
      ss = EEPROM.read(2);
      mm = (mm_H << 8) + mm_L;
      digitalWrite(tmrA_r, !digitalRead(tmrA_r));
      digitalWrite(tmrB_r, !digitalRead(tmrB_r));
    }
  } 
  else{
    lcd.setCursor(7,2);
    lcd.print("Timer OFF  ");
  } 
}

void menu(){
  digitalWrite(buzz, LOW);
  lcd.clear();
  delay(1000);
  lcd.setCursor(0,1);
  lcd.print("Setup Timer:");

  mm_H = EEPROM.read(0);
  mm_L = EEPROM.read(1);
  ss = EEPROM.read(2);
  tmr_flag = EEPROM.read(3);
  mm = (mm_H << 8) + mm_L;

  while(digitalRead(set) == LOW){
    lcd.setCursor(0,2);
    lcd.print(mm);
    lcd.print(":");
    lcd.print(ss);
    lcd.print("  MM  ");

    if(digitalRead(up) == HIGH) mm++;
    if(mm > 900) mm = 0;
    if(digitalRead(down) == HIGH) mm--;
    if(mm < 0) mm = 900;

    delay(300);
  }
  mm_H = mm >> 8;
  mm_L = mm;
  EEPROM.write(0, mm_H);
  EEPROM.write(1, mm_L);
  digitalWrite(buzz, HIGH);
  delay(500);
  digitalWrite(buzz, LOW);

  while(digitalRead(set) == LOW){
    lcd.setCursor(0,2);
    lcd.print(mm);
    lcd.print(":");
    lcd.print(ss);
    lcd.print("  SS  ");

    if(digitalRead(up) == HIGH) ss++;
    if(ss > 59) ss = 0;
    if(digitalRead(down) == HIGH) ss--;
    if(ss < 0) ss = 59;

    delay(300);
  }
  EEPROM.write(2, ss);
  digitalWrite(buzz, HIGH);
  delay(500);
  digitalWrite(buzz, LOW);

  while(digitalRead(set) == LOW){
    lcd.setCursor(0,2);
    lcd.print(mm);
    lcd.print(":");
    lcd.print(ss);
    lcd.print("  SS  ");

    if(tmr_flag == 1) lcd.print("ON ");
    else lcd.print("OFF");

    if(digitalRead(up) == HIGH) {
      if(tmr_flag == 1) tmr_flag = 0;
      else tmr_flag = 1;
    }

    delay(300);
  }
  EEPROM.write(3, tmr_flag);
  digitalWrite(buzz, HIGH);
  delay(500);
  digitalWrite(buzz, LOW);
  lcd.clear();

  lcd.setCursor(0,1);
  lcd.print("Temp 1 Setup:");
  
  while(digitalRead(set) == LOW){
    lcd.setCursor(0,2);
    lcd.print(tmpA_alart);
    lcd.print((char)223);
    lcd.print("F   ");

    if(digitalRead(up) == HIGH) tmpA_alart++;
    if(tmpA_alart > 100) tmpA_alart = 0;
    if(digitalRead(down) == HIGH) tmpA_alart--;
    if(tmpA_alart < 0) tmpA_alart = 100;

    delay(300);
  }
  EEPROM.write(4, tmpA_alart);
  digitalWrite(buzz, HIGH);
  delay(500);
  digitalWrite(buzz, LOW);

  lcd.setCursor(0,1);
  lcd.print("Temp 2 Setup:");
  
  while(digitalRead(set) == LOW){
    lcd.setCursor(0,2);
    lcd.print(tmpB_alart);
    lcd.print((char)223);
    lcd.print("F   ");

    if(digitalRead(up) == HIGH) tmpB_alart++;
    if(tmpB_alart > 100) tmpB_alart = 0;
    if(digitalRead(down) == HIGH) tmpB_alart--;
    if(tmpB_alart < 0) tmpB_alart = 100;

    delay(300);
  }
  EEPROM.write(5, tmpB_alart);
  digitalWrite(buzz, HIGH);
  delay(500);
  digitalWrite(buzz, LOW);
  lcd.clear();

  lcd.setCursor(0,1);
  lcd.print("Humidity 1 Setup:");
  
  while(digitalRead(set) == LOW){
    lcd.setCursor(0,2);
    lcd.print(humA_alart);
    lcd.print("%   ");

    if(digitalRead(up) == HIGH) humA_alart++;
    if(humA_alart > 99) humA_alart = 0;
    if(digitalRead(down) == HIGH) humA_alart--;
    if(humA_alart < 0) humA_alart = 99;

    delay(300);
  }
  EEPROM.write(6, humA_alart);
  digitalWrite(buzz, HIGH);
  delay(500);
  digitalWrite(buzz, LOW);

  lcd.setCursor(0,1);
  lcd.print("Humidity 2 Setup:");
  
  while(digitalRead(set) == LOW){
    lcd.setCursor(0,2);
    lcd.print(humB_alart);
    lcd.print("%   ");

    if(digitalRead(up) == HIGH) humB_alart++;
    if(humB_alart > 99) humB_alart = 0;
    if(digitalRead(down) == HIGH) humB_alart--;
    if(humB_alart < 0) humB_alart = 99;

    delay(300);
  }
  EEPROM.write(7, humB_alart);
  digitalWrite(buzz, HIGH);
  delay(500);
  digitalWrite(buzz, LOW);
  lcd.clear();

  delay(500);
}

void loop() {
  get_temp1();
  get_temp2();

  humA = humidity_1.readHumidity();
  humB = humidity_2.readHumidity();

  lcd.setCursor(0,0);
  lcd.print("Temp: ");
  lcd.print(tmpA);
  lcd.print((char)223);
  lcd.print("F   ");
  lcd.print(tmpB);
  lcd.print((char)223);
  lcd.print("F   ");
  
  lcd.setCursor(0,1);
  lcd.print("Humi: ");
  lcd.print(humA);
  lcd.print("%    ");
  lcd.print(humB);
  lcd.print("%   ");

  if(digitalRead(set) == HIGH) menu();

  if(tmpA < (tmpA_alart - 3) || tmpA > (tmpA_alart + 3)){
    digitalWrite(buzz, HIGH); digitalWrite(tmpA_r, HIGH);
    lcd.setCursor(0,3);
    lcd.print("Temp A exceed.."); 
  }

  else if(tmpB < (tmpB_alart - 3) || tmpB > (tmpB_alart + 3)){
    digitalWrite(buzz, HIGH); digitalWrite(tmpB_r, HIGH);
    lcd.setCursor(0,3);
    lcd.print("Temp B exceed..");  
  }

  else if(humA < (humA_alart - 3) || humA > (humA_alart + 3)){
    //digitalWrite(buzz, HIGH); 
    digitalWrite(humA_r, HIGH); 
    lcd.setCursor(0,3);
    lcd.print("Humidity A exceed.."); 
  }

  else if(humB < (humB_alart - 3) || humB > (humB_alart + 3)){
    //digitalWrite(buzz, HIGH); 
    digitalWrite(humB_r, HIGH); 
    lcd.setCursor(0,3);
    lcd.print("Humidity B exceed.."); 
  }
  else{
    digitalWrite(buzz, LOW); 
    digitalWrite(tmpA_r, LOW);
    digitalWrite(tmpB_r, LOW);
    digitalWrite(humA_r, LOW);
    digitalWrite(humB_r, LOW);
    show_title();
  }
  
  timer();
  delay(1000);
}
