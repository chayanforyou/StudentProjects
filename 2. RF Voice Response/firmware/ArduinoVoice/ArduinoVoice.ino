#include <SoftwareSerial.h>
#include "VoiceRecognitionV3.h"

VR myVR(2,3);    // 2:RX 3:TX, you can choose your favourite pins.

uint8_t records[7]; // save record
uint8_t buf[64];

int light_pin = 4;
int fan_pin = 5;
int ac_pin = 6;
int help_pin = 9;
boolean flag = false;

#define lon    (0)
#define loff   (1)
#define fon    (2)
#define foff   (3)
#define acon   (4)
#define acoff  (5)
#define help   (6)

void printSignature(uint8_t *buf, int len){
  int i;
  for(i=0; i<len; i++){
    if(buf[i]>0x19 && buf[i]<0x7F){
      Serial.write(buf[i]);
    }
    else{
      Serial.print("[");
      Serial.print(buf[i], HEX);
      Serial.print("]");
    }
  }
}

/**
  @brief   Print signature, if the character is invisible, 
           print hexible value instead.
  @param   buf  -->  VR module return value when voice is recognized.
             buf[0]  -->  Group mode(FF: None Group, 0x8n: User, 0x0n:System
             buf[1]  -->  number of record which is recognized. 
             buf[2]  -->  Recognizer index(position) value of the recognized record.
             buf[3]  -->  Signature length
             buf[4]~buf[n] --> Signature
*/
void printVR(uint8_t *buf){
  Serial.println("VR Index\tGroup\tRecordNum\tSignature");

  Serial.print(buf[2], DEC);
  Serial.print("\t\t");

  if(buf[0] == 0xFF){
    Serial.print("NONE");
  }
  else if(buf[0]&0x80){
    Serial.print("UG ");
    Serial.print(buf[0]&(~0x80), DEC);
  }
  else{
    Serial.print("SG ");
    Serial.print(buf[0], DEC);
  }
  Serial.print("\t");

  Serial.print(buf[1], DEC);
  Serial.print("\t\t");
  if(buf[3]>0){
    printSignature(buf+4, buf[3]);
  }
  else{
    Serial.print("NONE");
  }
  Serial.println("\r\n");
}

void setup(){
  /** initialize */
  myVR.begin(9600);
  
  Serial.begin(115200);
  Serial.println("Elechouse Voice Recognition V3 Module\r\nControl LED sample");
  
  pinMode(light_pin, OUTPUT);
  pinMode(fan_pin, OUTPUT);
  pinMode(ac_pin, OUTPUT);
  pinMode(help_pin, OUTPUT);
    
  if(myVR.clear() == 0){
    Serial.println("Recognizer cleared.");
  }else{
    Serial.println("Not find VoiceRecognitionModule.");
    Serial.println("Please check connection and restart Arduino.");
    while(1);
  }
  
  if(myVR.load((uint8_t)lon) >= 0){
    Serial.println("Light On loaded");
  }
  
  if(myVR.load((uint8_t)loff) >= 0){
    Serial.println("Light off loaded");
  }
  if(myVR.load((uint8_t)fon) >= 0){
    Serial.println("Fan On loaded");
  }
  if(myVR.load((uint8_t)foff) >= 0){
    Serial.println("Fan Off loaded");
  }
  if(myVR.load((uint8_t)acon) >= 0){
    Serial.println("AC On loaded");
  }
  if(myVR.load((uint8_t)acoff) >= 0){
    Serial.println("AC Off loaded");
  }
  if(myVR.load((uint8_t)help) >= 0){
    Serial.println("Help loaded");
  }
}

void loop(){
  int ret;
  ret = myVR.recognize(buf, 50);
  if(ret>0){
    switch(buf[1]){
      case lon:
        digitalWrite(light_pin, HIGH);
        break;
      case loff:
        digitalWrite(light_pin, LOW);
        break;
      case fon:
        digitalWrite(fan_pin, HIGH);
        break;
      case foff:
        digitalWrite(fan_pin, LOW);
        break;
      case acon:
        digitalWrite(ac_pin, HIGH);
        break;
      case acoff:
        digitalWrite(ac_pin, LOW);
        break;
      case help:
        digitalWrite(help_pin, HIGH);
        flag = true;
        break;
      default:
        Serial.println("Record function undefined");
        break;
    }
    /** voice recognized */
    printVR(buf);
    if(flag == true){
      delay(2500);
      digitalWrite(help_pin, LOW);
      flag = false;
      }
  }
}



