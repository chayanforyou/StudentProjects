#include <EEPROM.h>
#include <SoftwareSerial.h>
#include <LiquidCrystal.h>

//                   Bike   Bus   car   Truck
const byte fee[] = { 5,     10,   15,   20 }; 

#define up_key 6
#define set_key 5
#define down_key 4
#define servo 9

LiquidCrystal lcd(A1, A0, A5, A4, A3, A2);
SoftwareSerial rfid(8, 10);
SoftwareSerial gsm(3, 2);

int card[14];
byte x;

const int card_01[] = {2, 51, 67, 48, 48, 49, 56, 48, 57, 56, 53, 65, 56, 3}; 
const char name_01[] = "A Ahemd";
char number_01[] = "01764180287";
const byte type_01 = 0;
uint16_t balance_01;

const int card_02[] = {2, 48, 54, 48, 48, 65, 67, 51, 67, 68, 51, 52, 53, 3}; 
const char name_02[] = "B Ahemd";
char number_02[] = "01764180287";
const byte type_02 = 3;
uint16_t balance_02;

const int card_03[] = {2, 51, 67, 48, 48, 49, 67, 49, 65, 52, 50, 55, 56, 3}; 
const char name_03[] = "C Ahemd";
char number_03[] = "01764180287";
const byte type_03 = 1;
uint16_t balance_03;

const int card_04[] = {2, 51, 67, 48, 48, 49, 56, 52, 48, 68, 65, 66, 69, 3};
const char name_04[] = "D Ahemd";
char number_04[] = "01764180287";
const byte type_04 = 2;
uint16_t balance_04;

const int card_05[] = {2, 51, 67, 48, 48, 49, 56, 52, 54, 55, 57, 49, 66, 3};
const char name_05[] = "E Ahemd";
char number_05[] = "01764180287";
const byte type_05 = 3;
uint16_t balance_05;

char msg01[] = "Sorry, your current account balance is unsufficient. Balance: ";
char msg02[] = "Your current account balance is:(in TAKA) ";
char msg03[] = "Payment successful. Happy journey. Thank you. Balance: ";

void setup() {
  Serial.begin(9600);
  gsm.begin(9600);
  rfid.begin(9600);
  lcd.begin(16, 2);

  pinMode(servo, OUTPUT);
  pinMode(up_key, INPUT);
  pinMode(set_key, INPUT);
  pinMode(down_key, INPUT);

  servo20();
  GSM_init();

  balance_01 = EEPROMread(0);
  balance_02 = EEPROMread(2);
  balance_03 = EEPROMread(4);
  balance_04 = EEPROMread(6);
  balance_05 = EEPROMread(8);
  
  Serial.println("ID No.    | ID Header                    | Name                | Number        | Type   | Balance    |");
  Serial.println("-----------------------------------------------------------------------------------------------------");
}

void type_print(byte tp){
  if(tp == 0) Serial.print("BIKE");
  if(tp == 1) Serial.print("BUS");
  if(tp == 2) Serial.print("CAR");
  if(tp == 3) Serial.print("TRUCK");
}

void show_fee(byte tp){
  lcd.print(" Fee: $");
  lcd.print(fee[tp], DEC);
}

void gate_service(){
  servo90();
  x = 10;
  lcd.clear();
  lcd.print("Gate lock in..");
  while (x > 0){
    lcd.setCursor(0, 1);
    lcd.print(x, DEC);
    lcd.print("  sec.");
    delay(1000);
    x--;
  }
  servo20();
  lcd.clear();
}

void no_balance(){
  lcd.clear();
  lcd.print("Unsufficient A/C"); 
  lcd.setCursor(0, 1);
  lcd.print("Pay physically?");
  while(1){
    if(digitalRead(up_key) == true) {gate_service(); break;}
    if(digitalRead(down_key) == true) break;
  }
  lcd.clear();
}

