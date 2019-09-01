#include <SoftwareSerial.h>
#include <LiquidCrystal.h>
#define rly_1 2 
#define rly_2 3
#define rly_3 4
#define rly_4 5
#define servo_1 6
#define servo_2 7

LiquidCrystal lcd(12, 13, 14, 15, 16, 17);
//SoftwareSerial gsm(11, 10);
#define gsm Serial
SoftwareSerial com(9, 8);

#define PASS_DIGIT 6
char pass[] = "113355";
char number_01[] = "01764180287";
char number_02[] = "01764180287";
char number_03[] = "01764180287";
char number_04[] = "01764180287";
char number_05[] = "01764180287";
char msg1[] = "Reed switch detected.";
char msg2[] = "Vibration detected.";
char msg3[] = "Motion detected.";
char msg4[] = "Finger not matched.";
char msg5[] = "Password not matched.";
char msg6[] = "Access granted.";

char reed, vibration, motion, key;
char rxd, cp;
char number[12], msg[20];
char rxd_g;
byte cp_g = 0, x = 0;
int timer = 0;
bool send_f = true;

void setup() {
  com.begin(9600);
  gsm.begin(9600);
  lcd.begin(16, 2);
  pinMode(rly_1, OUTPUT);
  pinMode(rly_2, OUTPUT);
  pinMode(rly_3, OUTPUT);
  pinMode(rly_4, OUTPUT);
  pinMode(servo_1, OUTPUT);
  pinMode(servo_2, OUTPUT);

  servo20(servo_1);
  servo20(servo_2);

  GSM_init();
}

void servo20(byte servo){
  for(int x = 0; x < 27; x++){
    digitalWrite(servo, HIGH);
    delayMicroseconds(750);
    digitalWrite(servo, LOW);
    delayMicroseconds(19250);
  }
}

void servo90(byte servo){
  for(int x = 0; x < 50; x++){
    digitalWrite(servo, HIGH);
    delayMicroseconds(1600);
    digitalWrite(servo, LOW);
    delayMicroseconds(18400);
  }
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
  //gsm.println("AT+CMGD=4"); 
  //delay(1000);
  lcd.clear();
}

