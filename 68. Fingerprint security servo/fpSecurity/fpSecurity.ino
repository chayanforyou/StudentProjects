#include <LiquidCrystal.h>
#include <Adafruit_Fingerprint.h>
#include <SoftwareSerial.h>
#include <TimerOne.h>

#define butt1 A5
#define butt2 A4
#define butt3 A1
#define butt4 A0
#define butt5 5
#define servo 4
#define led   6

SoftwareSerial mySerial(2, 3);
Adafruit_Fingerprint finger = Adafruit_Fingerprint(&mySerial);
LiquidCrystal lcd(12, 11, 10, 9, 8, 7);

const byte teacherID[] = {01, 02, 03, 0, 0, 0}; // 3 ID, 3 flag

bool allow = false, secFlag = false, late = false, buttMode = false;
byte mm = 5, ss = 0;
int enrollID;

void setup() {
  Serial.begin(9600);
  finger.begin(57600);
  lcd.begin(20, 4);
  finger.verifyPassword();
  finger.getTemplateCount();
  enrollID = finger.templateCount + 1;

  pinMode(butt1, INPUT);
  pinMode(butt2, INPUT);
  pinMode(butt3, INPUT);
  pinMode(butt4, INPUT);
  pinMode(butt4, INPUT);
  pinMode(butt5, INPUT);
  pinMode(servo, OUTPUT);
  pinMode(led, OUTPUT);

  Timer1.initialize(1000000);
  Timer1.attachInterrupt(oneSecond);

  servoRotate(servo, 0);
}

void loop() {
  if(allow){
    lcd.setCursor(0, 0);
    lcd.print("PUT YOUR FINGER..   ");
    lcd.setCursor(0, 3);
    lcd.print((String)"Timer: " + maskZero(mm) + ":" + maskZero(ss) + "   ");

    if((mm == 0 && ss == 0)) {
      servoRotate(servo, 0);
      allow = false;
      late = false;
      buttMode = false;
      teacherID[3] = 0;
      teacherID[4] = 0;
      teacherID[5] = 0;
    }
    if(ss == 0){
      ss = 60;
      if(mm != 0) mm--;
    }
    if(secFlag){
      secFlag = false;
      ss--;
    }

    if(teacherID[3] == 1 && teacherID[4] == 1 && teacherID[5] == 1){
      digitalWrite(led, 1);
      teacherID[3] = 0;
      teacherID[4] = 0;
      teacherID[5] = 0;
      servoRotate(servo, 180);
      allow = false;
      late = false;
      buttMode = false;
    }

    int id = matchFinger();
    if(id != -1){
      clearLine(0);
      lcd.setCursor(0, 0);
      if(!late) lcd.print((String)"ID #0" + id + "  - PRESENT");
      else      lcd.print((String)"ID #0" + id + "  - LATE   ");
      delay(1000);

      if(buttMode){
        if(teacherID[3] != 1 && teacherID[0] == id) teacherID[3] = 1;
        else if(teacherID[4] != 1 && teacherID[1] == id) teacherID[4] = 1;
        else if(teacherID[5] != 1 && teacherID[2] == id) teacherID[5] = 1; 
      }
    }
  }
  else{
    lcd.setCursor(0, 0);
    lcd.print("Students Not Allowed");
    lcd.setCursor(0, 3);
    lcd.print("^: Late Allow");

    if(digitalRead(butt3)){
      mm = 0; ss = 10;
      allow = true;
      late = true;
      servoRotate(servo, 180);
    }
  }

  if(digitalRead(butt2)) {
    mm = 5; ss = 0;
    if(allow){
      allow = false;
      late = false;
      servoRotate(servo, 0);
    }
    else{
      allow = true;
      servoRotate(servo, 180);
    }
  }

  if(digitalRead(butt5)) {
    mm = 5; ss = 0;
    buttMode = true;
    allow = true;
  }

  if(digitalRead(butt1)){
    lcd.clear();
    lcd.setCursor(0, 1);
    lcd.print("Enter ID #0");
    while(!digitalRead(butt2)){
      lcd.setCursor(11, 1);
      lcd.print(maskZero(enrollID));
      if(digitalRead(butt3)){
        if(enrollID < 100) enrollID++;
        delay(300);
      }
      if(digitalRead(butt4)){
        if(enrollID != 0) enrollID--;
        delay(300);
      }
    }
    lcd.setCursor(0, 2);
    lcd.print("Enrolling....");
    bool check = fingerEnroll(enrollID);
    if(check){
      lcd.setCursor(0, 3);
      lcd.print("Enroll Successfull.");
    }
    else{
      lcd.setCursor(0, 3);
      lcd.print("Enroll Unsuccessfull.");
    }
    delay(2000);
    lcd.clear();
  }

  lcd.setCursor(0, 1);
  lcd.print("O: Add Finger");
  lcd.setCursor(0, 2);
  lcd.print((String)(char)219 + ": Allow/Not Allow");
}

void servoRotate(byte s, byte a){
  int angle = map(a, 0, 180, 1000, 2000);
  for(byte i = 0; i < 100; i++){
    digitalWrite(s, 1);
    delayMicroseconds(angle);
    digitalWrite(s, 0);
    delayMicroseconds(20000 - angle);
  }
}

void oneSecond(){
  secFlag = true;
}

String maskZero(byte v){
  if(v < 10) return (String)"0" + v;
  else return (String)v;
}

void clearLine(byte l){
  for(byte i = 0; i < 20; i++){
    lcd.setCursor(i, l);
    lcd.print(" ");
  }
}

bool fingerEnroll(int id) {
  int p = -1;
  Serial.print("Waiting for valid finger to enroll as #"); Serial.println(id);
  while (p != FINGERPRINT_OK) {
    p = finger.getImage();
  }
  
  p = finger.image2Tz(1);
  if (p != FINGERPRINT_OK) return 0; 
  
  p = -1;
  while (p != FINGERPRINT_OK) {
    p = finger.getImage();
  } 
  
  p = finger.image2Tz(2);
  if (p != FINGERPRINT_OK) return 0; 
  
  Serial.print("Creating model for #");  Serial.println(id);
  
  p = finger.createModel();
  if (p != FINGERPRINT_OK) return 0;  
  
  Serial.print("ID "); Serial.println(id);
  p = finger.storeModel(id);
  if (p != FINGERPRINT_OK) return 0; 
  return 1; 
}

int matchFinger(){
  uint8_t p = finger.getImage();
  if (p != FINGERPRINT_OK)  return -1;

  p = finger.image2Tz();
  if (p != FINGERPRINT_OK)  return -1;

  p = finger.fingerFastSearch();
  if (p != FINGERPRINT_OK)  return -1;

  Serial.print("Found ID #"); Serial.println(finger.fingerID); 
  return finger.fingerID; 
}
