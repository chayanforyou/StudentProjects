#include <Adafruit_Fingerprint.h>
#include <Keypad.h>
#include <SoftwareSerial.h>

#define reed 8
#define vibration 7
#define motion 6

#define PASS_DIGIT 6

SoftwareSerial fingerModule(5, 4);
SoftwareSerial com(10, 9);

Adafruit_Fingerprint finger = Adafruit_Fingerprint(&fingerModule);

const byte rows = 4; 
const byte cols = 3;
char keys[rows][cols] = {
  {'1','2','3'},
  {'4','5','6'},
  {'7','8','9'},
  {'*','0','#'}
};
byte rowPins[rows] = {A3, A2, A1, A0}; 
byte colPins[cols] = {13, 12, 11};
Keypad keypad = Keypad( makeKeymap(keys), rowPins, colPins, rows, cols );
char key;

void setup() {
  Serial.begin(9600);
  com.begin(9600);
  finger.begin(9600);
  pinMode(reed, INPUT);
  pinMode(vibration, INPUT);
  pinMode(motion, INPUT);

  if (finger.verifyPassword()) Serial.println("Found fingerprint sensor!");
  else Serial.println("Did not find fingerprint sensor.");
}

void write_input(){
  com.print("A");
  if(digitalRead(reed) == HIGH) com.print("0");
  else com.print("1");

  com.print("B");
  if(digitalRead(vibration) == HIGH) com.print("1");
  else com.print("0");

  com.print("C");
  if(digitalRead(motion) == HIGH) com.print("1");
  else com.print("0");

  com.print("D");
  key = keypad.getKey();
  if(key) com.print(key);
  else com.print("N");

  delay(100);
}

int getFingerprintID() {
  uint8_t p = finger.getImage();
  if (p != FINGERPRINT_OK)  return -1;

  p = finger.image2Tz();
  if (p != FINGERPRINT_OK)  return -1;

  p = finger.fingerFastSearch();
  if (p != FINGERPRINT_OK)  return -1;
  
  Serial.print("Found ID #"); 
  Serial.println(finger.fingerID); 
  return finger.fingerID; 
}

void security(){
  while(key != '#') write_input();  //person 1
  key = 0;
  
  char ID = getFingerprintID(); 
  if(ID != -1) com.print(ID, DEC);
  else {com.print("N"); return;}

  while(key != '#') write_input();  //person 2
  key = 0;
  
  ID = getFingerprintID(); 
  if(ID != -1) com.print(ID, DEC);
  else {com.print("N"); return;}

  while(key != '#') write_input();  //person 3
  key = 0;
  
  ID = getFingerprintID(); 
  if(ID != -1) com.print(ID, DEC);
  else {com.print("N"); return;}

  for(int x = 1; x <= PASS_DIGIT; x++){
    key = keypad.waitForKey();
    com.print(key);
  }
}

void loop() { 
  write_input();

  if(key == '*') security();
}