void print_info(byte ID){
  if(ID == 0){
    Serial.print("N/A\t   ");
    for(int x = 0; x < 14; x++) Serial.print(card[x], DEC);
    Serial.print("\t  N/A\t\t\t");
    Serial.print("N/A\t\t");
    Serial.print("N/A\t");
    Serial.print(" N/A\n");

    lcd.clear();
    lcd.print("Unauthorized ID.");
    lcd.setCursor(0, 1);
    lcd.print("Pay physically?");
    while(1){
      if(digitalRead(up_key) == true) {gate_service(); break;}
      if(digitalRead(down_key) == true) break;
    }
    lcd.clear();
  }
  else if(ID == 1){
    Serial.print("A-345\t   ");
    for(int x = 0; x < 14; x++) Serial.print(card[x], DEC);
    Serial.print("\t  ");
    Serial.print(name_01);
    Serial.print("\t\t");
    Serial.print(number_01);
    Serial.print("\t");
    type_print(type_01);
    Serial.print("\t ");
    Serial.print(balance_01, DEC);
    Serial.println();

    lcd.clear();
    lcd.print("Card ID A-345");
    lcd.setCursor(0,1);
    lcd.print("$");
    lcd.print(balance_01, DEC);
    show_fee(type_01);
    delay(2000);
    lcd.clear();

    if(balance_01 >= fee[type_01]) {
      gate_service();
      send_SMS(number_01, msg03, balance_01);
      balance_01 -= fee[type_01];
    }
    else {
      send_SMS(number_01, msg01, balance_01);
      no_balance();
    }
  }
  else if(ID == 2){
    Serial.print("F-234\t   ");
    for(int x = 0; x < 14; x++) Serial.print(card[x], DEC);
    Serial.print("\t  ");
    Serial.print(name_02);
    Serial.print("\t\t");
    Serial.print(number_02);
    Serial.print("\t");
    type_print(type_02);
    Serial.print("\t ");
    Serial.print(balance_02, DEC);
    Serial.println();

    lcd.clear();
    lcd.print("Card ID F-234");
    lcd.setCursor(0,1);
    lcd.print("$");
    lcd.print(balance_02, DEC);
    show_fee(type_02);
    delay(2000);
    lcd.clear();

    if(balance_02 >= fee[type_02]) {
      gate_service();
      send_SMS(number_02, msg03, balance_02);
      balance_02 -= fee[type_02];
    }
    else {
      send_SMS(number_02, msg01, balance_02);
      no_balance();
    }
  }
  else if(ID == 3){
    Serial.print("G-456\t   ");
    for(int x = 0; x < 14; x++) Serial.print(card[x], DEC);
    Serial.print("\t  ");
    Serial.print(name_03);
    Serial.print("\t\t");
    Serial.print(number_03);
    Serial.print("\t");
    type_print(type_03);
    Serial.print("\t ");
    Serial.print(balance_03, DEC);
    Serial.println();

    lcd.clear();
    lcd.print("Card ID G-456");
    lcd.setCursor(0,1);
    lcd.print("$");
    lcd.print(balance_03, DEC);
    show_fee(type_03);
    delay(2000);
    lcd.clear();

    if(balance_03 >= fee[type_03]) {
      gate_service();
      send_SMS(number_03, msg03, balance_03);
      balance_03 -= fee[type_03];
    }
    else {
      send_SMS(number_03, msg01, balance_03);
      no_balance();
    }
  }
  else if(ID == 4){
    Serial.print("D-867\t   ");
    for(int x = 0; x < 14; x++) Serial.print(card[x], DEC);
    Serial.print("\t  ");
    Serial.print(name_04);
    Serial.print("\t\t");
    Serial.print(number_04);
    Serial.print("\t");
    type_print(type_04);
    Serial.print("\t ");
    Serial.print(balance_04, DEC);
    Serial.println();

    lcd.clear();
    lcd.print("Card ID D-867");
    lcd.setCursor(0,1);
    lcd.print("$");
    lcd.print(balance_04, DEC);
    show_fee(type_04);
    delay(2000);
    lcd.clear();

    if(balance_04 >= fee[type_04]) {
      gate_service();
      send_SMS(number_04, msg03, balance_04);
      balance_04 -= fee[type_04];
    }
    else {
      send_SMS(number_04, msg01, balance_04);
      no_balance();
    }
  }
  else if(ID == 5){
    Serial.print("K-367\t   ");
    for(int x = 0; x < 14; x++) Serial.print(card[x], DEC);
    Serial.print("\t  ");
    Serial.print(name_05);
    Serial.print("\t\t");
    Serial.print(number_05);
    Serial.print("\t");
    type_print(type_05);
    Serial.print("\t ");
    Serial.print(balance_05, DEC);
    Serial.println();

    lcd.clear();
    lcd.print("Card ID K-367");
    lcd.setCursor(0,1);
    lcd.print("$");
    lcd.print(balance_05, DEC);
    show_fee(type_05);
    delay(2000);
    lcd.clear();

    if(balance_05 >= fee[type_05]) {
      gate_service();
      send_SMS(number_05, msg03, balance_05);
      balance_05 -= fee[type_05];
    }
    else {
      send_SMS(number_05, msg01, balance_05);
      no_balance();
    }
  }
}

byte match_card(){
  byte matched;
  
  matched = 1;
  for(int x = 0; x < 14; x++) if(card_01[x] != card[x]) {matched = 0; break;}
  if(matched != 0) return matched;
  
  matched = 2;
  for(int x = 0; x < 14; x++) if(card_02[x] != card[x]) {matched = 0; break;}
  if(matched != 0) return matched;
  
  matched = 3;
  for(int x = 0; x < 14; x++) if(card_03[x] != card[x]) {matched = 0; break;}
  if(matched != 0) return matched;
  
  matched = 4;
  for(int x = 0; x < 14; x++) if(card_04[x] != card[x]) {matched = 0; break;}
  if(matched != 0) return matched;
  
  matched = 5;
  for(int x = 0; x < 14; x++) if(card_05[x] != card[x]) {matched = 0; break;}
  return matched;
}

