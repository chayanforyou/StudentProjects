#include <Adafruit_Sensor.h>
#include <DHT.h>
#include <DHT_U.h>
#include <LiquidCrystal.h>
#include <SoftwareSerial.h>

#define rly1 2
#define rly2 3
#define rly3 4
#define modeBtn A2

#define DHTPIN A1
#define DHTTYPE DHT11

LiquidCrystal lcd(7, 8, 9, 10, 11, 12);
SoftwareSerial wifi(5, 6);
DHT_Unified dht(DHTPIN, DHTTYPE);

String wifiSSID = "Jarvis!";
String wifiPASS = "Password_Code_405";
String HOST = "http://kitsware.com/projects/iotweather";  //39

byte temp, humidity;
int soil;
bool mode = false;

byte cross[] = {
  B00000,
  B10001,
  B01010,
  B00100,
  B01010,
  B10001,
  B00000,
  B00000
};

byte tick[] = {
  B00000,
  B00001,
  B00010,
  B10101,
  B01010,
  B10100,
  B01000,
  B00000
};

void setup() {
  Serial.begin(9600);
  wifi.begin(9600);
  lcd.begin(16, 2);
  lcd.createChar(0, cross);
  lcd.createChar(1, tick);

  pinMode(rly1, OUTPUT);
  pinMode(rly2, OUTPUT);
  pinMode(rly3, OUTPUT);
  pinMode(modeBtn, INPUT_PULLUP);

  wifi.println((String)"AT+CWJAP=\"" + wifiSSID + "\",\"" + wifiPASS + "\""); 
  checkResponse();
}

void loop() {
  readDHT();
  soil = analogRead(A0);
  soil = map(soil, 0, 1023, 0, 100);
  Serial.println((String)"Soil: " + soil + "\tTemp: " + temp + "\tHumidity: " + humidity);
  
  lcd.setCursor(0, 0);
  lcd.print((String)"Soil: " + int2Str(soil) + "%  " + temp + (char)223 + "C  ");
  lcd.setCursor(0, 1);
  lcd.print((String)"Hum: " + humidity + "%  ");

  if(mode == 0){
    lcd.setCursor(15, 1);
    lcd.print("A");
    if(soil < 40) digitalWrite(rly1, 0);
    else digitalWrite(rly1, 1);

    if(temp < 27) digitalWrite(rly2, 0);
    else digitalWrite(rly2, 1);

    if(humidity < 50) digitalWrite(rly3, 1);
    else digitalWrite(rly3, 0);
  }
  else {
    lcd.setCursor(15, 1);
    lcd.print("S");
  }

  lcd.setCursor(10, 1);
  if(digitalRead(rly1)) lcd.write(byte(0)); 
  else lcd.write(byte(1)); 
  lcd.setCursor(11, 1);
  if(digitalRead(rly2)) lcd.write(byte(0)); 
  else lcd.write(byte(1)); 
  lcd.setCursor(12, 1);
  if(digitalRead(rly3)) lcd.write(byte(1)); 
  else lcd.write(byte(0)); 
 
  send2Server();
  checkServer();
  //delay(1000);
}

void send2Server(){
  String post = (String)"GET /update_machine.php?s_value=" + soil + "&t_value=" + temp + "&h_value=" + humidity + " HTTP/1.1";
  int index = post.length() + 70;

  wifi.println("AT+CIPMUX=0");
  checkResponse(); 
  wifi.println("AT+CIPSTART=\"TCP\",\"" + HOST + "\",80");
  checkResponse();
  wifi.println((String)"AT+CIPSEND=" + index);
  checkResponse();
  wifi.println(post);
  wifi.println("HOST: " + HOST);
  wifi.println("Connection: Close\r\n");
  checkResponse();
}

void checkServer(){
  wifi.println("AT+CIPMUX=0");
  checkResponse(); 
  wifi.println("AT+CIPSTART=\"TCP\",\"" + HOST + "\",80");
  checkResponse();
  wifi.println("AT+CIPSEND=100");
  checkResponse();
  wifi.println("GET /stat_machine.php HTTP/1.1");
  wifi.println("HOST: " + HOST);
  wifi.println("Connection: Close\r\n");
  String raw = checkResponse();
  
  if(raw.indexOf("MODE=1") != -1) mode = 1;
  else mode = 0;
  
  if(mode == 1){
    if(raw.indexOf("R1=1") != -1) digitalWrite(rly1, 1);
    else digitalWrite(rly1, 0);
  
    if(raw.indexOf("R2=1") != -1) digitalWrite(rly2, 1);
    else digitalWrite(rly2, 0);

    if(raw.indexOf("R3=1") != -1) digitalWrite(rly3, 1);
    else digitalWrite(rly3, 0);
  }
}

String checkResponse(){
  String r;
  while(!wifi.available());
  while(wifi.available()){
    r = wifi.readString();
    //Serial.println(r);
  }
  return r;
}

String int2Str(int val){
  if(val < 10) return (String)"00" + val;
  else if(val < 100) return (String)"0" + val;
  else return (String)val;
}

void readDHT(){
  sensors_event_t event;  
  dht.temperature().getEvent(&event);
  if (!isnan(event.temperature)) temp = event.temperature;
  dht.humidity().getEvent(&event);
  if (!isnan(event.relative_humidity)) humidity = event.relative_humidity;
}
