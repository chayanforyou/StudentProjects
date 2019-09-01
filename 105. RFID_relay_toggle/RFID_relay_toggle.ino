#include <SPI.h>
#include <MFRC522.h>

#define SS_PIN 10
#define RST_PIN 9
MFRC522 rfid(SS_PIN, RST_PIN); 
MFRC522::MIFARE_Key key; 

byte relay_pin = 2;
byte signal_pin = 3;

const int MAX_count = 5;  //change fore delay.

bool flag = false;
bool flag2 = false;
bool indic = false;
byte ID[4];
int timer = 0;

//------------------------------------- Card ID
byte card_1[4] = {0x1B, 0xE1, 0xE2, 0x2B};
byte card_2[4] = {0xA1, 0x3E, 0x96, 0xBB};
//---------------------------------------------

void setup() {
  Serial.begin(9600);
  SPI.begin(); // Init SPI bus
  rfid.PCD_Init(); // Init MFRC522
  pinMode(relay_pin, OUTPUT);
  digitalWrite(relay_pin, LOW);
  pinMode(signal_pin, OUTPUT);
  digitalWrite(signal_pin, LOW);
}

void loop() {
   if(flag == false) {digitalWrite(relay_pin, LOW);}
   else {digitalWrite(relay_pin, HIGH);} 

   card_found();
}

void card_found(){
  int x;
  while(!rfid.PICC_IsNewCardPresent()){
    if(timer < 10){
      for(x = 0; x < 1000; x++){
         delay(1);
      }
      timer++;
    }
    if(timer == MAX_count){timer = 0; flag2 = true;} 
    if(flag2 == true) indic =! indic;
    else indic = false;
    digitalWrite(signal_pin, indic);
  }
  while(!rfid.PICC_ReadCardSerial());
  
  Serial.print("Card ID: ");
  for (byte i = 0; i < 4; i++) {
    ID[i] = rfid.uid.uidByte[i];
    Serial.print(ID[i], HEX);
    Serial.print(" ");
  }
  Serial.println();
  rfid.PICC_HaltA();
  rfid.PCD_StopCrypto1();

  if(ID[0] == card_1[0] && ID[1] == card_1[1] && ID[2] == card_1[2] && ID[3] == card_1[3]){
    flag = true;
  } 
  if(ID[0] == card_2[0] && ID[1] == card_2[1] && ID[2] == card_2[2] && ID[3] == card_2[3]){
    flag = true;
  } 
  timer = 10;
  flag2 = false;
}
