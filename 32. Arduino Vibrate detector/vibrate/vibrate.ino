#include <LiquidCrystal.h>

const int rs = 2, en = 3;
LiquidCrystal lcd(rs, en, 4, 5, 6, 7);

const int buzz = 11;
const int vibrate = 12;
const int relay = 13;
char number[] = "01833905966";

byte checkpoint = 0, rxd = 0; 

void setup() {
  lcd.begin(16, 2);
  Serial.begin(115200);
  pinMode(buzz, OUTPUT);
  pinMode(relay, OUTPUT);
  pinMode(vibrate, INPUT);
  digitalWrite(buzz, LOW);
  digitalWrite(relay, LOW);
  lcd.clear();
  GSM_init();
  lcd_normal();
}

void lcd_normal(){
  lcd.setCursor(0,0);
  lcd.print("AntiVehicleTheft");
  lcd.setCursor(0,1);
  lcd.print("Relay: ");
}

void loop() {
  if(digitalRead(relay) == HIGH) {
    lcd.setCursor(7,1);
    lcd.print("ON ");
  }
  else {
    lcd.setCursor(7,1);
    lcd.print("OFF");
  }
  rxd = Serial.read();
  SMS_read();
  if(digitalRead(vibrate) == LOW){
    send_SMS();
  } 
}

void GSM_init(){
  lcd.setCursor(0,0);
  lcd.print("Connecting GSM..");
  delay(10000); 
  Serial.println("AT+IPR=9600"); 
  delay(1000);
  Serial.begin(9600);
  delay(1000);
  Serial.println("AT");
  delay(1000);
  Serial.println("ATE0");
  delay(1000);
  Serial.println("AT+CSDH=1");
  delay(1000);
  Serial.println("AT+CMGF=1");
  delay(1000);
  Serial.println("AT+CNMI=1,2,0,0,0"); 
  delay(1000);
  Serial.println("AT+CMGD=4"); 
  delay(1000);
  lcd.clear();
}

void SMS_read(){
  if(checkpoint == 0 && rxd == '+') checkpoint = 1;
  if(checkpoint == 1 && rxd == 'C') checkpoint = 2;
  if(checkpoint == 2 && rxd == 'M') checkpoint = 3;
  if(checkpoint == 3 && rxd == 'T') checkpoint = 4;

  if(checkpoint == 4 && rxd == 13) checkpoint = 5; 
  if(checkpoint == 5 && rxd == 10) checkpoint = 6;
  if(checkpoint == 6 && rxd != 10) checkpoint = 7;

  if(checkpoint == 7 && rxd == 'L') checkpoint = 8;
  if(checkpoint == 8 && rxd == 'O') checkpoint = 9;
  if(checkpoint == 9 && rxd == 'C') checkpoint = 10;
  if(checkpoint == 10 && rxd == 'K') {
     checkpoint = 0;
     digitalWrite(relay, LOW);
  }

  if(checkpoint == 7 && rxd == 'U') checkpoint = 8;
  if(checkpoint == 8 && rxd == 'N') checkpoint = 9;
  if(checkpoint == 9 && rxd == 'L') checkpoint = 10;
  if(checkpoint == 10 && rxd == 'O') checkpoint = 11;
  if(checkpoint == 11 && rxd == 'C') checkpoint = 12;
  if(checkpoint == 12 && rxd == 'K') {
     checkpoint = 0;
     digitalWrite(relay, HIGH);
  }
}

void send_SMS(){
  digitalWrite(buzz, HIGH);
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Sending SMS..");
  Serial.print("AT+CMGF=1\r\n");
  delay(200);
  Serial.print("AT+CMGS=\"");
  delay(200);
  Serial.print(number);
  Serial.print("\"\r\n");
  delay(200);
  Serial.print("Someone trying to open your door.");
  Serial.write(0x1A); 
  Serial.print("\r\n");
  delay(3000);
  lcd.clear();
  digitalWrite(buzz, LOW);
  lcd_normal();
}
