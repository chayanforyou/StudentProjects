#include <SoftwareSerial.h>
#include <LiquidCrystal.h>

byte led = 13;

#define wait 300

#define motor1_a 3
#define motor1_b 4
#define motor2_a 5
#define motor2_b 6

SoftwareSerial serial(7, 8);
LiquidCrystal lcd(A2, A3, A4, A5, A0, A1);

char rxd, bt, cp = 0;
byte angle[4] = {65, 180, 100, 100}; //initial stage
byte pos = 0;
bool flag1 = true;

void setup() {
  Serial.begin(9600);
  serial.begin(9600);
  
  lcd.begin(16, 2);
  lcd.clear();

  pinMode(led, OUTPUT);
  pinMode(motor1_a, OUTPUT);
  pinMode(motor1_b, OUTPUT);
  pinMode(motor2_a, OUTPUT);
  pinMode(motor2_b, OUTPUT);
}

void loop() {
  lcd.setCursor(0,0);
  lcd.print("S1: ");
  lcd.print(angle[0], DEC);
  lcd.print("  ");

  lcd.setCursor(9,0);
  lcd.print("S2: ");
  lcd.print(angle[1], DEC);
  lcd.print("  ");

  lcd.setCursor(0,1);
  lcd.print("S3: ");
  lcd.print(angle[2], DEC);
  lcd.print("  ");

  lcd.setCursor(9,1);
  lcd.print("S4: ");
  lcd.print(angle[3], DEC);
  lcd.print("  ");
  
  if(serial.available()){
    rxd = serial.read();

    if(rxd == '1') up();

    if(rxd == '2') down();

    if(rxd == '3') left();

    if(rxd == '4') right();

    if(rxd == '5') clear_all();

    rxd = 0;
  }

  if(Serial.available()){
    bt = Serial.read();

    if(bt == 'a') up();

    if(bt == 'b') down();

    if(bt == 'c') left();

    if(bt == 'd') right();

    if(bt == 'e') clear_all();

    bt = 0;
  }
}

void up(){
  digitalWrite(motor1_a, HIGH);
  digitalWrite(motor1_b, LOW);
  digitalWrite(motor2_a, HIGH);
  digitalWrite(motor2_b, LOW);
}

void down(){
  digitalWrite(motor1_a, LOW);
  digitalWrite(motor1_b, HIGH);
  digitalWrite(motor2_a, LOW);
  digitalWrite(motor2_b, HIGH);
}

void left(){
  digitalWrite(motor1_a, LOW);
  digitalWrite(motor1_b, LOW);
  digitalWrite(motor2_a, HIGH);
  digitalWrite(motor2_b, LOW);
}

void right(){
  digitalWrite(motor1_a, HIGH);
  digitalWrite(motor1_b, LOW);
  digitalWrite(motor2_a, LOW);
  digitalWrite(motor2_b, LOW);
}

void clear_all(){
  digitalWrite(motor1_a, LOW);
  digitalWrite(motor1_b, LOW);
  digitalWrite(motor2_a, LOW);
  digitalWrite(motor2_b, LOW);
}
