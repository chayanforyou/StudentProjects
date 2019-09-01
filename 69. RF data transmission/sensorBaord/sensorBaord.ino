#include "heartRate.h"
#include <VirtualWire.h>
#include <Adafruit_Sensor.h>
#include <DHT.h>
#include <DHT_U.h>

#define DHTTYPE DHT11
#define DHTPIN  7
#define butt 3
#define buzz 13

const int transmit_pin = 12;

DHT_Unified dht(DHTPIN, DHTTYPE);

byte temp, humidity;
int mq7;
char data[18]; //0,000,000,000,000 - 17
String raw;

void setup(){              
  pinMode(butt, INPUT);
  pinMode(buzz, OUTPUT);
  Serial.begin(115200); 
  dht.begin(); 

  vw_set_tx_pin(transmit_pin);
  vw_set_ptt_inverted(true);
  vw_setup(2000);
            
  interruptSetup();               
}

void loop(){
  mq7 = analogRead(A3);
  getDHT(); 
  getBPM(SERIAL_OFF); 

  if(digitalRead(butt))
    raw = (String)"1," + intToStr(temp) + "," + intToStr(humidity) + "," + intToStr(mq7) + ","+ intToStr(BPM) + ",";
  else 
    raw = (String)"0," + intToStr(temp) + "," + intToStr(humidity) + "," + intToStr(mq7) + ","+ intToStr(BPM) + ",";
  Serial.println(raw);
  
  vw_send(strcpy(data, raw.c_str()), 18);
  vw_wait_tx();
  
  delay(200); 
}

String intToStr(int val){
  if(val < 100) return (String)"0" + val;
  else return (String)val;
}

void getDHT(){
  sensors_event_t event; 
  dht.temperature().getEvent(&event);
  if (isnan(event.temperature)); 
  else temp = event.temperature;
  dht.humidity().getEvent(&event);
  if (isnan(event.relative_humidity));
  else humidity = event.relative_humidity;
}
