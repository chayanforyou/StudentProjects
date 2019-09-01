#include <EEPROM.h>
#include <UTFTGLUE.h>
UTFTGLUE tft(0x4747, A2, A1, A3, A4, A0);

#define upKey    10
#define downKey  13
#define leftKey  12
#define rightKey 11

//Color_code
#define BLACK   0x0000
#define BLUE    0x001F
#define RED     0xF800
#define GREEN   0x07E0
#define CYAN    0x07FF
#define MAGENTA 0xF81F
#define YELLOW  0xFFE0
#define WHITE   0xFFFF

String readText;
int x;
byte lineN = 0, lineA, line;
   
void setup() {
    Serial.begin(9600);
    pinMode(upKey, INPUT_PULLUP);
    pinMode(downKey, INPUT_PULLUP);
    pinMode(leftKey, INPUT_PULLUP);
    pinMode(rightKey, INPUT_PULLUP);
    
    uint16_t ID = tft.readID();
    if (ID == 0xD3) ID = 0x9481;
    tft.begin(ID);
    tft.setRotation(1);
    tft.fillScreen(WHITE);
    tft.setColor(MAGENTA);
    tft.fillRect(0,0,320,20);
    tft.setTextSize(2);
    tft.setTextColor(WHITE);
    tft.print("BT Info Message Display", 25, 2);
    showBox(lineN, RED);

    //for (int i = 0 ; i < EEPROM.length() ; i++) EEPROM.write(i, 0);
    lineA = EEPROM.read(0);
}

void displayPrint(int x, int y, String text){
    tft.setTextSize(2);
    tft.setColor(WHITE);
    tft.fillRect(x,y,320,y+20);
    tft.setColor(BLACK);
    tft.print(text, x, y);
}

void splitText(int y){
    if(y == 10)readText.remove(0,4);
    else {readText.remove(0,3);}
    
    x = readText.length()-2;
    if(x > 25) {
       x = x - 25; 
       readText.remove(25, x);
    }
    displayPrint(5, y*22, readText);

    Serial.println((String)"LineA = " + lineA + "  ES = " + (26 * lineA) + "  EE = " + (25 + (26 * lineA)));
    
    if(lineA < 1) for(int i = 1; i <= 25; i++) EEPROM.write(i, readText.charAt(i - 1));
    else for(int i = 26 * lineA, j = 0; i <= 25 + (26 * lineA); i++, j++) EEPROM.write(i, readText.charAt(j)); 
    
    lineA++;
    if(lineA > 30) lineA = 0;
    EEPROM.write(0, lineA);
}

void showBox(int a, int c){
  int y = 41 + (21 * a);
  int x = 21 + (21 * a);
  if(a > 1) {x+=a; y+=a;}
  tft.setColor(c);
  tft.drawRect(0, x, 320, y);
}

String readSavedline(byte l){
  String txt = "";
  if(l < 1) for(int i = 1; i <= 25; i++) txt += (char)EEPROM.read(i);
  else for(int i = 26 * l; i <= 25 + (26 * l); i++) txt += (char)EEPROM.read(i);
  
  x = txt.indexOf("\n");
  txt.remove(x, txt.length());
  
  Serial.println(txt);
  if(txt == NULL) txt = "                         ";
  return txt;
}

void loop() {
   if(Serial.available()){
      readText = Serial.readString();
      if(readText.startsWith("L1=")) splitText(1);
      if(readText.startsWith("L2=")) splitText(2);
      if(readText.startsWith("L3=")) splitText(3);
      if(readText.startsWith("L4=")) splitText(4);
      if(readText.startsWith("L5=")) splitText(5);
      if(readText.startsWith("L6=")) splitText(6);
      if(readText.startsWith("L7=")) splitText(7);
      if(readText.startsWith("L8=")) splitText(8);
      if(readText.startsWith("L9=")) splitText(9);
      if(readText.startsWith("L10=")) splitText(10);    
   }
   if(!digitalRead(upKey)){
    if(lineN > 0) {
      showBox(lineN, WHITE);
      lineN--;
      showBox(lineN, RED);
      Serial.println(lineN);
      delay(300);
    }
   }
   if(!digitalRead(downKey)){
    if(lineN < 10) {
      showBox(lineN, WHITE);
      lineN++;
      showBox(lineN, RED);
      Serial.println(lineN);
      delay(300);
    }
   }

   if(!digitalRead(leftKey)){
    if(line > 0) {
      line--;
      Serial.println((String)"Saved Line #" + line);
      displayPrint(5, 22*(lineN+1), readSavedline(line));
      delay(300);
    }
   }
   if(!digitalRead(rightKey)){
    if(line < 31) {
      line++;
      Serial.println((String)"Saved Line #" + line);
      displayPrint(5, 22*(lineN+1), readSavedline(line));
      delay(300);
    }
   }
}
