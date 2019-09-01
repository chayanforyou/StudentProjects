#include <LiquidCrystal.h>

#define R1K 4
#define R2K 2
#define R3K 5
#define R6K 3
#define Y1K 8
#define Y2K 6
#define Y3K 9
#define Y6K 7
#define B1K 13
#define B2K 11
#define B3K 12
#define B6K 10

LiquidCrystal lcd(A4, A2, A0, A1, A3, A5);

bool sms_flag1 = false;
bool sms_flag2 = false;
bool sms_flag3 = false;

void setup() {
  Serial.begin(115200);
  lcd.begin(16, 2);
  GSM_init();
  default_lcd();
  pinMode(R1K, INPUT);
  pinMode(R2K, INPUT);
  pinMode(R3K, INPUT);
  pinMode(R6K, INPUT);
  pinMode(Y1K, INPUT);
  pinMode(Y2K, INPUT);
  pinMode(Y3K, INPUT);
  pinMode(Y6K, INPUT);
  pinMode(B1K, INPUT);
  pinMode(B2K, INPUT);
  pinMode(B3K, INPUT);
  pinMode(B6K, INPUT);
}

void loop() {
  lcd.setCursor(2, 1);
  if(digitalRead(R1K) == LOW) {lcd.print("1K"); if(sms_flag1 == false) send_SMS(0);}
  else if(digitalRead(R2K) == LOW) {lcd.print("2K"); if(sms_flag1 == false) send_SMS(1);}
  else if(digitalRead(R3K) == HIGH) {lcd.print("3K"); if(sms_flag1 == false) send_SMS(2);} 
  else if(digitalRead(R6K) == HIGH) {lcd.print("6K"); if(sms_flag1 == false) send_SMS(3);}
  else {lcd.print("NF"); sms_flag1 = false;} 

  lcd.setCursor(8, 1);
  if(digitalRead(Y1K) == LOW) {lcd.print("1K"); if(sms_flag2 == false) send_SMS(4);}
  else if(digitalRead(Y2K) == LOW) {lcd.print("2K"); if(sms_flag2 == false) send_SMS(5);}
  else if(digitalRead(Y3K) == HIGH) {lcd.print("3K"); if(sms_flag2 == false) send_SMS(6);}
  else if(digitalRead(Y6K) == HIGH) {lcd.print("6K"); if(sms_flag2 == false) send_SMS(7);}
  else {lcd.print("NF"); sms_flag2 = false;}  

  lcd.setCursor(14, 1);
  if(digitalRead(B1K) == LOW) {lcd.print("1K"); if(sms_flag3 == false) send_SMS(8);}
  else if(digitalRead(B2K) == LOW) {lcd.print("2K"); if(sms_flag3 == false) send_SMS(9);}
  else if(digitalRead(B3K) == HIGH) {lcd.print("3K"); if(sms_flag3 == false) send_SMS(10);} 
  else if(digitalRead(B6K) == HIGH) {lcd.print("6K"); if(sms_flag3 == false) send_SMS(11);}
  else {lcd.print("NF"); sms_flag3 = false;} 
}

void GSM_init(){
  lcd.setCursor(0,0);
  lcd.print("Connecting GSM..");
  delay(10000); 
  Serial.println("AT");
  delay(5000);
  Serial.println("ATE0");
  delay(1000);
  Serial.println("AT+CMGF=1");
  delay(1000);
  Serial.println("AT+CNMI=0,2,0,0,0"); 
  delay(1000);
  lcd.clear();
}

void send_SMS(byte num){
  lcd.clear();
  lcd.setCursor(0, 1);
  lcd.print("Sending SMS.."); 
  Serial.println("AT+CMGF=1");
  delay(1000);
  Serial.println("AT+CMGS=\"01764180287\"");  //Change the number here.
  delay(1000);
  Serial.print("Fault found in: ");
  if(num == 0) Serial.print("R 1K.");
  if(num == 1) Serial.print("R 2K.");
  if(num == 2) Serial.print("R 3K.");
  if(num == 3) Serial.print("R 6K.");
  if(num == 4) Serial.print("Y 1K.");
  if(num == 5) Serial.print("Y 2K.");
  if(num == 6) Serial.print("Y 3K.");
  if(num == 7) Serial.print("Y 6K.");
  if(num == 8) Serial.print("B 1K.");
  if(num == 9) Serial.print("B 2K.");
  if(num == 10) Serial.print("B 3K.");
  if(num == 11) Serial.print("B 6K.");
  Serial.write(0x1A); 
  Serial.println();
  delay(5000);
  lcd.clear();
  sms_flag1 = true;
  sms_flag2 = true; 
  sms_flag3 = true; 
  default_lcd();
}

void default_lcd(){
  lcd.setCursor(0, 0);
  lcd.print("UGFaultDetection"); 
  lcd.setCursor(0, 1);
  lcd.print("R:"); 
  lcd.setCursor(6, 1);
  lcd.print("Y:");
  lcd.setCursor(12, 1);
  lcd.print("B:");
}
