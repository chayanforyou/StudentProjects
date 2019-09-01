#include <SoftwareSerial.h>

#define fire1 9
#define fire2 13
#define butt1 8
#define butt2 7

SoftwareSerial bt(10, 11);

int adc1 = 1000, adc2 = 1000, timer = 0;
bool flag = false;

void setup() {
  Serial.begin(9600);
  bt.begin(9600);
     
  pinMode(fire1, INPUT_PULLUP); 
  pinMode(fire2, INPUT_PULLUP);
  pinMode(butt1, INPUT_PULLUP);
  pinMode(butt2, INPUT_PULLUP);

  while(adc1 > 700){
    adc1 = analogRead(A1);
    Serial.println((String)"Please wait.. Smoke sensor 1 isn't ready. Value: " + adc1);
    delay(3000);
  }
  while(adc2 > 400){
    adc2 = analogRead(A0);
    Serial.println((String)"Please wait.. Smoke sensor 2 isn't ready. Value: " + adc2);
    delay(3000);
  }
}

void loop() {
  readSensor();
  if(flag) timer++;

  if(timer > 200) {
    timer = 0; 
    flag = false;
  }
}

void readSensor(){
  adc1 = analogRead(A1);
  adc2 = analogRead(A0);

   //-------------------------------------------------------
  Serial.println((String)"G1: " + adc1 
                     + "\tG2: " + adc2 
                     + "\tF1: " + digitalRead(fire1) 
                     + "\tF2: " + digitalRead(fire2) 
                     + "\tB1: " + digitalRead(butt1) 
                     + "\tB2: " + digitalRead(butt2)
                     + "\tT: " + timer);  
  //--------------------------------------------------------- 

  if(flag == false){
    if(adc1 > 800){
      bt.print("1");
      Serial.println("***** GAS 1 detected *****");
      delay(500);
      flag = true;
    }
    if(adc2 > 800){
      bt.print("4");
      Serial.println("***** GAS 2 detected *****");
      delay(500);
      flag = true;
    }
    if(!digitalRead(fire1)){
      bt.print("2");
      Serial.println("***** Fire 1 detected *****");
      delay(500);
      flag = true;
    }
    if(!digitalRead(fire2)){
      bt.print("5");
      Serial.println("***** Fire 2 detected *****");
      delay(500);
      flag = true;
    }
    if(!digitalRead(butt1)){
      bt.print("3");
      Serial.println("***** Butt 1 detected *****");
      delay(500);
      flag = true;
    }
    if(!digitalRead(butt2)){
      bt.print("6");
      Serial.println("***** Butt 2 detected *****");
      delay(500);
      flag = true;
    }
  }
  delay(200);                                
}

