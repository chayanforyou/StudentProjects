#include <Adafruit_Fingerprint.h>
#include <EEPROM.h>
#include <Keypad.h>
#include <LiquidCrystal.h>

#define ir_1 2
#define ir_2 3
#define ir_3 4
#define pump_1 5
#define pump_2 6
#define servo_1 49 
#define servo_2 51
#define servo_3 53
#define rfid Serial3
#define gsm Serial2
#define fp_module Serial1

Adafruit_Fingerprint finger = Adafruit_Fingerprint(&fp_module);

LiquidCrystal lcd_m(47, 46, 45, 43, 41, 39);
LiquidCrystal lcd_u(8, 9, 10, 11, 12, 13);

char hexaKeys[4][4] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'*','0','#','D'}
};
byte rowPinu[4] = {31, 30, 33, 32};     
byte colPinu[4] = {35, 34, 37, 36};

byte rowPinm[4] = {29, 28, 27, 26};     
byte colPinm[4] = {25, 24, 23, 22};

Keypad keypad_u = Keypad( makeKeymap(hexaKeys), rowPinu, colPinu, 4, 4);
Keypad keypad_m = Keypad( makeKeymap(hexaKeys), rowPinm, colPinm, 4, 4);

char card[14];

const int card_01[] = {2, 48, 54, 48, 48, 67, 56, 67, 50, 70, 57, 70, 53, 3};
char number_01[] = "01764180287";
const char id_01[] = "913";
uint16_t balance_01;
 
const int card_02[] = {2, 48, 54, 48, 48, 65, 67, 51, 66, 52, 56, 68, 57, 3};
char number_02[] = "01764180287";
const char id_02[] = "176";
uint16_t balance_02;

const int card_03[] = {2, 52, 50, 48, 48, 52, 68, 49, 65, 66, 67, 65, 57, 3};
char number_03[] = "01764180287";
const char id_03[] = "844";
uint16_t balance_03;

const int card_04[] = {2, 52, 50, 48, 48, 52, 49, 70, 68, 50, 68, 68, 51, 3};
char number_04[] = "01764180287";
const char id_04[] = "813";
uint16_t balance_04;

const int card_05[] = {2, 51, 67, 48, 48, 49, 66, 48, 49, 69, 50, 67, 52, 3};
char number_05[] = "01764180287";
const char id_05[] = "482";
uint16_t balance_05;

char msg_01[] = "Recharge Successfully. Balance: ";
char msg_02[] = "Sorry, your current account balance is unsufficient. Balance: ";
char msg_03[] = "Payment successful. Happy journey. Thank you. Balance: ";

uint8_t IDs;
int tEnter = 0, tExit = 0;
 
void setup() { 
  Serial.begin(9600);
  finger.begin(57600);
  gsm.begin(9600);
  rfid.begin(9600);
  lcd_u.begin(20,4);
  lcd_m.begin(16,2);
  GSM_init();
  pinMode(ir_1, INPUT);
  pinMode(ir_2, INPUT);
  pinMode(ir_3, INPUT);
  pinMode(pump_1, OUTPUT);
  pinMode(pump_2, OUTPUT);
  pinMode(servo_1, OUTPUT);
  pinMode(servo_2, OUTPUT);
  pinMode(servo_3, OUTPUT);

  if(EEPROM.read(0) == 0xFF) EEPROM.write(0, 0);
  if(EEPROM.read(1) == 0xFF) EEPROM.write(1, 0);
  if(EEPROM.read(2) == 0xFF) EEPROM.write(2, 0);
  if(EEPROM.read(3) == 0xFF) EEPROM.write(3, 0);
  if(EEPROM.read(4) == 0xFF) EEPROM.write(4, 0);
  if(EEPROM.read(5) == 0xFF) EEPROM.write(5, 0);
  if(EEPROM.read(6) == 0xFF) EEPROM.write(6, 0);
  if(EEPROM.read(7) == 0xFF) EEPROM.write(7, 0);
  if(EEPROM.read(8) == 0xFF) EEPROM.write(8, 0);
  if(EEPROM.read(9) == 0xFF) EEPROM.write(9, 0); 
  if(EEPROM.read(10) == 0xFF) EEPROM.write(10, 0); 

  balance_01 = EEPROMread(0);
  balance_02 = EEPROMread(2);
  balance_03 = EEPROMread(4);
  balance_04 = EEPROMread(6);
  balance_05 = EEPROMread(8);

  IDs = EEPROMread(10);

  Serial.println("CLEARSHEET"); 
  Serial.println("LABEL,Time,Date,RFID header,ID#,Fuel,Bill,Status,Enter,Exit");
}

