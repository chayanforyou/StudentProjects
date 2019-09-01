#include <EEPROM.h>
#include <SoftwareSerial.h>

#define locker 2
#define buzzer 3
#define lock_led 10
#define status_led 11

SoftwareSerial wifi(9, 8);

String rxd;

void setup() {
  Serial.begin(9600);
  wifi.begin(9600);
 
  pinMode(locker, OUTPUT);
  pinMode(buzzer, OUTPUT);
  pinMode(lock_led, OUTPUT);
  pinMode(status_led, OUTPUT);

  //------------------------------ configuration
  wifi.println("ATE0");
  delay(1000);
  wifi.println("AT+CWMODE=2");
  delay(1000);
  wifi.println((String)"AT+CWSAP=" + "\"Bike Security\"," + "\"12345678\",5,3");
  delay(1000);
  wifi.println((String)"AT+CIPAP=\"" + "192.168.10.10\"");
  delay(1000);
  wifi.println("AT+CIPMUX=1");
  delay(1000);
  wifi.println("AT+CIPSERVER=1,80");
  delay(1000);

  digitalWrite(locker, EEPROM.read(0));
  digitalWrite(lock_led, EEPROM.read(0));
}

void loop() {
  if (wifi.available()) {
    rxd = wifi.readString();
    Serial.println(rxd);
    
    if(rxd.indexOf("LOCK_ID00001") != -1){
      if(digitalRead(locker) == 0){
        Serial.println("Bike is Unlocked.");
        digitalWrite(lock_led, HIGH);
        digitalWrite(locker, HIGH);
        EEPROM.write(0, 1);
        rxd = "";
      }
      else{
        Serial.println("Bike is locked.");
        digitalWrite(lock_led, LOW);
        digitalWrite(locker, LOW);
        EEPROM.write(0, 0);
        rxd = "";
      }
    }
    if(rxd.indexOf("ALARM") != -1){
      digitalWrite(buzzer, HIGH);
      digitalWrite(status_led, HIGH);
      delay(2000);
      digitalWrite(buzzer, LOW);
      digitalWrite(status_led, LOW);
    }
  }
}
