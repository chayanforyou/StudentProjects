
//Contributed by Antor Ahmed.

#include <LiquidCrystal.h>
#include <SoftwareSerial.h>
#include <SPI.h>
#include <MFRC522.h>

#define SS_PIN 10
#define RST_PIN 9

SoftwareSerial SIM(3, 2); //RX, TX
LiquidCrystal lcd(14,15,16,17,18,19);
MFRC522 rfid(SS_PIN, RST_PIN); 
MFRC522::MIFARE_Key key; 

char rx;
byte ID[4];
boolean flag_1 = false; 
boolean flag_2 = false; 
boolean flag_3 = false; 
boolean flag_4 = false; 
boolean flag_5 = false; 

//------------------------------------- Card ID
byte student_1[4] = {0x35, 0x26, 0x74, 0x63};
byte student_2[4] = {0x25, 0xFC, 0x7C, 0x63};
byte student_3[4] = {0xBE, 0xB3, 0x12, 0xBB};

byte sir[4] = {0x5C, 0x11, 0x3E, 0x22};
//---------------------------------------------

//--------------------------------- Information
char name_1[] = "AL AMIN"; 
char roll_1[] = "Roll: 2292";
char num_1[] = "01920091581";

char name_2[] = "ARUN KUMAR";
char roll_2[] = "Roll: 2301";
char num_2[] = "01911870281";

char name_3[] = "ASHRAFUN NESA";
char roll_3[] = "Roll: 2313";
char num_3[] = "01788628373";

char name_4[] = "MAHABUBUL HAYE";
char roll_4[] = "EEE lecturer";

char text1[] = "Your children is entered in the college just now.";
char text2[] = "Your children is leaving college.";
//---------------------------------------------

void setup() { 
  lcd.begin(16, 2);
  Serial.begin(9600);
  SIM.begin(9600);
  SPI.begin(); // Init SPI bus
  rfid.PCD_Init(); // Init MFRC522
  lcd.clear();
  delay(1000);
}
 
void loop() {
  lcd.setCursor(0,0);
  lcd.print("RFID Attendence ");
  lcd.setCursor(0,1);
  lcd.print("Enter your card ");

  card_found();
}

void card_found(){
    while(!rfid.PICC_IsNewCardPresent());
    while(!rfid.PICC_ReadCardSerial());
  
  Serial.print("Card ID: ");
  for (byte i = 0; i < 4; i++) {
    ID[i] = rfid.uid.uidByte[i];
    Serial.print(ID[i], HEX);
    Serial.print(" ");
  }
  Serial.println();
  lcd.clear();
  over();

  if(student_1[0] == ID[0] && student_1[3] == ID[3]){  //Student_1
    lcd.setCursor(0,0);
    lcd.print(name_1);
    lcd.setCursor(0,1);
    lcd.print(roll_1);
    delay(2000);
    
    if(flag_1 == false){
      show_in();
      send_SMS_in(num_1);
      }
    else{
      show_out();
      send_SMS_out(num_1);
      } 
    flag_1 = !flag_1; 
    goto found_someone;
    }

    if(student_2[0] == ID[0] && student_2[3] == ID[3]){  //Student_2
    lcd.setCursor(0,0);
    lcd.print(name_2);
    lcd.setCursor(0,1);
    lcd.print(roll_2);
    delay(2000);
    
    if(flag_2 == false){
      show_in();
      send_SMS_in(num_2);
      }
    else{
      show_out();
      send_SMS_out(num_2);
      } 
    flag_2 = !flag_2; 
    goto found_someone;
    }

    if(student_3[0] == ID[0] && student_3[3] == ID[3]){  //Student_3
    lcd.setCursor(0,0);
    lcd.print(name_3);
    lcd.setCursor(0,1);
    lcd.print(roll_3);
    delay(2000);
    
    if(flag_3 == false){
      show_in();
      send_SMS_in(num_3);
      }
    else{
      show_out();
      send_SMS_out(num_3);
      } 
    flag_3 = !flag_3; 
    goto found_someone;
    }

    if(sir[0] == ID[0] && sir[3] == ID[3]){  //Sir
    lcd.setCursor(0,0);
    lcd.print(name_4);
    lcd.setCursor(0,1);
    lcd.print(roll_4);
    delay(2000);
    
    if(flag_4 == false){
      lcd.clear();
      lcd.setCursor(0,0);
      lcd.print("Sir entered.");
      delay(1000);
      }
    else{
      lcd.clear();
      lcd.setCursor(0,0);
      lcd.print("Sir left.");
      delay(1000);
      } 
    flag_4 = !flag_4; 
    goto found_someone;
    }

    lcd.clear();
    lcd.setCursor(0,0);
    lcd.print("Unauthorised");
    lcd.setCursor(0,1);
    lcd.print("Perseon...");
    delay(2000);
    
 found_someone:
 return;  
}

void show_in(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Student entered.");  
  lcd.setCursor(0,1);
  lcd.print("Sending SMS..."); 
}

void show_out(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Student left.");  
  lcd.setCursor(0,1);
  lcd.print("Sending SMS..."); 
}

void over(){
  rfid.PICC_HaltA();
  rfid.PCD_StopCrypto1();
  lcd.clear();
}

void send_SMS_in(char *number){
  SIM.print("AT+CMGF=1\r\n");
  delay(200);
  SIM.print("AT+CMGS=");
  delay(200);
  SIM.print("\"");
  SIM.print(number);
  SIM.print("\"\r\n");
  delay(200);
  SIM.print(text1);
  SIM.write(0x1A); 
  SIM.print("\r\n");
  delay(5000);
}

void send_SMS_out(char *number){
  SIM.print("AT+CMGF=1\r\n");
  delay(200);
  SIM.print("AT+CMGS=");
  delay(200);
  SIM.print("\"");
  SIM.print(number);
  SIM.print("\"\r\n");
  delay(200);
  SIM.print(text2);
  SIM.write(0x1A); 
  SIM.print("\r\n");
  delay(5000);
}

