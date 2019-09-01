#include <LiquidCrystal.h>
#include <SD.h> 
#define SD_ChipSelectPin 10
#include <TMRpcm.h> 
#include <SPI.h>
#include <Wire.h>
#include <Ultrasonic.h>

#define serial Serial
#define vibrate 8

TMRpcm player;
LiquidCrystal lcd(2, 3, 4, 5, 6, 7);
Ultrasonic sonarLeft(A0, A1, 11600); 
Ultrasonic sonarMiddle(A2, A3, 11600); 
Ultrasonic sonarRight(A4, A5, 11600); 

byte left, middle, right;
char rxd, cp = 0, cp2 = 0, x = 0;
char longi[10];
char lati[10];
int timer;

const char number[] = "01764180287";

void setup() {
  player.speakerPin = 9;
  Serial.begin(9600);
  lcd.begin(16, 2);
  GSM_init();

  if (!SD.begin(SD_ChipSelectPin)) return;   
  player.setVolume(5);
  lcd.clear();

  pinMode(vibrate, OUTPUT);
}

void loop() {
  left = sonarLeft.Ranging(CM);
  middle = sonarMiddle.Ranging(CM);
  right = sonarRight.Ranging(CM);

  if(left == 200) left = 0;
  if(middle == 200) middle = 0;
  if(right == 200) right = 0;

  lcd.setCursor(0, 0);
  lcd.print((String)"L:" + left + "cm  " + "R:" + right + "cm    ");
  lcd.setCursor(2, 1);
  lcd.print((String)"Middle:" + middle + "cm  ");

  if(left > 0 && left <= 20) alart(0, left);
  if(middle > 0 && middle <= 20) alart(1, middle);
  if(right > 0 && right <= 20) alart(2, right);

  if((left > 0 && left <= 5) || 
     (middle > 0 && middle <= 5) || 
     (right > 0 && right <= 5)) digitalWrite(vibrate, 1);
  else digitalWrite(vibrate, 0);

  SMS_read();
  if(timer == 0) Get_Location();
  timer++;
  if(timer == 5000) timer = 0; 
}

void alart(byte side, byte val){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("WAV Playing..");
  
  switch(val){
    case 1: player.play("01.wav"); break;
    case 2: player.play("02.wav"); break;
    case 3: player.play("03.wav"); break;
    case 4: player.play("04.wav"); break;
    case 5: player.play("05.wav"); break;
    case 6: player.play("06.wav"); break;
    case 7: player.play("07.wav"); break;
    case 8: player.play("08.wav"); break;
    case 9: player.play("09.wav"); break;
    case 10: player.play("10.wav"); break;
    case 11: player.play("11.wav"); break;
    case 12: player.play("12.wav"); break;
    case 13: player.play("13.wav"); break;
    case 14: player.play("14.wav"); break;
    case 15: player.play("15.wav"); break;
    case 16: player.play("16.wav"); break;
    case 17: player.play("17.wav"); break;
    case 18: player.play("18.wav"); break;
    case 19: player.play("19.wav"); break;
    case 20: player.play("20.wav"); break;
  }
  delay(2000);

  if(side == 0) player.play("Le.wav");
  if(side == 1) player.play("Mi.wav");
  if(side == 2) player.play("Ri.wav");
  delay(2000);

  player.play("Ob.wav");
  delay(4000);
  lcd.clear();
}

void Get_Location(){ 
  memset(longi, 0, sizeof(longi));
  memset(lati, 0, sizeof(lati));
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Finding Location");
  lcd.setCursor(0,1);
  lcd.print("Please wait...");
  
  serial.println("AT+SAPBR=1,1");
  delay(3000);
  serial.println("AT+CIPGSMLOC=1,1");
  receive_loc();
  serial.println("AT+SAPBR=0,1");
  delay(1000);

  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print(lati);
  lcd.setCursor(0,1);
  lcd.print(longi);
  delay(1000); 
  lcd.clear();
}

void receive_loc(){
  while(!serial.available());
  while(serial.available()){
    rxd = serial.read();

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
  if(lati[0] == 0 || longi[0] == 0) Get_Location();
}

void SMS_read(){
  left = 0; middle = 0; right = 0;
  if(serial.available()){
    rxd = serial.read();
    if(cp2 == 0 && rxd == '+') cp2 = 1;
    if(cp2 == 1 && rxd == 'C') cp2 = 2;
    if(cp2 == 2 && rxd == 'M') cp2 = 3;
    if(cp2 == 3 && rxd == 'T') cp2 = 4;

    if(cp2 == 4 && rxd == 13) cp2 = 5; 
    if(cp2 == 5 && rxd == 10) cp2 = 6;
    if(cp2 == 6 && rxd != 10) cp2 = 7;
  
    if(cp2 == 7 && rxd == 'L') cp2 = 8;
    if(cp2 == 8 && rxd == 'O') cp2 = 9;
    if(cp2 == 9 && rxd == 'C') cp2 = 10;
    if(cp2 == 10 && rxd == 'A') {
       cp2 = 0;
       rxd = 0;
       send_SMS();    
    }
  }
}

void send_SMS(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Sending SMS..");
  
  serial.print("AT+CMGF=1\r\n");
  delay(200);
  serial.print("AT+CMGS=\"");
  delay(200);
  serial.print(number);
  serial.print("\"\r\n");
  delay(200);
  serial.print("Latitude: ");
  serial.println(lati);
  serial.print("Longitude: ");
  serial.println(longi);
  serial.print("https://www.google.com/maps/place/");
  serial.print(lati);
  serial.print(",");
  serial.print(longi);
  
  serial.write(0x1A); 
  serial.print("\r\n");
  delay(3000);
  
  lcd.clear();
}

void GSM_init(){
  lcd.clear();
  lcd.print("GSM Init...");
  delay(10000);
  
  serial.println("AT");
  delay(1000);
  serial.println("ATE0");
  delay(1000);
  serial.println("AT+CMGF=1");
  delay(1000);
  serial.println("AT+CNMI=1,2,0,0,0");
  delay(1000);
  serial.println("AT+CGATT=1");
  delay(1000);
  serial.println("AT+SAPBR=3,1,\"CONTYPE\",\"GPRS\"");
  delay(1000);
  serial.println("AT+SAPBR=3,1,\"APN\",\"gpinternet\"");
  delay(1000);
}
