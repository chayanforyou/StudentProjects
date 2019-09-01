#include <TimerOne.h>
#include "display.h"

byte value1L1 = DASH, value2L1 = DASH, value3L1 = DASH;
byte value1L2 = DASH, value2L2 = DASH, value3L2 = DASH;
byte value1L3 = DASH, value2L3 = DASH;
byte value1L4 = DASH, value2L4 = DASH;
byte secL1, secL2, secL3, secL4;
bool second = false;
bool count1L1 = false;
bool count2L1 = false;
bool count1L2 = false;
bool count2L2 = false;
bool count1L3 = false;
bool count1L4 = false;

void setup() {
  Timer1.initialize(100000); 
  Timer1.attachInterrupt(oneSecond);
  displayInit();
}

void loop() {
  scanDisplay();
  
  if(!digitalRead(butt1L1)) {  //---------------- Line 1
    count1L1 = true;
    value1L1 = 0;
  }
  if(count1L1){
    digitalWrite(buzz, 1);
    if(second) {
      secL1++;
      digitalWrite(led3L1, digitalRead(led3L1) ^ 1);
      if(secL1 == 60){
        secL1 = 0;
        value1L1++;
        if(value1L1 > 99) value1L1 = 99;
      }
    }
  }
  if(!digitalRead(butt2L1)) {
    count1L1 = false;
    count2L1 = true;
    value2L1 = 0;
    value3L1 = 0;
    secL1 = 0;
    digitalWrite(buzz, 0);
  }
  if(count2L1){
    if(second) {
      digitalWrite(led1L1, digitalRead(led1L1) ^ 1);
      secL1++;
      if(secL1 == 60){
        secL1 = 0;
        value3L1++;
        if(value3L1 > 59) {
          value3L1 = 0;
          value2L1++;
        }
      }
    }
  }
  if(!digitalRead(butt3L1)) {
    count2L1 = false;
    digitalWrite(led1L1, 0);
    digitalWrite(led2L1, 1);
    secL1 = 0;
  }
  if(!digitalRead(butt4L1)) {
    value1L1 = DASH;
    value2L1 = DASH;
    value3L1 = DASH;
    digitalWrite(led2L1, 0);
  }
  //--------------------------------------------------- 

  if(!digitalRead(butt1L2)) {  //------------------- Line 2
    count1L2 = true;
    value1L2 = 0;
  }
  if(count1L2){
    digitalWrite(buzz, 1);
    if(second) {
      secL2++;
      digitalWrite(led3L2, digitalRead(led3L2) ^ 1);
      if(secL2 == 60){
        secL2 = 0;
        value1L2++;
        if(value1L2 > 99) value1L2 = 99;
      }
    }
  }
  if(!digitalRead(butt2L2)) {
    count1L2 = false;
    count2L2 = true;
    value2L2 = 0;
    value3L2 = 0;
    secL2 = 0;
    digitalWrite(buzz, 0);
  }
  if(count2L2){
    if(second) {
      digitalWrite(led1L2, digitalRead(led1L2) ^ 1);
      secL2++;
      if(secL2 == 60){
        secL2 = 0;
        value3L2++;
        if(value3L2 > 59) {
          value3L2 = 0;
          value2L2++;
        }
      }
    }
  }
  if(!digitalRead(butt3L2)) {
    count2L2 = false;
    digitalWrite(led1L2, 0);
    digitalWrite(led2L2, 1);
    secL2 = 0;
  }
  if(!digitalRead(butt4L2)) {
    value1L2 = DASH;
    value2L2 = DASH;
    value3L2 = DASH;
    digitalWrite(led2L2, 0);
  }
  //--------------------------------------------------- 

  if(!digitalRead(butt1L3)) {  //------------------- Line 3
    count1L3 = true;
    value1L3 = 0;
    value2L3 = 0;
  }
  if(count1L3){
    if(second) {
      digitalWrite(led1L3, digitalRead(led1L3) ^ 1);
      secL3++;
      if(secL3 == 60){
        secL3 = 0;
        value2L3++;
        if(value2L3 > 59) {
          value2L3 = 0;
          value1L3++;
        }
      }
    }
  }
  if(!digitalRead(butt2L3)) {
    count1L3 = false;
    digitalWrite(led1L3, 0);
    digitalWrite(led2L3, 1);
    secL3 = 0;
  }
  if(!digitalRead(butt3L3)) {
    value1L3 = DASH;
    value2L3 = DASH;
    digitalWrite(led2L3, 0);
  }
  //--------------------------------------------------- 

  if(!digitalRead(butt1L4)) {  //------------------- Line 4
    count1L4 = true;
    value1L4 = 0;
    value2L4 = 0;
  }
  if(count1L4){
    if(second) {
      digitalWrite(led1L4, digitalRead(led1L4) ^ 1);
      secL4++;
      if(secL4 == 60){
        secL4 = 0;
        value2L4++;
        if(value2L4 > 59) {
          value2L4 = 0;
          value1L4++;
        }
      }
    }
  }
  if(!digitalRead(butt2L4)) {
    count1L4 = false;
    digitalWrite(led1L4, 0);
    digitalWrite(led2L4, 1);
    secL4 = 0;
  }
  if(!digitalRead(butt3L4)) {
    value1L4 = DASH;
    value2L4 = DASH;
    digitalWrite(led2L4, 0);
  }
  //---------------------------------------------------
  second = false; 
}

void oneSecond(){
  static byte x;
  x++;
  if(x == 10){
    x = 0; 
    second = true;
  }
}

void scanDisplay(){
  sevenSegment(0, value1L1);
  sevenSegment(2, value2L1);
  sevenSegment(4, value3L1);
  
  sevenSegment(12, value1L3);
  sevenSegment(14, value2L3);
  
  sevenSegment(6, value1L2);
  sevenSegment(8, value2L2);
  sevenSegment(10, value3L2);

  sevenSegment(16, value1L4);
  sevenSegment(18, value2L4);
}