void servo90(byte servo){
  for(int x = 0; x < 50; x++){
    digitalWrite(servo, HIGH);
    delayMicroseconds(1600);
    digitalWrite(servo, LOW);
    delayMicroseconds(18400); 
  }
}
void servo20(byte servo){
  for(int x = 0; x < 27; x++){
    digitalWrite(servo, HIGH);
    delayMicroseconds(750);
    digitalWrite(servo, LOW);
    delayMicroseconds(19250);
  }
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
      show_info(match_card());
    //}
  }
  else idSuccess = false;
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

void show_info(byte id){
    lcd_u.clear(); 
    if(id == 1){
        lcd_u.setCursor(0,1);
        lcd_u.print("ID Matched. ");
        lcd_u.print(id_01);
        delay(2000);
        menu(id);
      }
    else if(id == 2){
        lcd_u.setCursor(0,1);
        lcd_u.print("ID Matched. ");
        lcd_u.print(id_02);
        delay(2000);
        menu(id);
      }
    else if(id == 3){
        lcd_u.setCursor(0,1);
        lcd_u.print("ID Matched. ");
        lcd_u.print(id_03);
        delay(2000);
        menu(id);
      } 
    else if(id == 4){
        lcd_u.setCursor(0,1);
        lcd_u.print("ID Matched. ");
        lcd_u.print(id_04);
        delay(2000);
        menu(id);
      }
    else if(id == 5){
        lcd_u.setCursor(0,1);
        lcd_u.print("ID Matched. ");
        lcd_u.print(id_05);
        delay(2000);
        menu(id);
      }    
    else {
        lcd_u.setCursor(0,1);
        lcd_u.print("Unauthorized ID");
        lcd_u.setCursor(0,3);
        lcd_u.print("Pls use Fingerprint");
        delay(2000);
      }
    lcd_u.clear(); 
  }
  
void menu(byte id){
    lcd_u.clear();
    lcd_u.print("Fuel Management Sys.");
    lcd_u.setCursor(0,1);
    lcd_u.print("A = Fuel Refill");
    lcd_u.setCursor(0,2);
    lcd_u.print("B = Check Balance");
    lcd_u.setCursor(0,3);
    lcd_u.print("C = Cancel.");
    while(1){
       char key = keypad_u.getKey();
       if(key == 'A') {refill(id); break;}
       if(key == 'B') {show_balance(id); break;}
       if(key == 'C') break;
      }
    lcd_u.clear();
  }

void show_balance(byte id){
    lcd_u.clear();
    lcd_u.print("Current Balance: ");
    if(id == 1){
        EEPROMread(balance_01);
        lcd_u.setCursor(0,2);
        lcd_u.print(balance_01);
        lcd_u.print("  TAKA");
        delay(3000);
      }
     else if(id == 2){
        EEPROMread(balance_02);
        lcd_u.setCursor(0,2);
        lcd_u.print(balance_02);
        lcd_u.print("  TAKA");
        delay(3000);
      }
      else if(id == 3){
        EEPROMread(balance_03);
        lcd_u.setCursor(0,2);
        lcd_u.print(balance_03);
        lcd_u.print("  TAKA");
        delay(3000);
      }
      else if(id == 4){
        EEPROMread(balance_04);
        lcd_u.setCursor(0,2);
        lcd_u.print(balance_04);
        lcd_u.print("  TAKA");
        delay(3000);
      }
      else if(id == 5){
        EEPROMread(balance_05);
        lcd_u.setCursor(0,2);
        lcd_u.print(balance_05);
        lcd_u.print("  TAKA");
        delay(3000);
      }
  }  

