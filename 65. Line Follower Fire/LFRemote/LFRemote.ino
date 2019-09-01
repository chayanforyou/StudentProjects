#include <VirtualWire.h>

const int led_pin = 13;
const int transmit_pin = 12;

#define up     7
#define down   2
#define left   4
#define right  3
#define center 5

void setup() {
   Serial.begin(9600);
   vw_set_tx_pin(transmit_pin);
   vw_set_ptt_inverted(true); 
   vw_setup(2000);     
   pinMode(led_pin, OUTPUT);

   pinMode(up, INPUT_PULLUP);
   pinMode(down, INPUT_PULLUP);
   pinMode(left, INPUT_PULLUP);
   pinMode(right, INPUT_PULLUP);
   pinMode(center, INPUT_PULLUP);
}

void loop() {
  if(!digitalRead(up)){
    Serial.println("UP");
    vw_send("R1", 2);
    vw_wait_tx();
  }
  if(!digitalRead(down)){
    Serial.println("DOWN");
    vw_send("R2", 2);
    vw_wait_tx();
  }
  if(!digitalRead(left)){
    Serial.println("LEFT");
    vw_send("R3", 2);
    vw_wait_tx();
  }
  if(!digitalRead(right)){
    Serial.println("RIGHT");
    vw_send("R4", 2);
    vw_wait_tx();
  }
  if(!digitalRead(center)){
    Serial.println("CENTER");
    vw_send("R5", 2);
    vw_wait_tx();
  }
}
