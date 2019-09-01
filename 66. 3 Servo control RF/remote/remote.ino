#include <VirtualWire.h>

const int transmit_pin = 12;

int joy1x, joy1y, joy2x, joy2y, joy3x, joy3y;
byte joy1, joy2, joy3;

void setup() {
  Serial.begin(9600);

  vw_set_tx_pin(transmit_pin);
  vw_set_ptt_inverted(true);
  vw_setup(2000);
}

void loop() {
  readJoy();

  if(joy1 == 1) {
    char msg[] = "J11";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }
  else if(joy1 == 2){
    char msg[] = "J12";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }
  else if(joy1 == 3){
    char msg[] = "J13";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }
  else if(joy1 == 4){
    char msg[] = "J14";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }

  else if(joy2 == 1) {
    char msg[] = "J21";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }
  else if(joy2 == 2){
    char msg[] = "J22";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }
  else if(joy2 == 3){
    char msg[] = "J23";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }
  else if(joy2 == 4){
    char msg[] = "J24";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }

  else if(joy3 == 1) {
    char msg[] = "J31";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }
  else if(joy3 == 2){
    char msg[] = "J32";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }
  else if(joy3 == 3){
    char msg[] = "J33";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }
  else if(joy3 == 4){
    char msg[] = "J34";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }

  else{
    char msg[] = "NULL";
    Serial.println(msg);
    vw_send(msg, 3);
    vw_wait_tx();
  }
}

void readJoy(){
  joy1x = analogRead(A1);
  joy1y = analogRead(A0);
  joy2x = analogRead(A3);
  joy2y = analogRead(A2);
  joy3x = analogRead(A4);
  joy3y = analogRead(A5);

  if(joy1x > 900) joy1 = 1;
  else if(joy1x < 100) joy1 = 2;
  else if(joy1y < 100) joy1 = 3;
  else if(joy1y > 900) joy1 = 4;
  else joy1 = 0;

  if(joy2x > 900) joy2 = 1;
  else if(joy2x < 100) joy2 = 2;
  else if(joy2y < 100) joy2 = 3;
  else if(joy2y > 900) joy2 = 4;
  else joy2 = 0;

  if(joy3x > 900) joy3 = 1;
  else if(joy3x < 100) joy3 = 2;
  else if(joy3y < 100) joy3 = 3;
  else if(joy3y > 900) joy3 = 4;
  else joy3 = 0;

  //Serial.println((String)"JOY1: " + joy1 + "\tJOY2: " + joy2+ "\tJOY3: " + joy3);
  //delay(500);
}

