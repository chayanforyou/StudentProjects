#include <LiquidCrystal.h>
#include "HX711.h"

#define DOUT  A2
#define CLK  A3

HX711 scale(DOUT, CLK);
#define calibration_factor -160.0

LiquidCrystal lcd(4, 5, 6, 7, 8, 9);

char rxd;
float grams = 0;
char number[] = "01751878387";
int timer = 0;

void setup() {
  lcd.begin(16, 2);
  lcd.clear();
  Serial.begin(9600);
  scale.set_scale(calibration_factor);
  
  GSM_init();
  scale.tare();
}

void loop() {
  read_scale();

  lcd.setCursor(0,0);
  lcd.print("Garbage Monitor ");
  lcd.setCursor(0,1);
  lcd.print("Bin: ");
  if(grams < 1000){
    lcd.print(grams, 1);
    lcd.print(" grams   ");
  }
  else{
    grams /= 1000;
    lcd.print(grams, 1);
    lcd.print(" Kg      ");

    if(grams > 10) {
      if(timer == 0) send_SMS();
      timer++;
      if(timer == 600) timer = 0;
    }
    else timer = 0;
  }
}

void read_scale(){
  grams = scale.get_units();
  if(grams < 0) grams = 0;
  delay(10);
}

void GSM_init(){
  lcd.setCursor(0,0);
  lcd.print("Please wait..");
  lcd.setCursor(0,1);
  lcd.print("Clear bin place.");
  delay(5000);
  Serial.println("AT");
  delay(1000);
  Serial.println("ATE0");
  delay(1000);
  Serial.println("AT+CMGF=1");
  delay(1000);
  Serial.println("AT+CNMI=1,2,0,0,0"); 
  delay(1000);
  lcd.clear();
}


void send_SMS(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Sending SMS..");
  Serial.println("AT+CMGF=1");
  delay(1000);
  Serial.print("AT+CMGS=\"");
  Serial.print(number);
  Serial.println("\"");
  delay(1000);
  Serial.println("Bin is overhold. Please clean the bin.");
  Serial.print("Bin: ");
  Serial.print(grams, 1);
  Serial.println(" kg");
  Serial.write(0x1A); 
  Serial.println();
  delay(5000);
  lcd.clear();
}
