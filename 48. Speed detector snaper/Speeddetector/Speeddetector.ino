#include <Ultrasonic.h>
#include <LiquidCrystal.h>
#include <SoftwareSerial.h>

#define SPEED_LIMIT 65
char number[] = "01764180287";
char txt[] = "Over speed detected.";

#define IR A3
#define buzz A2
Ultrasonic car_in(10, 11, 5800);
Ultrasonic car_out(12, 13, 5800);
LiquidCrystal lcd(2, 3, 4, 5, 6, 7);
SoftwareSerial gsm(9, 8);

int range1, range2, carEnter;
bool timer = false;
long counter, carSpeed;

void setup() {
  Serial.begin(9600);
  gsm.begin(9600);
  lcd.begin(16, 2);
  lcd.clear();
  GSM_init();
  
  pinMode(buzz, OUTPUT);
  pinMode(IR, INPUT);
}
 
void loop() {
  range1 = analogRead(A0);
  range2 = analogRead(A1);
  range1 = map(range1, 0, 1023, 0, 100);
  range2 = map(range2, 0, 1023, 0, 100);
  //Serial.print("ADC 1: " + (String)range1);
  //Serial.println(" | ADC 2: " + (String)range2);

  if(car_in.Ranging(CM) <= range1) timer = true;
  if(timer == true) counter++;
  if(car_out.Ranging(CM) <= range2 && timer == true) {
    timer = false;
    carSpeed = 10972.8 / counter;  //10 feet distance
    counter = 0;

    if(carSpeed > SPEED_LIMIT){
      Serial.print("3");
      send_SMS(number, txt);
    }
  }
  if(!digitalRead(IR)) {
    carEnter++;
    while(!digitalRead(IR));
  }

  lcd.setCursor(0, 0);
  lcd.print("Speed: " + (String)carSpeed + " km/H  ");
  lcd.setCursor(0, 1);
  lcd.print("Car Enter: " + (String)carEnter);
  delay(1);
}

void GSM_init(){
  lcd.print("Connecting GSM..");
  delay(5000); 
  gsm.println("AT");
  delay(1000);
  gsm.println("ATE0");
  delay(1000);
  gsm.println("AT+CMGF=1");
  delay(1000);
  gsm.println("AT+CNMI=1,2,0,0,0"); 
  delay(1000);
  gsm.println("AT+CMGD=4"); 
  delay(1000);
  lcd.clear();
}

void send_SMS(char *number, char *text){
  lcd.clear();
  lcd.print("Sending SMS...");
  gsm.print("AT+CMGF=1\r\n");
  delay(200);
  gsm.print("AT+CMGS=\"");
  delay(200);
  gsm.print(number);
  gsm.print("\"\r\n");
  delay(200);
  gsm.print(text);
  gsm.write(0x1A); 
  gsm.print("\r\n");
  delay(3000);
  lcd.clear();
}