void get_rfid(){
  bool newCard = false;
  static int temp[14];
  static bool idSuccess;
  
  if(rfid.available() > 0){
    if(idSuccess == true) {
      for(int x = 0; x < rfid.available(); x++) rfid.read();
      return;
    }
    
    for(int x = 0; x < 14; x++) {
      temp[x] = rfid.read();
      delay(10);
    } 

    if(temp[0] == 2 && temp[13] == 3) idSuccess = true;
    //for(int x = 0; x < 14; x++) if(temp[x] != card[x]) newCard = true;
    
    //if(newCard == true){
      for(int x = 0; x < 14; x++) card[x] = temp[x];
      //for(int x = 0; x < 14; x++) Serial.println((String)card[x] + ", ");
      print_info(match_card());
    //}
  }
  else idSuccess = false;
}

void servo20(){
  for(int x = 0; x < 27; x++){
    digitalWrite(servo, HIGH);
    delayMicroseconds(750);
    digitalWrite(servo, LOW);
    delayMicroseconds(19250);
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

void send_SMS(char *number, char *text, int text2){
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
  gsm.print(text2, DEC);
  gsm.write(0x1A); 
  gsm.print("\r\n");
  delay(3000);
  lcd.clear();
}

uint16_t EEPROMread(byte adrs){
  byte one = EEPROM.read(adrs);
  byte two = EEPROM.read(adrs + 1);
  return (two << 8) + one;
}

void EEPROMwrite(byte adrs, uint16_t value){
  byte one = value;
  byte two = value >> 8;

  EEPROM.write(adrs, one);
  EEPROM.write(adrs + 1, two);
}

void set_balance(){
  lcd.clear();
  lcd.print("ID#01 Balance:");
  delay(1000);
  while(digitalRead(set_key) == false){
    lcd.setCursor(0, 1);
    lcd.print(balance_01, DEC);
    lcd.print("    ");

    if(digitalRead(up_key) == true) {balance_01++; delay(300);}
    if(digitalRead(down_key) == true) {balance_01--; delay(300);}
  }
  EEPROMwrite(0, balance_01);
  send_SMS(number_01, msg02, balance_01);
  
  lcd.clear();
  lcd.print("ID#02 Balance:");
  delay(1000);
  while(digitalRead(set_key) == false){
    lcd.setCursor(0, 1);
    lcd.print(balance_02, DEC);
    lcd.print("    ");

    if(digitalRead(up_key) == true) {balance_02++; delay(300);}
    if(digitalRead(down_key) == true) {balance_02--; delay(300);}
  }
  EEPROMwrite(2, balance_02);
  send_SMS(number_02, msg02, balance_02);

  lcd.clear();
  lcd.print("ID#03 Balance:");
  delay(1000);
  while(digitalRead(set_key) == false){
    lcd.setCursor(0, 1);
    lcd.print(balance_03, DEC);
    lcd.print("    ");

    if(digitalRead(up_key) == true) {balance_03++; delay(300);}
    if(digitalRead(down_key) == true) {balance_03--; delay(300);}
  }
  EEPROMwrite(4, balance_03);
  send_SMS(number_03, msg02, balance_03);

  lcd.clear();
  lcd.print("ID#04 Balance:");
  delay(1000);
  while(digitalRead(set_key) == false){
    lcd.setCursor(0, 1);
    lcd.print(balance_04, DEC);
    lcd.print("    ");

    if(digitalRead(up_key) == true) {balance_04++; delay(300);}
    if(digitalRead(down_key) == true) {balance_04--; delay(300);}
  }
  EEPROMwrite(6, balance_04);
  send_SMS(number_04, msg02, balance_04);

  lcd.clear();
  lcd.print("ID#05 Balance:");
  delay(1000);
  while(digitalRead(set_key) == false){
    lcd.setCursor(0, 1);
    lcd.print(balance_05, DEC);
    lcd.print("    ");

    if(digitalRead(up_key) == true) {balance_05++; delay(300);}
    if(digitalRead(down_key) == true) {balance_05--; delay(300);}
  }
  EEPROMwrite(8, balance_05);
  send_SMS(number_05, msg02, balance_05);
  lcd.clear();
  delay(1000);
}

void loop() {
  get_rfid();
  lcd.print("Digital Toll sys");
  lcd.setCursor(0,1);
  lcd.print("show ur card..  ");

  if(digitalRead(set_key) == true) set_balance();
}
