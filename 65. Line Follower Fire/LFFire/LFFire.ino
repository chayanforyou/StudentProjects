#include <SoftwareSerial.h>
#include <SoftPWM.h>

SoftwareSerial bt(2, 3);

#define ENA     6
#define ENB     5
#define motor1A 10
#define motor1B 9
#define motor2A 8
#define motor2B 7
#define fire    13
#define relay   4
#define leftIR   12
#define rightIR  11
#define led1     A0
#define led2     A1
#define led3     A2

#define forward 1
#define left    2
#define right   3
#define stop    0

byte c = 0;
int adc1, adc2;
bool manual = false, backward = false;

#define SPEED 25

void setup() {
  Serial.begin(9600);
  bt.begin(9600);

  pinMode(leftIR, INPUT);
  pinMode(rightIR, INPUT);
  pinMode(ENB, OUTPUT);
  pinMode(motor1A, OUTPUT);
  pinMode(motor1B, OUTPUT);
  pinMode(motor2A, OUTPUT);
  pinMode(motor2B, OUTPUT);
  pinMode(relay, OUTPUT);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(fire, INPUT);

  SoftPWMBegin();

  SoftPWMSet(ENA, 0);
  SoftPWMSet(ENB, 0);

  SoftPWMSetFadeTime(ENA, 10, 10);
  SoftPWMSetFadeTime(ENB, 10, 10);
}

void loop() {
  if(bt.available()){
    char x = bt.read();
    bt.println(x);

    if(x == 's') {c = 0; clearBuff();}
    else if(x == 'f') {c = 1; clearBuff();}
    else if(x == 'l') {c = 2; clearBuff();}
    else if(x == 'r') {c = 3; clearBuff();}
    else if(x == 'm') {c = 4; clearBuff();}

    if(x == '1') {
      digitalWrite(led1, 1);
      path1();
      digitalWrite(led1, 0);
    }
    else if(x == '2') {
      digitalWrite(led2, 1);
      path1();
      digitalWrite(led2, 0);
    }
    else if(x == '3') {
      digitalWrite(led3, 1);
      path1();
      digitalWrite(led3, 0);
    }
    
    if(x == '4') {
      digitalWrite(led1, 1);
      path2();
      digitalWrite(led1, 0);
    }
    else if(x == '5') {
      digitalWrite(led2, 1);
      path2();
      digitalWrite(led2, 0);
    }
    else if(x == '6') {
      digitalWrite(led3, 1);
      path2();
      digitalWrite(led3, 0);
    }
  }
  moveCar(c);
}

void clearBuff(){
  while(bt.available()) char x = bt.read();
}

void path1(){
  bool cp = false;
  while(left_IR() && right_IR()) moveCar(forward);
  while(1){ 
    if(!left_IR() && !right_IR()) moveCar(forward);
    else if(left_IR() && !right_IR()) moveCar(right);
    else if(!left_IR() && right_IR()) moveCar(left);
    else if(left_IR() && right_IR() && !cp) {
      cp = true;
      moveCar(stop);
      delay(1000);      
      for(int i = 0; i < 3000; i++) moveCar(left);  // adjust time
    }
    else if(left_IR() && right_IR() && cp){  
      moveCar(stop);
      digitalWrite(relay, 1);
      delay(5000); 
      digitalWrite(relay, 0);
      break;
    }
  }
}

void path2(){
  bool cp = false;
  while(left_IR() && right_IR()) moveCar(forward);
  while(1){ 
    if(!left_IR() && !right_IR()) moveCar(forward);
    else if(left_IR() && !right_IR()) moveCar(right);
    else if(!left_IR() && right_IR()) moveCar(left);
    else if(left_IR() && right_IR() && !cp) {
      cp = true;
      moveCar(stop);
      delay(1000);      
      for(int i = 0; i < 3000; i++) moveCar(right);  // adjust time
    }
    else if(left_IR() && right_IR() && cp){
      moveCar(stop);
      digitalWrite(relay, 1);
      delay(5000); 
      digitalWrite(relay, 0);
      break;
    }
  }
}

bool left_IR() {return digitalRead(leftIR);}
bool right_IR() {return digitalRead(rightIR);}

void moveCar(byte dir){
  PWM(SPEED);
  if(dir == 0) STOP();
  else if(dir == 1) Forward();
  else if(dir == 2) Left();
  else if(dir == 3) Right();
  else if(dir == 4){
    digitalWrite(relay, !digitalRead(relay));
    c = 0;
  } 
}

void PWM(byte s){
  SoftPWMSet(ENA, s);
  SoftPWMSet(ENB, s);
}

void Forward(){
  digitalWrite(motor1A, 1);
  digitalWrite(motor1B, 0);
  digitalWrite(motor2A, 1);
  digitalWrite(motor2B, 0);
}

void Left(){
  digitalWrite(motor1A, 1);
  digitalWrite(motor1B, 0);
  digitalWrite(motor2A, 0);
  digitalWrite(motor2B, 0);
}

void Right(){
  digitalWrite(motor1A, 0);
  digitalWrite(motor1B, 0);
  digitalWrite(motor2A, 1);
  digitalWrite(motor2B, 0);
}

void STOP(){
  digitalWrite(motor1A, 0);
  digitalWrite(motor1B, 0);
  digitalWrite(motor2A, 0);
  digitalWrite(motor2B, 0);
}
