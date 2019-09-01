#include <Adafruit_Fingerprint.h>
#include <SoftwareSerial.h>

#define buzz   A3
#define locker A2

SoftwareSerial mySerial(2, 3);
Adafruit_Fingerprint finger = Adafruit_Fingerprint(&mySerial);

int id = 0;

void setup() {
  Serial.begin(9600);
  finger.begin(57600);

  pinMode(buzz, OUTPUT);
  pinMode(locker, OUTPUT);

  delay(1000);
}

void loop() {
  id = getFingerprintIDez();

  if(id >= 1 && id <= 4){
    digitalWrite(locker, !digitalRead(locker));
    Serial.println((String)"Relay state: " + digitalRead(locker));
    digitalWrite(buzz, 1);
    delay(500);
    digitalWrite(buzz, 0);
  }
}

int getFingerprintIDez() {
  uint8_t p = finger.getImage();
  if (p != FINGERPRINT_OK)  return -1;

  p = finger.image2Tz();
  if (p != FINGERPRINT_OK)  return -1;

  p = finger.fingerFastSearch();
  if (p != FINGERPRINT_OK)  return -1;
  
  // found a match!
  Serial.print("Found ID #"); Serial.println(finger.fingerID); 
  return finger.fingerID; 
}
