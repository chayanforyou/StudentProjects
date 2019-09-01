#include <Servo.h>
#include <SoftwareSerial.h>

SoftwareSerial bt(4, 3);

#define pwm 12
#define motor1a 9
#define motor1b 8
#define motor2a 11
#define motor2b 10

Servo servo1, servo2;

char rd;
byte s1 = 1, s2 = 90;

void setup() {
  Serial.begin(9600);
  bt.begin(9600);

  servo1.attach(6);
  servo2.attach(7);

  pinMode(motor1a, OUTPUT);
  pinMode(motor1b, OUTPUT);
  pinMode(motor2a, OUTPUT);
  pinMode(motor2b, OUTPUT);
  pinMode(pwm, OUTPUT);

  digitalWrite(pwm, 1);
  
  servo1.write(s1);
  delay(20);
  servo2.write(s2);
  delay(20);
}

void loop() {
  if(Serial.available()){
    rd = Serial.read();
    Serial.println(rd);

    if(rd == 'F') forward();
    else if(rd == 'B') backward();
    else if(rd == 'L') left();
    else if(rd == 'R') right(); 
    else if(rd == 'S') STOP();
    
    else if(rd == 'V') servoUp(); 
    else if(rd == 'v') servoDown(); 
    else if(rd == 'X') servoOpen(); 
    else if(rd == 'x') servoClose(); 
  }

  if(bt.available()){
    rd = bt.read();
    bt.println(rd);
    Serial.println(rd);

    if(rd == 'F') forward();
    else if(rd == 'B') backward();
    else if(rd == 'L') left();
    else if(rd == 'R') right(); 
    else if(rd == 'S') STOP();
    
    else if(rd == 'V') servoUp(); 
    else if(rd == 'v') servoDown(); 
    else if(rd == 'X') servoOpen(); 
    else if(rd == 'x') servoClose();
  }
}

void forward(){
  digitalWrite(motor1a, 1);
  digitalWrite(motor1b, 0);
  digitalWrite(motor2a, 1);
  digitalWrite(motor2b, 0);
}

void backward(){
  digitalWrite(motor1a, 0);
  digitalWrite(motor1b, 1);
  digitalWrite(motor2a, 0);
  digitalWrite(motor2b, 1);
}

void left(){
  digitalWrite(motor1a, 1);
  digitalWrite(motor1b, 0);
  digitalWrite(motor2a, 0);
  digitalWrite(motor2b, 0);
}

void right(){
  digitalWrite(motor1a, 0);
  digitalWrite(motor1b, 0);
  digitalWrite(motor2a, 1);
  digitalWrite(motor2b, 0);
}

void STOP(){
  digitalWrite(motor1a, 0);
  digitalWrite(motor1b, 0);
  digitalWrite(motor2a, 0);
  digitalWrite(motor2b, 0);
}

void servoUp(){
  if(s1 < 100) s1+=5;
  servo1.write(s1);
  delay(10);
}

void servoDown(){
  if(s1 > 1) s1-=5;
  servo1.write(s1);
  delay(10);
}

void servoOpen(){
  if(s2 > 1) s2-=5;
  servo2.write(s2);
  delay(10);
}

void servoClose(){
  if(s2 < 90) s2+=5;
  servo2.write(s2);
  delay(10);
}
