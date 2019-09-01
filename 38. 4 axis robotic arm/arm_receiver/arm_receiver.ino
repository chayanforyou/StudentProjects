#include <SoftwareSerial.h>
#include <VirtualWire.h>

const byte receive_pin = 12;
const byte led = 13;
SoftwareSerial serial(7,8);

char cmd[VW_MAX_MESSAGE_LEN];
uint8_t buflen = VW_MAX_MESSAGE_LEN;

void setup() {
  Serial.begin(9600);
  serial.begin(9600);

  vw_set_rx_pin(receive_pin);
  vw_set_ptt_inverted(true);
  vw_setup(2000);   
  vw_rx_start();       

  pinMode(led, OUTPUT);
}

void loop() {
  digitalWrite(led, LOW);
  if (vw_get_message((uint8_t *)cmd, &buflen)) {
    int i;
    digitalWrite(led, HIGH);
    Serial.print("Got: ");
    for (i = 0; i < buflen; i++) Serial.print(cmd[i]);
    if(cmd[1] != '0') serial.print(cmd[1]);
    Serial.println();
  }
}

