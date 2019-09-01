#include <LiquidCrystal.h>

LiquidCrystal lcd(4, 5, 6, 7, 8, 9);
int motor = 11;
int led = 10;
int smoke_pin = 2;
int temp_pin = 0;
int butt_pin = 3;

int smoke = 0;
int temp = 0;

bool flag = false;

void setup() {
 lcd.begin(16, 2);
 pinMode(motor, OUTPUT);
 pinMode(led, OUTPUT);
 pinMode(butt_pin, INPUT);
 delay(5000);
 lcd.setCursor(0,0);
 lcd.print("Smoke Value:");
 lcd.setCursor(0,1);
 lcd.print("Pls wait..");
 
 do{
   smoke = analogRead(smoke_pin);
   lcd.setCursor(13,0);
   lcd.print(smoke);
 } while(smoke > 100);

 lcd.setCursor(0,0);
 lcd.print("System Starting.");
 lcd.setCursor(0,1);
 lcd.print("Pls wait..");
 delay(3000);
 lcd.clear();
 
 lcd.setCursor(0,0);
 lcd.print("Smoke Value:");
 lcd.setCursor(0,1);
 lcd.print("Motor:    T:   C");
 lcd.setCursor(14,1);
 lcd.print((char)223);
}

void loop() {
  smoke = analogRead(smoke_pin);
  lcd.setCursor(13,0);
  lcd.print(smoke);
  if(smoke < 100){
    lcd.setCursor(15,0);
    lcd.print(" ");
  }

  if(smoke >= 100){
    lcd.setCursor(6,1);
    lcd.print("ON ");
    digitalWrite(motor, HIGH);
    if(flag == false) digitalWrite(led, HIGH);
    else digitalWrite(led, LOW);
  }
  else{
    lcd.setCursor(6,1);
    lcd.print("OFF");
    digitalWrite(motor, LOW);
    digitalWrite(led, LOW);
    flag = false;
  }
  
  if(digitalRead(butt_pin) == HIGH) flag = true;
  temp = analogRead(temp_pin);
  temp = temp * 0.4887; 
  lcd.setCursor(12,1);
  lcd.print(temp);

  delay(100);
}
