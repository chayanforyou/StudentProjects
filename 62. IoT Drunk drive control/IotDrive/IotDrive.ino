#include <SoftwareSerial.h>
#include <Ultrasonic.h>
#include <LiquidCrystal.h>

SoftwareSerial bluetooth(A2, A3);
Ultrasonic sonar(11, 12);
LiquidCrystal lcd(2, 3, 4, 5, 6, 7);
#define gsm Serial

#define mq2 A0
#define motorB 10
#define motorA 8
#define motorPWM 9
#define buzz A1
#define vibrator 13
#define LED A4

int mqAdc, temp;
byte alcohol, distance, motorSpeed = 100;
bool vibr;
String gps;

char rxd, cp = 0, x = 0;
int timer = 0;
char longi[10];
char lati[10];

void setup() {
  bluetooth.begin(9600);
  Serial.begin(115200);
  lcd.begin(16, 2);
  lcd.clear();

  pinMode(motorA, OUTPUT);
  pinMode(motorB, OUTPUT);
  pinMode(motorPWM, OUTPUT);
  pinMode(buzz, OUTPUT);
  pinMode(LED, OUTPUT);
  pinMode(vibrator, INPUT);

  GSM_init();
}

void loop() {
  readSensor();

  if(timer == 0) Get_Location(); 
  timer++;
  if(timer == 500) send2Server();
  if(timer == 2000) timer = 0;

  // --------------------------------------- alarm 
  if(alcohol > 30 || distance < 10 || vibr == 1) 
       digitalWrite(buzz, 1);
  else digitalWrite(buzz, 0);

  // --------------------------------------- motor
  motorSpeed = 100 - (alcohol + (51 - distance));
  motorControl(motorSpeed);
}

void btRead(){
  if(bluetooth.available()){
    String rx = bluetooth.readString();

    if(rx.indexOf("1") != -1){
      digitalWrite(LED, 1);
    }
    else if(rx.indexOf("0") != -1){
      digitalWrite(LED, 0);
    }
  }
}

void readSensor(){
  mqAdc = analogRead(mq2);
  alcohol = map(mqAdc, 0, 1023, 0, 100);
  distance = sonar.Ranging(CM);
  vibr = digitalRead(vibrator);

  lcd.setCursor(0, 0);
  lcd.print((String)"Dist:" + distance + "cm  Vib:" + vibr + "  ");
  lcd.setCursor(0, 1);
  lcd.print((String)"Alcohol: " + alcohol + "%  ");
}

void motorControl(byte pwm){
  pwm = map(pwm, 0, 100, 0, 255);
  analogWrite(motorPWM, pwm);
  digitalWrite(motorA, 1);
  digitalWrite(motorB, 0);
}

void GSM_init(){  //GSM initialization function, calls once when device start
  lcd.print("Connecting GSM..");
  delay(15000);
  gsm.println("AT");
  delay(1000);
  gsm.println("ATE0");
  delay(1000); 
  gsm.println("AT+CGATT=1");
  delay(1000);
  gsm.println("AT+SAPBR=3,1,\"CONTYPE\",\"GPRS\"");
  delay(1000);
  gsm.println("AT+SAPBR=1,1"); 
  delay(4000);
  gsm.println("AT+HTTPINIT"); 
  delay(1000);
  lcd.clear();
}

void send2Server(){  // send data to server within 5sec.                              
  lcd.clear();
  lcd.print("Sending server..");
  gsm.println((String)"AT+HTTPPARA=" + (char)34 + "URL" + (char)34 + "," + (char)34 + "http://iotdrunkdrive.000webhostapp.com/connect.php?MQ2=" + alcohol + "&SONAR=" + distance + "&VIBRATOR=" + vibr + "&GPS=" + gps + (char)34);
  delay(1000);
  gsm.println("AT+HTTPACTION=0");
  delay(3500);
  lcd.clear();
}

void Get_Location(){ 
  memset(lati, 0, sizeof(lati));
  memset(longi, 0, sizeof(longi));
  gps = "";
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Finding Location");
  lcd.setCursor(0,1);
  lcd.print("Please wait...");
  
  Serial.println("AT+CIPGSMLOC=1,1");
  delay(2000);
  receive_loc();
  yield();

  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print(lati);
  lcd.setCursor(0,1);
  lcd.print(longi);
  delay(1000); 
  lcd.clear();
}

//void receive_loc(){
//  while(!Serial.available());
//  if(Serial.available()){
//    gps = gsm.readString();
//  }
//}

void receive_loc(){
  cp = 0; x = 0;
  while(!Serial.available());
  while(Serial.available()){
    rxd = Serial.read();

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
  yield();
  if(lati[0] == 0 || longi[0] == 0) Get_Location();
  String la(lati), lo(longi);
  gps = "https://maps.google.com/maps?q=" + la + "," + lo;
}

