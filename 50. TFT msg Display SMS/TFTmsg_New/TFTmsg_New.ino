#include <SPI.h>       
#include <SD.h> 
#include <UTFTGLUE.h>
#include "TouchScreen_kbv.h"
#define gsm Serial

#define SD_CS 10
UTFTGLUE tft(0x9486,A2,A1,A3,A4,A0);
#include "bmpSupport.h" 

int XP = 8, YP = A3, XM = A2, YM = 9; 
TouchScreen_kbv ts(XP, YP, XM, YM, 300); 
TSPoint_kbv tp; 

int x, y;

char number[12];
String msg;
char rxd;
byte cp = 0;

#define TOTAL_FILE 6
String massege[] = {
  "[file01]", 
  "[file02]", 
  "[file03]", 
  "[file04]",
  "[file05]", 
  "[blank]",
};

char file[][11] = {
  "file01.bmp", 
  "file02.bmp", 
  "file03.bmp", 
  "file04.bmp",
  "file05.bmp", 
  "blank.bmp",
};

void setup() {
  Serial.begin(9600);
  randomSeed(analogRead(5));  
  pinMode(A0, OUTPUT);      
  digitalWrite(A0, HIGH);
  tft.InitLCD();
  tft.setRotation(1);
  tft.clrScr();
  tft.setFont(BigFont);
  tft.setTextSize(1);

  bool good = SD.begin(SD_CS);
  if (!good) {
    while (1);
  }
  
  GSM_init();
  showBMP("blank.bmp", 0, 0);
}

void readTouch(void){
  tp = ts.getPoint();
  x = map(tp.y, 945, 104, 0, 480);
  y = map(tp.x, 903, 145, 0, 320);
  if(tp.z < 300) {x = 0; y = 0;}
  pinMode(YP, OUTPUT);      
  pinMode(XM, OUTPUT);
  digitalWrite(YP, HIGH); 
  digitalWrite(XM, HIGH);
  //Serial.println("X = " + String(x) + ", Y = " + String(y));
}

void loop() {
  readTouch();
  receive_SMS();

  if(x > 2 && x < 45 && y > 275 && y < 320) showBMP("file01.bmp", 0, 0);
  if(x > 50 && x < 94 && y > 275 && y < 320) showBMP("file02.bmp", 0, 0);
  if(x > 98 && x < 142 && y > 275 && y < 320) showBMP("file03.bmp", 0, 0);
  if(x > 146 && x < 190 && y > 275 && y < 320) showBMP("file04.bmp", 0, 0);
  if(x > 194 && x < 237 && y > 275 && y < 320) showBMP("file05.bmp", 0, 0);
  if(x > 242 && x < 286 && y > 275 && y < 320) showBMP("file01.bmp", 0, 0);
  if(x > 290 && x < 334 && y > 275 && y < 320) showBMP("file02.bmp", 0, 0);
  if(x > 338 && x < 382 && y > 275 && y < 320) showBMP("file03.bmp", 0, 0);
  if(x > 386 && x < 430 && y > 275 && y < 320) showBMP("file04.bmp", 0, 0);
  if(x > 434 && x < 480 && y > 275 && y < 320) showBMP("file05.bmp", 0, 0);
}

void GSM_init(){
  delay(5000); 
  gsm.println("AT");
  delay(1000);
  gsm.println("ATE0");
  delay(1000);
  gsm.println("AT+CMGF=1");
  delay(1000);
  gsm.println("AT+CNMI=1,2,0,0,0"); 
  delay(1000);
}

void receive_SMS(){ 
  static int x;
  if(gsm.available()){
    rxd = gsm.read();
    
    if(rxd == '+' && cp == 0) cp = 1;
    if(rxd == 'C' && cp == 1) cp = 2;
    if(rxd == 'M' && cp == 2) cp = 3;
    if(rxd == 'T' && cp == 3) cp = 4;

    if(rxd == '0' && cp == 4) cp = 5;

    if(cp == 5){
      number[x] = rxd;
      x++;
      if(x > 10){
        number[x] = 0;
        x = 0; 
        cp = 6;
      }
    }

    if(rxd == (char)13 && cp == 6) cp = 7;
    if(rxd == (char)10 && cp == 7) cp = 8;
  
    //if(rxd != (char)10 && cp == 8) {cp = 9; msg = "";}

    if(cp == 8){
      msg = "";
      msg = gsm.readString();
      cp = 0;

      bool matched = false;
      for(int x = 0; x < TOTAL_FILE; x++){
        if(msg.indexOf(massege[x]) != -1) {
          showBMP(file[x], 0, 0);
          matched = true;
          break;
        }
      }
      if(matched == false){
        showBMP("blank.bmp", 0, 0);
        //tft.setColor(255, 255, 255);
        //tft.print((String)"From: " + number, CENTER, 15);
        tft.setTextSize(2);
        tft.setColor(0, 0, 0);
        tft.print(msg, 5, 50);
      }
    }
    rxd = 0;
  }
}

