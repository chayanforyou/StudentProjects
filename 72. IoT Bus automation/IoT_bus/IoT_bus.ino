#include <Servo.h>
#include <Adafruit_Sensor.h>
#include <DHT.h>
#include <DHT_U.h>
#include <LiquidCrystal.h>

#define DHTPIN A3
#define DHTTYPE DHT11
#define wifi Serial

#define ir1 A4
#define ir2 A5
#define led1 11
#define led2 12
#define led3 A0
#define led4 A1
#define butt1 8
#define butt2 9
#define butt3 10

Servo servo;
LiquidCrystal lcd(7, 6, 5, 4, 3, 2);
DHT_Unified dht(DHTPIN, DHTTYPE);

String wifiSSID = "Xioami Mi A1";
String wifiPASS = "AntorIsTheBest";
String HOST = "dcc-cse.000webhostapp.com";

byte temp, humidity, entered, fillupSeat;
bool activated, enterFlag, exitFlag;
byte seat[4];

void setup() {
  wifi.begin(115200);
  lcd.begin(16, 2);
  dht.begin();
  servo.attach(A2);

  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led4, OUTPUT);
  pinMode(butt1, INPUT);
  pinMode(butt2, INPUT);
  pinMode(butt3, INPUT);
  delay(1000);
  
  servo.write(0);

  digitalWrite(led1, 1);
  delay(500);
  digitalWrite(led1, 0);

  wifi.println((String)"AT+CWJAP=\"" + wifiSSID + "\",\"" + wifiPASS + "\""); 
  checkResponse();
}

void loop() {
  readDHT();

  lcd.setCursor(0, 0);
  lcd.print((String)temp + (char)223 + "C  Hum: " + humidity + "%  ");
  lcd.setCursor(0, 1);
  lcd.print((String)"Gate: " + entered + " Seat: " + fillupSeat + "   "); 

  digitalWrite(led2, 1);

  if(!digitalRead(ir1) && digitalRead(ir2)){
    entered++;
    delay(500);
    if(entered == 4) {
      servo.write(90);
      delay(5000);
      digitalWrite(led2, 0);
      delay(500);
      digitalWrite(led2, 1);
      digitalWrite(led3, 1);
      delay(500);
      digitalWrite(led3, 0);
      servo.write(0);
      digitalWrite(led4, 1);
    }
  }
  if(digitalRead(ir1) && !digitalRead(ir2)){
    if(entered != 0) entered--;
    delay(500);
  }

  if(digitalRead(butt1)) seat[0] = 1;
  else seat[0] = 0;
  if(digitalRead(butt2)) seat[1] = 1;
  else seat[1] = 0;
  if(digitalRead(butt3)) seat[2] = 1;
  else seat[2] = 0;
  if(pressure()) seat[3] = 1;
  else seat[3] = 0;
  
  fillupSeat = 0;
  for(byte i = 0; i < 4; i++){
    if(seat[i] == 1) fillupSeat++;
  }

  send2Server();
}

bool mainSwitch(){
  int adc = analogRead(A6);
  if(adc < 1020) return 1;
  else return 0;
}

bool pressure(){
  int adc = analogRead(A7);
  if(adc < 950) return 1;
  else return 0;
}

void send2Server(){
  String post = (String)"GET /update_machine.php?&temp=" + temp + "&hum=" + humidity + "&gate=" + entered + "&seat=" + fillupSeat + " HTTP/1.1";
  int index = post.length() + 56;

  wifi.println("AT+CIPMUX=0");
  checkResponse(); 
  wifi.println("AT+CIPSTART=\"TCP\",\"" + HOST + "\",80");
  checkResponse();
  wifi.println((String)"AT+CIPSEND=" + index);
  checkResponse();
  wifi.println(post);  // 2
  wifi.println("HOST: " + HOST); // 8 + 25
  wifi.println("Connection: Close\r\n"); // 21
  checkResponse();
}

void checkResponse(){
  char r;
  while(!wifi.available());
  while(wifi.available()){
    r = wifi.read();
    //Serial.println(r);
  }
  delay(50);
}

void readDHT(){
  sensors_event_t event;  
  dht.temperature().getEvent(&event);
  if (!isnan(event.temperature)) temp = event.temperature;
  dht.humidity().getEvent(&event);
  if (!isnan(event.relative_humidity)) humidity = event.relative_humidity;
}
