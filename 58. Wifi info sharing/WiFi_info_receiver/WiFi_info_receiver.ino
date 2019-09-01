#include <UTFTGLUE.h>
UTFTGLUE tft(0x4747, A2, A1, A3, A4, A0);

#define servo 13

//Color_code
#define BLACK   0x0000
#define BLUE    0x001F
#define RED     0xF800
#define GREEN   0x07E0
#define CYAN    0x07FF
#define MAGENTA 0xF81F
#define YELLOW  0xFFE0
#define WHITE   0xFFFF

String wifiSSID = "Go Online!";
String wifiPASS = "Password_code_404";

String readText;
String line[11];
bool connectFlag = false, timerFlag = false;
long timer = 0;
   
void setup() {
    Serial.begin(9600);
    pinMode(servo, OUTPUT);
    pinMode(A5, INPUT);
    uint16_t ID = tft.readID();
    if (ID == 0xD3) ID = 0x9481;
    tft.begin(ID);
    tft.setRotation(1);
    tft.fillScreen(BLACK);
    tft.setTextSize(2);

    servo20();
}

void displayPrint(int x, int y, String text){
    tft.setColor(BLACK);
    tft.fillRect(x, y, 320, y+20);
    tft.setColor(WHITE);
    tft.print(text, x, y);
}

void splitText(int y, int z){
    if(y > 9) readText.remove(0, z + 6);
    else readText.remove(0, z + 5); 
    
    int x = readText.length() - 2;
    if(x > 25) {
       x = x - 25;
       readText.remove(25, x);
    }
    line[y] = readText;
    //displayPrint(5, y * 22, readText);
}

void loop() {
   tft.setColor(RED);
   tft.fillRect(0,0,320,20);
   tft.setTextColor(WHITE);
   tft.print("Wifi Info message display", 10, 2);

   if(digitalRead(A5) == 1){
     for(int x = 1; x < 11; x++) displayPrint(5, x * 22, line[x]);
     timer = 0;
     
     while(true){
       connectWifi();
       checkData();
       delay(1);
       timer++;
       if(timer > 15000) break;
     }
   }
   
   timerFlag = false;
   tft.fillScreen(BLACK);

   while(digitalRead(A5) == 0){
     connectWifi();
     checkData();
     delay(1);
   }
}

void checkData(){
  if(Serial.available()){
    readText = Serial.readString();
    int x = readText.indexOf(">>L");
    if(readText.indexOf(">>L1=") != -1) splitText(1, x);
    if(readText.indexOf(">>L2=") != -1) splitText(2, x);
    if(readText.indexOf(">>L3=") != -1) splitText(3, x);
    if(readText.indexOf(">>L4=") != -1) splitText(4, x);
    if(readText.indexOf(">>L5=") != -1) splitText(5, x);
    if(readText.indexOf(">>L6=") != -1) splitText(6, x);
    if(readText.indexOf(">>L7=") != -1) splitText(7, x);
    if(readText.indexOf(">>L8=") != -1) splitText(8, x);
    if(readText.indexOf(">>L9=") != -1) splitText(9, x);
    if(readText.indexOf(">>L10=") != -1) splitText(10, x); 

    if(readText.indexOf("OPEN") != -1) servo90();
    if(readText.indexOf("CLOSE") != -1) servo20();
    
    readText = "";
  }
}

void connectWifi(){
  if(connectFlag == false) {
    Serial.println("AT+CWMODE=1");
    delay(100);
    Serial.println((String)"AT+CWJAP=\"" + wifiSSID + "\",\"" + wifiPASS + "\"");
    delay(100);
    while(!Serial.available());
    readText = Serial.readString();
    if(readText.indexOf("GOT IP") != -1) {
      Serial.println("AT+CIPMUX=1");
      delay(100);
      Serial.println("AT+CIPSERVER=1,333");
      delay(100);
      connectFlag = true;
    }
    readText = "";
  }
}

void servo90(){
  for(int x = 0; x < 50; x++){
    digitalWrite(servo, HIGH);
    delayMicroseconds(1600);
    digitalWrite(servo, LOW);
    delayMicroseconds(18400); 
  }
}

void servo20(){
  for(int x = 0; x < 27; x++){
    digitalWrite(servo, HIGH);
    delayMicroseconds(750);
    digitalWrite(servo, LOW);
    delayMicroseconds(19250);
  }
}