void refill(byte id){
    char text[3], x=0;
    lcd_u.clear();
    lcd_u.print("Enter Litre[1L=50TK]");
    while(1){
       char key = keypad_u.getKey(); 
       if(key >= '0' && key <= '9'){
          text[x] = key;
          lcd_u.setCursor(x,1);
          lcd_u.print(key);
          x++;
          if(x > 1) break;
          delay(300);
        }
      }
      text[2] = 0;
      int fuel = atoi(text);
      int bill = fuel * 50;
      lcd_u.setCursor(0,2);
      lcd_u.print("Bill = ");
      lcd_u.print(bill, DEC);
      lcd_u.print(" TAKA");
      lcd_u.setCursor(0,3);
      lcd_u.print("A: Confirm B: Cancel");

      Serial.print("DATA,TIME,DATE,");
      Serial.print(card);
      Serial.print(",");
      if(id == 1) Serial.print(id_01);
      if(id == 2) Serial.print(id_02);
      if(id == 3) Serial.print(id_03);
      if(id == 4) Serial.print(id_04);
      if(id == 5) Serial.print(id_05);
      Serial.print(",");
      Serial.print(fuel);
      Serial.print(",");
      Serial.print(bill);
      Serial.print(",");
      
      while(1){
         char key = keypad_u.getKey();
         if(key == 'A') {
             if(id == 1) {
                if(EEPROMread(0) >= bill){
                   balance_01 -= bill;
                   EEPROMwrite(0,balance_01);
                   send_SMS(number_01, msg_03, balance_01);
                   pump_01(fuel);
                }
                else no_balance();
              } 
              else if(id == 2) {
                if(EEPROMread(2) >= bill){
                   balance_02 -= bill;
                   EEPROMwrite(2,balance_02);
                   send_SMS(number_02, msg_03, balance_02);
                   pump_01(fuel);
                }
                else no_balance();
              } 
              else if(id == 3) {
                if(EEPROMread(4) >= bill){
                   balance_03 -= bill;
                   EEPROMwrite(4,balance_03);
                   send_SMS(number_03, msg_03, balance_03);
                   pump_01(fuel);
                }
                else no_balance();
              } 
              else if(id == 4) {
                if(EEPROMread(6) >= bill){
                   balance_04 -= bill;
                   EEPROMwrite(6,balance_04);
                   send_SMS(number_04, msg_03, balance_04);
                   pump_01(fuel);
                }
                else no_balance();
              } 
              else if(id == 5) {
                if(EEPROMread(8) >= bill){
                   balance_05 -= bill;
                   EEPROMwrite(8,balance_05);
                   send_SMS(number_05, msg_03, balance_05);
                   pump_01(fuel);
                }
                else no_balance();
              }
              Serial.println("PAID"); 
              break;
          }
         if(key == 'B') {Serial.println("Cancelled"); break;}
         
      }
    lcd_u.clear();
      
  }

void no_balance(){
    lcd_u.clear(); 
    lcd_u.setCursor(0,1);
    lcd_u.print("Unsufficient Balance");
    delay(2000);
  }  

