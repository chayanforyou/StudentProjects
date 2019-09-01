#include <LiquidCrystal.h>

// Calibrate laser ADC
#define OFF 700
#define ON  800

LiquidCrystal lcd(3,4,5,6,7,8);

#define ldr A2

int ldrAdc, timer;

const int encoded[] = {9, 16, 23, 28, 33, 38, 43, 48, 53, 58, 62, 67, 72, 77, 81, 86, 91, 96, 100, 105, 110, 114, 119, 124, 129, 133, 138, 143, 147, 152, 157, 161, 166, 171, 176, 180, 185, 190, 194, 199, 204, 209, 213, 218, 223, 227, 232, 237, 242, 246, 251, 256, 260, 265, 270, 275, 279, 284, 289, 293, 298, 303, 308, 312, 317, 322, 326, 331, 336, 340, 345, 350, 355, 359, 364, 369, 374, 378, 383, 388, 393, 397, 402, 406, 411, 416, 421, 425, 430, 435, 440, 444, 449, 454, 458};
String txt;
byte x = 0;

void setup() {
  Serial.begin(9600);
  lcd.begin(16, 2);

  lcd.setCursor(0, 0);
  lcd.print("MORSECODE DEOCDE");
}

void loop() {
  char c = receiveChar();

  if(c == '#'){
    x = 0;
    Serial.println();
  }
  else if(c != 0){
    lcd.setCursor(x++, 1);
    lcd.print(c);
    Serial.print(c);
    if(x > 15) x = 0;
  }
}

char receiveChar(){
  if(laserBit() == 1){
    timer = 0;
    while(laserBit() == 1) {timer++; delay(2);}
    //Serial.print(timer);
    //Serial.print(", ");
    for(byte i = 0; i < 95; i++){
      if(timer >= encoded[i] - 1 && timer <= encoded[i] + 1){
        return (char)(i + 32);
      }
    }
  }
  return 0;
}

bool laserBit(){
  ldrAdc = analogRead(ldr);
  //Serial.println(ldrAdc);
  if(ldrAdc > ON) return 1;
  else if(ldrAdc < OFF) return 0;
  return 0;
}