void send_SMS(char *number, char *text){
  lcd.setCursor(0,0);
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

void send_SMS4(char *msg){
  lcd.clear();
  lcd.setCursor(0,1);
  lcd.print("Person 1");
  send_SMS(number_01, msg);
  lcd.setCursor(0,1);
  lcd.print("Person 2");
  send_SMS(number_02, msg);
  lcd.setCursor(0,1);
  lcd.print("Person 3");
  send_SMS(number_03, msg);
  lcd.setCursor(0,1);
  lcd.print("Person 4");
  send_SMS(number_04, msg);

  reed == '0';
  vibration = '0';
  motion = '0';
}

void receive_SMS(){ 
  if(gsm.available()){
    rxd_g = gsm.read();
    
    if(rxd_g == '+' && cp_g == 0) cp_g = 1;
    if(rxd_g == 'C' && cp_g == 1) cp_g = 2;
    if(rxd_g == 'M' && cp_g == 2) cp_g = 3;
    if(rxd_g == 'T' && cp_g == 3) cp_g = 4;

    if(rxd_g == '0' && cp_g == 4) cp_g = 5;

    if(cp_g == 5){
      number[x] = rxd_g;
      x++;
      if(x > 10){
        number[x] = 0;
        x = 0; 
        cp_g = 6;
      }
    }

    if(rxd_g == (char)13 && cp_g == 6) cp_g = 7;
    if(rxd_g == (char)10 && cp_g == 7) cp_g = 8;
  
    if(rxd_g != (char)10 && cp_g == 8) cp_g = 9;

    if(cp_g == 9){
      msg[x] = rxd_g;
      x++;
      if(rxd_g == (char)13){
        msg[x - 1] = 0;
        x = 0;
        cp_g = 0;
      }
    }
    rxd_g = 0;
  }
}

void read_input(){
  com.listen();
  if(com.available() > 0){
    rxd = com.read();
    
    if(rxd == 'A') cp = 1;
    if(cp == 1 && rxd != 'A') cp = 2;
    if(cp == 2) {reed = rxd; cp = 3;}

    if(cp == 3 && rxd == 'B') cp = 4;
    if(cp == 4 && rxd != 'B') cp = 5;
    if(cp == 5) {vibration = rxd; cp = 6;}

    if(cp == 6 && rxd == 'C') cp = 7;
    if(cp == 7 && rxd != 'C') cp = 8;
    if(cp == 8) {motion = rxd; cp = 9;}

    if(cp == 9 && rxd == 'D') cp = 10;
    if(cp == 10 && rxd != 'D') cp = 11;
    if(cp == 11) {key = rxd; cp = 0;}
  }
}

char check_finger(){
  com.listen();
  while(!com.available());
  if(com.available() > 0){
    rxd = com.read();
      
    if(rxd == 'N'){
      lcd.clear();
      lcd.setCursor(0, 1);
      lcd.print("Not matched..");
      delay(2000);
    }
    else{
      lcd.clear();
      lcd.setCursor(0, 1);
      lcd.print("ID Matched #");
      lcd.print(rxd);    
      delay(2000);
    }  
  }
  return rxd;
}

void security(){
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("put P1 finger..");
  lcd.setCursor(0, 1);
  lcd.print("Press # button");

  while(key != '#') read_input();
  key = 0;
  
  char p1 = check_finger();
  
  lcd.clear();
  if(p1 == 'N') {
    send_SMS4(msg4);
    return;
  }

  lcd.setCursor(0, 0);
  lcd.print("put P2 finger..");
  lcd.setCursor(0, 1);
  lcd.print("Press # button");
  
  while(key != '#') read_input();
  key = 0;
  
  char p2 = check_finger();
  
  lcd.clear();
  if(p2 == 'N') {
    send_SMS4(msg4);
    return;
  }
  if(p2 == p1) {
    lcd.setCursor(0, 0);
    lcd.print("Already matched");
    delay(1000);
    return;
  }

  servo90(servo_1);

  lcd.setCursor(0, 0);
  lcd.print("put P3 finger..");
  lcd.setCursor(0, 1);
  lcd.print("Press # button");
  
  while(key != '#') read_input();
  key = 0;
  
  char p3 = check_finger();
  lcd.clear();
  if(p3 == 'N') {
    servo20(servo_1);
    send_SMS4(msg4); 
    return;
  }
  if(p3 == p1 || p3 == p2) {
    lcd.setCursor(0, 0);
    lcd.print("Already matched");
    delay(1000);
    servo20(servo_1);
    return;
  }

  lcd.setCursor(0, 0);
  lcd.print("Enter Pass then#");
  key = 0;
  delay(500);
  
  byte x = 0;
  while(key != '#'){
    while(!com.available());
    if(com.available() > 0){
      rxd = com.read();
      if(rxd >= '0' && rxd <= '9') {
        key = rxd;
        lcd.setCursor(x, 1);
        lcd.print(key);
        if(key != pass[x]) {
          lcd.clear();
          lcd.setCursor(0, 1);
          lcd.print("Wrong Password!");
          delay(1000);
          send_SMS4(msg5);
          break;
        }
        x++;
        if(x > PASS_DIGIT - 1) {
          lcd.clear();
          lcd.setCursor(0, 1);
          lcd.print("Password Matched"); 
          delay(1000);
          servo90(servo_1);
          send_SMS4(msg6);
          break;
        }
      }
    }
  }
  lcd.clear();
}

void clear_sms(){
  memset(number, 0, sizeof number);
  memset(msg, 0, sizeof msg);  
}

void loop() {
  receive_SMS();
  if(strcmp(msg, "R1ON") == 0) {
    digitalWrite(rly_1, HIGH);
    clear_sms();
  }
  if(strcmp(msg, "R2ON") == 0) {
    digitalWrite(rly_2, HIGH);
    clear_sms();
  }
  if(strcmp(msg, "R3ON") == 0) {
    digitalWrite(rly_3, HIGH);
    clear_sms();
  }
  if(strcmp(msg, "R4ON") == 0) {
    digitalWrite(rly_4, HIGH);
    clear_sms();
  }
  if(strcmp(msg, "R1OFF") == 0) {
    digitalWrite(rly_1, LOW);
    clear_sms();
  }
  if(strcmp(msg, "R2OFF") == 0) {
    digitalWrite(rly_2, LOW);
    clear_sms();
  }
  if(strcmp(msg, "R3OFF") == 0) {
    digitalWrite(rly_3, LOW);
    clear_sms();
  }
  if(strcmp(msg, "R4OFF") == 0) {
    digitalWrite(rly_4, LOW);
    clear_sms();
  }

  read_input();
  lcd.setCursor(0, 0);
  lcd.print("Reed: ");
  lcd.print(reed);
  lcd.print("  Vib.: ");
  lcd.print(vibration);

  if(reed == '0' && send_f == true) {send_SMS4(msg1); send_f = false;}
  if(vibration == '1' && send_f == true) {send_SMS4(msg2); send_f = false;}
  if(motion == '1' && send_f == true) {send_SMS4(msg3); send_f = false;}

  if(send_f == false) timer++;
  if(timer == 1000) {send_f = true; timer = 0;}
  
  lcd.setCursor(0, 1);
  lcd.print("Motion: ");
  lcd.print(motion);
  lcd.print(" R:");
  if(digitalRead(rly_1) == HIGH) lcd.print("1");
  else lcd.print("0");
  if(digitalRead(rly_2) == HIGH) lcd.print("1");
  else lcd.print("0");
  if(digitalRead(rly_3) == HIGH) lcd.print("1");
  else lcd.print("0");
  if(digitalRead(rly_4) == HIGH) lcd.print("1");
  else lcd.print("0");

  if(key == '*') security();
  key = 0;
}
