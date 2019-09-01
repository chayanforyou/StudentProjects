#include <Keypad.h>
#include <LiquidCrystal.h>
#include <SoftwareSerial.h>

#define PASSDIGIT 6
const char password[PASSDIGIT] = "553311";

String pass1 = "12345";
String pass2 = "23456";
String pass3 = "34567";
String pass4 = "45678";

const int card_01[] = {2, 50, 49, 48, 48, 52, 69, 70, 70, 66, 54, 50, 54, 3}; 
const int card_02[] = {2, 50, 49, 48, 48, 52, 69, 68, 50, 56, 66, 51, 54, 3}; 
const int card_03[] = {2, 50, 49, 48, 48, 52, 70, 51, 69, 67, 69, 57, 69, 3}; 
const int card_04[] = {2, 50, 49, 48, 48, 53, 51, 48, 54, 67, 65, 66, 69, 3}; 

#define redLed1 37
#define redLed2 39
#define redLed3 41
#define redLed4 43
#define greenLed1 38
#define greenLed2 27
#define greenLed3 25
#define greenLed4 23
#define IR1 22
#define IR2 24
#define IR3 26
#define IR4 28
#define rly1 30
#define rly2 32
#define rly3 34
#define rly4 36

SoftwareSerial rfid(51, 53);
LiquidCrystal lcd(49, 45, 35, 33, 31, 29);

byte card[14];
byte x;
bool locked = false;

char hexaKeys[4][3] = {
  {'1','2','3'},
  {'4','5','6'},
  {'7','8','9'},
  {'*','0','#'}
};
byte rowPins[4] = {52, 50, 48, 46}; 
byte colPins[3] = {44, 42, 40}; 

Keypad keypad = Keypad( makeKeymap(hexaKeys), rowPins, colPins, 4, 3); 
char key;

void setup() {
  Serial.begin(9600);
  rfid.begin(9600);
  lcd.begin(16, 2);

  pinMode(redLed1, OUTPUT);
  pinMode(redLed2, OUTPUT);
  pinMode(redLed3, OUTPUT);
  pinMode(redLed4, OUTPUT);
  pinMode(greenLed1, OUTPUT);
  pinMode(greenLed2, OUTPUT);
  pinMode(greenLed3, OUTPUT);
  pinMode(greenLed4, OUTPUT);
  pinMode(IR1, INPUT);
  pinMode(IR2, INPUT);
  pinMode(IR3, INPUT);
  pinMode(IR4, INPUT);
  pinMode(rly1, OUTPUT);
  pinMode(rly2, OUTPUT);
  pinMode(rly3, OUTPUT);
  pinMode(rly4, OUTPUT);
}

void loop() {
  key = keypad.getKey();

  if(key == '*'){
    bool check = securityPass();
    if(check == true){
      lcd.clear();
      lcd.print("Password Matched");
      locked = !locked;
      delay(1000);
    }
    key = 0;
  }

  if(key == '#'){
    lcd.clear();
    lcd.print("Enter ID: ");
    lcd.setCursor(0, 1);
    delay(1000);
    char tmp = keypad.waitForKey();
    
    if(tmp == '1'){
      bool check = checkPassword(pass1);
      if(check == true){
        lcd.clear();
        lcd.print("Password Matched");
        digitalWrite(rly1, !digitalRead(rly1));
        delay(1000);
      }
      key = 0;
    } 
    else if(tmp == '2'){
      bool check = checkPassword(pass2);
      if(check == true){
        lcd.clear();
        lcd.print("Password Matched");
        digitalWrite(rly2, !digitalRead(rly2));
        delay(1000);
      }
      key = 0;
    }
    else if(tmp == '3'){
      bool check = checkPassword(pass3);
      if(check == true){
        lcd.clear();
        lcd.print("Password Matched");
        digitalWrite(rly3, !digitalRead(rly3));
        delay(1000);
      }
      key = 0;
    }
    else if(tmp == '4'){
      bool check = checkPassword(pass4);
      if(check == true){
        lcd.clear();
        lcd.print("Password Matched");
        digitalWrite(rly4, !digitalRead(rly4));
        delay(1000);
      }
      key = 0;
    }
  }
  
  if(locked == false) get_rfid();
  ledIndication();

  lcd.setCursor(0, 0); 
  lcd.print((String)"R: " + digitalRead(rly1) + digitalRead(rly2) 
                          + digitalRead(rly3) + digitalRead(rly4)
                + "  D: " + digitalRead(IR1) + digitalRead(IR2)
                          + digitalRead(IR3) + digitalRead(IR4));
  lcd.setCursor(0, 1);
  if(locked == true) lcd.print("RFID Disabled..");
  else lcd.print("RFID enabled..");
}

