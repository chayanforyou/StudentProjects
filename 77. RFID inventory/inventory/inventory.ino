#include <LiquidCrystal.h>
#include <Servo.h>

#define modeButt 5
#define buzz 6

LiquidCrystal lcd(12, 11, 10, 9, 8, 7);
Servo servo;

bool mode = 0;

void setup() {
  Serial.begin(9600);
  lcd.begin(16, 2);
  servo.attach(13);

  pinMode(modeButt, INPUT);
  pinMode(buzz, OUTPUT);

  beep(100);
  servo.write(1);
}

void loop() {
  lcd.setCursor(0, 0);
  lcd.print(" RFID Inventory ");

  lcd.setCursor(0, 1);
  if(mode == 0) lcd.print("Mode: Inventory ");
  else lcd.print("Mode: Anti-Theft");

  if(digitalRead(modeButt)){
    if(mode == 0) {
      mode = 1;
      Serial.println("ANTITHEFT");
    }
    else {
      mode = 0;
      Serial.println("INVENTORY");
    }
    delay(500);
  }

  if(Serial.available()){
    String t = Serial.readString();
    if(t.indexOf("UNLOCK") != -1) servo.write(1);
    else if(t.indexOf("BEEP") != -1) beep(1000);
    else if(t.indexOf("LOCK") != -1) servo.write(90);
  }
}

void beep(int d){
  digitalWrite(buzz, 1);
  delay(d);
  digitalWrite(buzz, 0);
}
