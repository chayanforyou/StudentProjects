#include <SoftwareSerial.h>
#include <LiquidCrystal.h>
#define heart_up 1
#define temp_up 2
#define ecg_up 3
#define manual 4
#define ecg_down 5
#define temp_down 6
#define heart_down 7
#define buzzer 12

int butt_adc, key = 0;
int heart_adc, temp_adc, ecg;

SoftwareSerial hc06(2,3);
LiquidCrystal lcd(4, 5, 6, 7, 8, 9);

void setup() {
  Serial.begin(9600);
  hc06.begin(9600);
  lcd.begin(16, 2);
  lcd.clear();
  pinMode(buzzer, OUTPUT);
  pinMode(10, INPUT); // Setup for leads off detection LO +
  pinMode(11, INPUT); // Setup for leads off detection LO -
}

void loop() {
  key = button_scan();
  check_heart();
  check_temp();
  check_ecg();

  if(key == manual) manual_mode();

  lcd.setCursor(0,0);
  lcd.print("Heart beat: ");
  lcd.print(heart_adc, DEC);
  lcd.print("  ");
  lcd.setCursor(0,1);
  lcd.print("Temperature: ");
  lcd.print(temp_adc, DEC);
  lcd.print(" ");

  send_bt();
  warning();
}

void manual_mode(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Manual Mode...");
  delay(1000);
  lcd.clear();
  
  while(1){
    key = button_scan();

    if(key == manual) break;
    
    if(key == heart_up) heart_adc++;
    if(heart_adc > 120) heart_adc = 120;
    
    if(key == heart_down) heart_adc--;
    if(heart_adc < 50) heart_adc = 50;

    if(key == temp_up) temp_adc++;
    if(temp_adc > 120) temp_adc = 120;
    
    if(key == temp_down) temp_adc--;
    if(temp_adc < 50) temp_adc = 50;
  
    lcd.setCursor(0,0);
    lcd.print("Heart beat: ");
    lcd.print(heart_adc, DEC);
    lcd.print("  ");
    lcd.setCursor(0,1);
    lcd.print("Temperature: ");
    lcd.print(temp_adc, DEC);
    lcd.print(" ");

    send_bt();
    warning();
  }
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Sensor Mode...");
  delay(1000);
  lcd.clear();
} 

void warning(){
  if(temp_adc > 110 || heart_adc > 60){
    digitalWrite(buzzer, HIGH);
    delay(200);
    digitalWrite(buzzer, LOW);
    delay(300); 
  }
}

void send_bt(){
  hc06.print("H ");
  hc06.println(heart_adc);
  hc06.print("T ");
  hc06.println(temp_adc);
  hc06.print("E ");
  hc06.println(ecg);
}

void check_ecg(){
  if((digitalRead(10) == 1)||(digitalRead(11) == 1)){
    ecg = 512;
  }
  else{
      ecg = analogRead(A0);
      Serial.print("E ");
      Serial.println(ecg);
  }
}

void check_temp(){
  temp_adc = analogRead(A3);
  temp_adc = 650 - temp_adc;
  Serial.print("T ");
  Serial.println(temp_adc);
}

void check_heart(){
  heart_adc = analogRead(A2);
  heart_adc = heart_adc / 16;
  if(heart_adc > 40){
    heart_adc += 6;
  }
  else heart_adc = 0;
  Serial.print("H ");
  Serial.println(heart_adc);
}

int button_scan(){
  butt_adc = analogRead(A6);
  if(butt_adc > 925 && butt_adc < 935) {delay(300); return heart_up;}
  else if(butt_adc > 835 && butt_adc < 845) {delay(300); return temp_up;} 
  else if(butt_adc > 765 && butt_adc < 775) {delay(300); return ecg_up;}
  else if(butt_adc > 695 && butt_adc < 705) {delay(300); return manual;}
  else if(butt_adc > 555 && butt_adc < 565) {delay(300); return ecg_down;} 
  else if(butt_adc > 505 && butt_adc < 515) {delay(300); return temp_down;}
  else if(butt_adc > 400 && butt_adc < 410) {delay(300); return heart_down;}
  else return 0;
}
