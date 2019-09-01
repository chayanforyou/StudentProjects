#include <Adafruit_Sensor.h>
#include <DHT.h>
#include <DHT_U.h>
#include <SoftwareSerial.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define buzz 2

DHT_Unified dht(3, DHT11);
SoftwareSerial gsm(5, 4);
Adafruit_SSD1306 oled(128, 32, &Wire, -1);

byte temp, humidity;
char rxd, cp = 0, cp2 = 0, x = 0;
char longi[10];
char lati[10];
int timer = 0;

String number;

void setup() {
  Serial.begin(9600);
  gsm.begin(9600);
  dht.begin();
  if(!oled.begin(SSD1306_SWITCHCAPVCC, 0x3C)) {
    Serial.println(F("SSD1306 allocation failed"));
    for(;;);
  }
  oled.clearDisplay();
  oled.setTextSize(2);
  oled.setTextColor(WHITE);

  pinMode(buzz, OUTPUT);

  GSM_init();  
  beep(500);
}

void loop() {
  readDHT();

  oled.clearDisplay();
  oled.setCursor(0, 0);
  oled.print((String)temp + (char)247 + "C H:" + humidity + "%");
  oled.setCursor(0, 16);
  oled.print((String)"Water: " + waterLevel() + "%");
  oled.display();

  if(temp < 28) beep(100); 
  if(humidity > 95) beep(100);
  
  delay(200);

  SMS_read();
  if(timer == 0) Get_Location();
  timer++;
  if(timer == 150) timer = 0; 
}

void Get_Location(){ 
  memset(longi, 0, sizeof(longi));
  memset(lati, 0, sizeof(lati));
  Serial.println(F("Finding Location"));
  oled.clearDisplay();
  oled.setCursor(0, 0);
  oled.print("Finding   GPS...");
  oled.display();
  
  gsm.println("AT+CIPGSMLOC=1,1");
  receive_loc();
  
  Serial.println(F("Location Read OK."));
}

void receive_loc(){
  while(!gsm.available());
  while(gsm.available()){
    rxd = gsm.read();

    if(cp == 0 && rxd == 'L') cp = 1;
    if(cp == 1 && rxd == 'O') cp = 2;
    if(cp == 2 && rxd == 'C') cp = 3;
    if(cp == 3 && rxd == ':') cp = 4;

    if(cp == 4 && rxd == ',') cp = 5;
    if(cp == 5 && rxd != ',') cp = 6;

    if(cp == 6){
      if(rxd != ','){
        longi[x] = rxd;
        x++;
      }
      else {
        cp = 7;
        x = 0;
      }
    }
    
    if(cp == 7 && rxd == ',') cp = 8;
    if(cp == 8 && rxd != ',') cp = 9; 
    
    if(cp == 9){
      if(rxd != ','){
        lati[x] = rxd;
        x++;
      }
      else {
        cp = 0;
        x = 0;
      }
    }
  }
  Serial.println(lati);
  Serial.println(longi);
  if(lati[0] == 0 || longi[0] == 0) Get_Location();
}

void SMS_read(){
  if(gsm.available()){
    String dta = gsm.readString();

    if(dta.indexOf("+CMT") != -1){
      if(dta.indexOf("+88") != -1){
        int i = dta.indexOf("+88") + 3;
        number = dta.substring(i, i + 11);
      }
      if(dta.indexOf("LOCATION") != -1){
        send_SMS((String)F("Latitude: ") + lati + F("\nLongitude: ") + longi + F("\nhttps://www.google.com/maps/place/") + lati + F(",") + longi); 
      }
      else if(dta.indexOf("WEATHER") != -1){
        send_SMS((String)F("Temperature: ") + temp + (char)247 + F("C.\nHumidity: ") + humidity + F("%.\nWater Level: ") + waterLevel() + F("%.")); 
      }
    }
  }
}

void send_SMS(String text){
  oled.clearDisplay();
  oled.setCursor(0, 0);
  oled.print("Sending   SMS...");
  oled.display();
  Serial.println(text);
  
  gsm.print("AT+CMGF=1\r\n");
  delay(1000);
  gsm.print("AT+CMGS=\"");
  gsm.print(number);
  gsm.print("\"\r\n");
  delay(1000);
  gsm.println(text);
  
  gsm.write(0x1A); 
  gsm.print("\r\n");
  delay(3000);
}

void GSM_init(){
  oled.clearDisplay();
  oled.setCursor(0, 0);
  oled.print("GSM Init...");
  oled.display();
  Serial.println(F("GSM Init..."));
  delay(10000);
  
  gsm.println("AT");
  delay(1000);
  gsm.println("AT+CMGF=1");
  delay(1000);
  gsm.println("AT+CNMI=1,2,0,0,0");
  delay(1000); 
  gsm.println("AT+SAPBR=1,1");
  delay(3000);
  
  Serial.println(F("GSM Init OK."));
}

byte waterLevel(){
  int adc = analogRead(A0);
  return map(adc, 0, 1023, 0, 100);
}

void beep(int d){
  digitalWrite(buzz, 1);
  delay(d);
  digitalWrite(buzz, 0);
}

void readDHT(){
  sensors_event_t event;  
  dht.temperature().getEvent(&event);
  if (!isnan(event.temperature)) temp = event.temperature;
  dht.humidity().getEvent(&event);
  if (!isnan(event.relative_humidity)) humidity = event.relative_humidity;
}
