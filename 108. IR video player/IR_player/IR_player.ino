#include <IRremote.h>

#define pir1 4
#define pir2 6
#define IR 5
#define led 13

int khz = 38;
IRsend irsend;

unsigned int  seekVid[67] = {8950,4400, 600,1650, 600,550, 550,550, 600,550, 550,600, 550,550, 550,600, 550,550, 600,550, 550,1700, 550,1700, 550,1650, 600,1650, 600,1650, 550,1700, 550,1700, 550,1700, 550,550, 600,1650, 550,550, 550,1700, 600,550, 550,1700, 550,550, 600,550, 550,1700, 550,550, 600,1650, 550,600, 550,1700, 550,550, 600,1650, 550};
unsigned int  playVid[67] = {8900,4450, 550,1700, 550,550, 600,550, 550,600, 550,550, 550,600, 550,550, 600,550, 550,550, 600,1650, 600,1650, 550,1700, 550,1700, 550,1650, 600,1650, 600,1650, 550,600, 550,1700, 550,550, 550,1700, 550,1700, 550,550, 600,1650, 550,600, 550,1650, 600,550, 550,1700, 550,550, 600,550, 550,1700, 550,550, 600,1650, 600}; 

bool check_PIR_flag;

void setup() {
  Serial.begin(9600);
  pinMode(pir1, INPUT);
  pinMode(pir2, INPUT);
  pinMode(IR, INPUT);
  pinMode(led, OUTPUT); 
  check_PIR_flag = false;
}

void loop() {
  if(digitalRead(IR) == HIGH) {   //change this to "HIGH"
    check_PIR_flag = true;
    while(digitalRead(pir1) == LOW || digitalRead(pir2) == LOW);
  }
  
  if(check_PIR_flag == true){
    irsend.sendRaw(playVid, sizeof(playVid) / sizeof(playVid[0]), khz);
    Serial.println("Video Playing..");
    
    while(digitalRead(pir1) == HIGH || digitalRead(pir2) == HIGH){
      Serial.println("Motion Detected.");
      digitalWrite(led, HIGH);
      delay(100);
    }
    if(digitalRead(pir1) == LOW && digitalRead(pir2) == LOW) {
      irsend.sendRaw(playVid, sizeof(playVid) / sizeof(playVid[0]), khz);
      Serial.println("Video Stopped.");
      
      for (int i = 0; i < 40; i++){
        irsend.sendRaw(seekVid, sizeof(seekVid) / sizeof(seekVid[0]), khz);
        delay(1);
      }
      
      check_PIR_flag = false;
      Serial.println("No Motion.");
      digitalWrite(led, LOW);
    }
  }
}