void pump_01(byte fuel){
   lcd_u.clear(); 
   lcd_u.print("Pump_01 is ON");
   digitalWrite(pump_1,HIGH); 
   for(int x = fuel*5; x>=0; x--){
        lcd_u.setCursor(0,2); 
        lcd_u.print(x,DEC);
        lcd_u.print("  SEC ");
        delay(1000);
        }
   digitalWrite(pump_1,LOW);   
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

void GSM_init(){
  lcd_u.print("Connecting GSM..");
  lcd_m.print("Connecting GSM..");
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
  lcd_u.clear();
}

void send_SMS(char *number, char *text, int text2){
  lcd_u.clear();
  lcd_m.clear();
  lcd_u.print("Sending SMS...");
  lcd_m.print("Sending SMS...");
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
  lcd_u.clear();
  lcd_m.clear();
}

byte find_id(){
    char text[3];
    char key, x = 0;
    lcd_m.clear();
    lcd_m.print("Enter ID: ");
    while(1){
        key = keypad_m.getKey();
        if(key >= '0' && key <= '9'){
          lcd_m.setCursor(10+x,0);
          lcd_m.print(key);
          text[x] = key;
          delay(300);
          x++;
          if(x > 2) break;
        }
      }
    if(text[0] == id_01[0] && text[1] == id_01[1] && text[2] == id_01[2]) return 1;
    else if(text[0] == id_02[0] && text[1] == id_02[1] && text[2] == id_02[2]) return 2;
    else if(text[0] == id_03[0] && text[1] == id_03[1] && text[2] == id_03[2]) return 3;
    else if(text[0] == id_04[0] && text[1] == id_04[1] && text[2] == id_04[2]) return 4;
    else if(text[0] == id_05[0] && text[1] == id_05[1] && text[2] == id_05[2]) return 5;
    return 0;
  }

void recharge(){
    char text[5], key, x = 0;
    byte id = find_id();
    if(id == 0){
      lcd_m.setCursor(0, 1);
      lcd_m.print("ID not matched.");
      delay(2000);
      }
    else{
      lcd_m.clear();
      lcd_m.print("Enter Amount:[4]");
      while(1){
        key = keypad_m.getKey();
        if(key >= '0' && key <= '9'){
          lcd_m.setCursor(x, 1);
          lcd_m.print(key);
          text[x] = key;
          delay(300);
          x++;
          if(x > 3) break;
          }
        }
      text[4] = 0;
      int amount = atoi(text);
      if(id == 1){
        balance_01 += amount;
        EEPROMwrite(0, balance_01);
        send_SMS(number_01, msg_01, balance_01);
        }
      else if(id == 2){
        balance_02 += amount;
        EEPROMwrite(2, balance_02);
        send_SMS(number_02, msg_01, balance_02);
        }
      else if(id == 3){
        balance_03 += amount;
        EEPROMwrite(4, balance_03);
        send_SMS(number_03, msg_01, balance_03);
        }
      else if(id == 4){
        balance_04 += amount;
        EEPROMwrite(6, balance_04);
        send_SMS(number_04, msg_01, balance_04);
        }
      else if(id == 5){
        balance_05 += amount;
        EEPROMwrite(8, balance_05);
        send_SMS(number_05, msg_01, balance_05);
        }
    }
  }

bool fp_enroll(byte id){
  lcd_u.clear();
  lcd_m.clear();
  lcd_u.print("Put your finger...");
  lcd_m.print("New ID enrolling");
  lcd_m.setCursor(0,1);
  lcd_m.print("ID: #0");
  lcd_m.print(id);

  int p = -1;

Rescan1:
  while (p != FINGERPRINT_OK) {
    p = finger.getImage();
  }
  
  p = finger.image2Tz(1);
  if(p != FINGERPRINT_OK) goto Rescan1;

  lcd_u.setCursor(0,1);
  lcd_u.print("Remove finger...");
  p = 0;
  while (p != FINGERPRINT_NOFINGER) {
    p = finger.getImage();
  }

  lcd_u.setCursor(0,2);
  lcd_u.print("Put your finger...");

Rescan2:
  p = -1;
  while (p != FINGERPRINT_OK) {
    p = finger.getImage();
  }

  p = finger.image2Tz(2);
  if(p != FINGERPRINT_OK) goto Rescan2;

  p = finger.createModel();
  if(p != FINGERPRINT_OK){
    lcd_u.clear();
    lcd_u.setCursor(0,1);
    lcd_u.print("Finger not matched");
    lcd_u.setCursor(0,2);
    lcd_u.print("try again...");
    delay(1000);
    return 0;
  }
  p = finger.storeModel(id);

  lcd_u.setCursor(0,3);
  lcd_u.print("Finger Added..");
  delay(2000);
  return 1;
}

void download_template(byte id){
  finger.loadModel(id);
  finger.getModel();
 
  int index = 0;
  uint32_t starttime = millis();

  Serial.print("DATA,TIME,DATE,");
  
  while ((index < 256) && ((millis() - starttime) < 1000)){
    if (fp_module.available()){
      Serial.print(fp_module.read());
      index++;
    }
  }
  Serial.print(",");
}

void pump_02(byte fuel){
   lcd_u.clear(); 
   lcd_m.clear(); 
   lcd_u.print("Pump_02 is ON");
   digitalWrite(pump_2,HIGH); 
   for(int x = fuel*5; x>=0; x--){
     lcd_u.setCursor(0,2); 
     lcd_u.print(x,DEC);
     lcd_u.print("  SEC ");
     delay(1000);
   }
   digitalWrite(pump_2,LOW);   
} 

void fp_system(){
    lcd_u.clear();
    lcd_m.clear();

    if(IDs > 255) IDs = 0;
    IDs++;
//    bool add = fp_enroll(IDs);
//    if(add == 0) {
//      IDs--;
//      lcd_u.clear();
//      lcd_m.clear();
//      return;
//    }
//    download_template(IDs);

      byte x = 0;
      char text[3];
      lcd_m.clear();
      lcd_m.print("Fuel[In Litre]:");
      while(1){
        char key = keypad_m.getKey();
        if(key >= '0' && key <= '9'){
          lcd_m.setCursor(x, 1);
          lcd_m.print(key);
          text[x] = key;
          delay(300);
          x++;
          if(x > 1) break;
          }
        }
      text[2] = 0;
      int fuel = atoi(text);
      int bill = fuel * 50;

      Serial.print("DATA,TIME,DATE,---,");
      Serial.print(IDs, DEC);
      Serial.print(",");
      Serial.print(fuel, DEC);
      Serial.print(",");
      Serial.print(bill, DEC);
      Serial.print(",");

      lcd_m.clear();
      lcd_u.clear();
      lcd_u.print("Fuel: ");
      lcd_u.print(fuel, DEC);
      lcd_u.print(" Litre");
      lcd_u.setCursor(0,1);
      lcd_u.print("Bill: ");
      lcd_u.print(bill, DEC);
      lcd_u.print(" TK");
      
      lcd_m.print("Bill: ");
      lcd_m.print(bill, DEC);
      lcd_m.print(" TK");
      lcd_m.setCursor(0,1);
      lcd_m.print("*:Confirm #:Back");

      while(1){
        char key = keypad_m.getKey();
        if(key == '*') {
          pump_02(fuel);
          Serial.println("PAID"); 
          break;
        }
        if(key == '#') {
          Serial.println("Cancelled");
          break;
        }
      }
    lcd_u.clear();
    lcd_m.clear();
  }

void loop() {
  char key = keypad_m.getKey();
  lcd_u.setCursor(0,0);
  lcd_u.print("Fuel Management Sys.");
  lcd_m.setCursor(0,0);
  lcd_m.print("Fuel Manage Sys.");
  lcd_u.setCursor(4,2);
  lcd_u.print("Show Your ID");
  lcd_m.setCursor(0,1);
  lcd_m.print("*:Cash #:Rechrge");
  if(key == '#') recharge();
  if(key == '*') fp_system();
  
  get_rfid();

  if(digitalRead(ir_1) == LOW) {
    lcd_u.clear();
    lcd_u.print("Gate 01 [IN]");
    lcd_u.setCursor(0,1);
    lcd_u.print("Openning...");
    servo90(servo_1);
    lcd_u.setCursor(0,2); 
    lcd_u.print("Gate will close in");
    for(byte x = 10; x >= 0; x--) {
      lcd_u.setCursor(0, 3); 
      lcd_u.print(x, DEC);
      lcd_u.print(" sec...  ");
      delay(1000);
      if(x == 0) break;
    }
    tEnter++;
    Serial.println((String)"DATA,TIME,DATE,,,,,," + tEnter + ",");
    servo20(servo_1);
    lcd_u.clear();
  }

  if(digitalRead(ir_2) == LOW) {
    lcd_u.clear();
    lcd_u.print("Gate 02 [IN]");
    lcd_u.setCursor(0,1);
    lcd_u.print("Openning...");
    servo90(servo_2);
    lcd_u.setCursor(0,2); 
    lcd_u.print("Gate will close in");
    for(byte x = 10; x >= 0; x--) {
      lcd_u.setCursor(0, 3); 
      lcd_u.print(x, DEC);
      lcd_u.print(" sec...  ");
      delay(1000);
      if(x == 0) break;
    }
    tEnter++;
    Serial.println((String)"DATA,TIME,DATE,,,,,," + tEnter + ",");
    servo20(servo_2);
    lcd_u.clear();
  }

  if(digitalRead(ir_3) == LOW) {
    lcd_u.clear();
    lcd_u.print("Gate 01 [OUT]");
    lcd_u.setCursor(0,1);
    lcd_u.print("Openning...");
    servo90(servo_3);
    lcd_u.setCursor(0,2); 
    lcd_u.print("Gate will close in");
    for(byte x = 10; x >= 0; x--) {
      lcd_u.setCursor(0, 3); 
      lcd_u.print(x, DEC);
      lcd_u.print(" sec...  ");
      delay(1000);
      if(x == 0) break;
    }
    tExit++;
    Serial.println((String)"DATA,TIME,DATE,,,,,,," + tExit);
    servo20(servo_3);
    lcd_u.clear();
  }
}
