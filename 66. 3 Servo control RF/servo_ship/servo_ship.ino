#include <VirtualWire.h>

const int receive_pin = 11;

#define servo1 A3
#define servo2 A2 
#define servo3 A1

#define M1A 2
#define M1B 3
#define M2A 4
#define M2B 5
#define M3A 6
#define M3B 7
#define M4A 8
#define M4B 9

#define PWM 10

#define CAR_SPEED 100

int action = 0, s1 = 0, s2 = 0, s3 = 0;

void setup() {
  Serial.begin(9600);

  pinMode(servo1, OUTPUT);
  pinMode(servo2, OUTPUT);
  pinMode(servo3, OUTPUT);
  
  pinMode(M1A, OUTPUT);
  pinMode(M1B, OUTPUT);
  pinMode(M2A, OUTPUT);
  pinMode(M2B, OUTPUT);
  pinMode(M3A, OUTPUT);
  pinMode(M3B, OUTPUT);
  pinMode(M4A, OUTPUT);
  pinMode(M4B, OUTPUT);
  pinMode(PWM, OUTPUT);
  
  vw_set_rx_pin(receive_pin);
  vw_set_ptt_inverted(true);
  vw_setup(2000);  

  vw_rx_start(); 

  //servo(servo1, 0);
  //servo(servo2, 0);
  //servo(servo3, 0);

  Serial.print("Started... SPEED: ");
  Serial.println(CAR_SPEED);
}

void loop() {
  char buf[VW_MAX_MESSAGE_LEN];
  uint8_t buflen = VW_MAX_MESSAGE_LEN;
  String rxd;
  
  if (vw_get_message(buf, &buflen)) {
    //Serial.println((String)buf);

    rxd = (String)buf;
    if(rxd.indexOf("NUL") != -1);
    else if(rxd.indexOf("J11") != -1) {
      if(s1 < 180) s1++; 
      servo(servo1, s1);
      Serial.println((String)"Servo 1 Angle: " + s1);
    }
    else if(rxd.indexOf("J12") != -1) {
      if(s1 != 0) s1--; 
      servo(servo1, s1);
      Serial.println((String)"Servo 1 Angle: " + s1);
    }

    else if(rxd.indexOf("J13") != -1) {
      if(s2 < 180) s2++; 
      servo(servo2, s2);
      Serial.println((String)"Servo 2 Angle: " + s2);
    }
    else if(rxd.indexOf("J14") != -1) {
      if(s2 != 0) s2--; 
      servo(servo2, s2);
      Serial.println((String)"Servo 2 Angle: " + s2);
    }

    else if(rxd.indexOf("J21") != -1) {
      if(s3 < 180) s3++; 
      servo360(servo3, s3);
      Serial.println((String)"Servo 3 Angle: " + s3);
    }
    else if(rxd.indexOf("J22") != -1) {
      if(s3 != 0) s3--; 
      servo360(servo3, s3);
      Serial.println((String)"Servo 3 Angle: " + s3);
    }

    else if(rxd.indexOf("J31") != -1) {
      left();
      Serial.println("--- LEFT ---");
    }
    else if(rxd.indexOf("J32") != -1) {
      right();
      Serial.println("--- RIGHT ---");
    }
    else if(rxd.indexOf("J33") != -1) {
      forward();
      Serial.println("--- FORWARD ---");
    }
    else if(rxd.indexOf("J34") != -1) {
      backward();
      Serial.println("--- BACKWARD ---");
    }
  }
  analogWrite(PWM, CAR_SPEED);
}

void forward(){
  digitalWrite(M1A, 1);
  digitalWrite(M1B, 0);

  digitalWrite(M2A, 1);
  digitalWrite(M2B, 0);

  digitalWrite(M3A, 1);
  digitalWrite(M3B, 0);

  digitalWrite(M4A, 1);
  digitalWrite(M4B, 0);
}

void backward(){
  digitalWrite(M1A, 0);
  digitalWrite(M1B, 1);

  digitalWrite(M2A, 0);
  digitalWrite(M2B, 1);

  digitalWrite(M3A, 0);
  digitalWrite(M3B, 1);

  digitalWrite(M4A, 0);
  digitalWrite(M4B, 1);
}

void left(){
  digitalWrite(M1A, 0);
  digitalWrite(M1B, 1);

  digitalWrite(M2A, 0);
  digitalWrite(M2B, 1);

  digitalWrite(M3A, 0);
  digitalWrite(M3B, 0);

  digitalWrite(M4A, 0);
  digitalWrite(M4B, 0);
}

void right(){
  digitalWrite(M1A, 0);
  digitalWrite(M1B, 0);

  digitalWrite(M2A, 0);
  digitalWrite(M2B, 0);

  digitalWrite(M3A, 0);
  digitalWrite(M3B, 1);

  digitalWrite(M4A, 0);
  digitalWrite(M4B, 1);
}

void STOP(){
  digitalWrite(M1A, 0);
  digitalWrite(M1B, 0);

  digitalWrite(M2A, 0);
  digitalWrite(M2B, 0);

  digitalWrite(M3A, 0);
  digitalWrite(M3B, 0);

  digitalWrite(M4A, 0);
  digitalWrite(M4B, 0);  
}

void servo(byte s, byte a){
  int angle = map(a, 0, 180, 1000, 2000);
  digitalWrite(s, 1);
  delayMicroseconds(angle);
  digitalWrite(s, 0);
  delayMicroseconds(20000 - angle);
}

void servo360(byte s, int a){
  int angle = map(a, 0, 360, 0, 3000);
  digitalWrite(s, 1);
  delayMicroseconds(angle);
  digitalWrite(s, 0);
  delayMicroseconds(20000 - angle);
}