bool securityPass(){
  lcd.clear();
  lcd.print("Enter Pass:");

  bool matched = true;
  for(int x = 0; x < PASSDIGIT; x++){
    key = keypad.waitForKey();
    if(key != password[x]) {matched = false; break;}
    lcd.setCursor(x, 1);
    lcd.print(key);
  }
  return matched;
}

bool checkPassword(String pass){
  lcd.clear();
  lcd.print("Enter Pass:");
  byte l = pass.length();

  bool matched = true;
  for(int x = 0; x < l; x++){
    key = keypad.waitForKey();
    if(key != pass[x]) {matched = false; break;}
    lcd.setCursor(x, 1);
    lcd.print(key);
  }
  return matched;
}

void ledIndication(){
  if(digitalRead(IR1)) {digitalWrite(redLed1, 1); digitalWrite(greenLed1, 0);}
  else {digitalWrite(redLed1, 0); digitalWrite(greenLed1, 1);}
  if(digitalRead(IR2)) {digitalWrite(redLed2, 1); digitalWrite(greenLed2, 0);}
  else {digitalWrite(redLed2, 0); digitalWrite(greenLed2, 1);}
  if(digitalRead(IR3)) {digitalWrite(redLed3, 1); digitalWrite(greenLed3, 0);}
  else {digitalWrite(redLed3, 0); digitalWrite(greenLed3, 1);}
  if(digitalRead(IR4)) {digitalWrite(redLed4, 1); digitalWrite(greenLed4, 0);}
  else {digitalWrite(redLed4, 0); digitalWrite(greenLed4, 1);}
}

void get_rfid(){
  byte id = 0;
  bool newCard = false;
  static int temp[14];
  static bool idSuccess;
  
  if(rfid.available() > 0){
    if(idSuccess == true) {
      for(int x = 0; x < rfid.available(); x++) rfid.read();
      return;
    }
    
    for(int x = 0; x < 14; x++) {
      temp[x] = rfid.read();
      delay(10);
    } 

    if(temp[0] == 2 && temp[13] == 3) idSuccess = true;
    //for(int x = 0; x < 14; x++) if(temp[x] != card[x]) newCard = true;
    
    //if(newCard == true){
      for(int x = 0; x < 14; x++){
        card[x] = temp[x];
        Serial.print(card[x]);
        Serial.print(", ");
      }
      Serial.println();
      //Serial.println(match_card());
    //}
    id = match_card();
    if(id == 1) digitalWrite(rly1, !digitalRead(rly1)); 
    if(id == 2) digitalWrite(rly2, !digitalRead(rly2)); 
    if(id == 3) digitalWrite(rly3, !digitalRead(rly3)); 
    if(id == 4) digitalWrite(rly4, !digitalRead(rly4));
    delay(500);
  }
  else idSuccess = false;
}

byte match_card(){
  byte matched;
  
  matched = 1;
  for(int x = 0; x < 14; x++) if(card_01[x] != card[x]) {matched = 0; break;}
  if(matched != 0) return matched;
  
  matched = 2;
  for(int x = 0; x < 14; x++) if(card_02[x] != card[x]) {matched = 0; break;}
  if(matched != 0) return matched;
  
  matched = 3;
  for(int x = 0; x < 14; x++) if(card_03[x] != card[x]) {matched = 0; break;}
  if(matched != 0) return matched;
  
  matched = 4;
  for(int x = 0; x < 14; x++) if(card_04[x] != card[x]) {matched = 0; break;}
  if(matched != 0) return matched;
  return matched;
}
