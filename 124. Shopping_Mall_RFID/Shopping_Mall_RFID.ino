#include <LiquidCrystal.h>

#define rfid Serial2
#define rfid2 Serial3
#define zigbee Serial1

LiquidCrystal lcd(A0, A1, A2, A3, A4, A5);
#define buzzer 7

#define cartID "L001"
#define TOTAL_PRODUCTS 3

const byte cards[][14] = {{2, 52, 52, 48, 48, 49, 69, 56, 66, 56, 50, 53, 51, 3},
                          {2, 52, 52, 48, 48, 49, 69, 57, 54, 67, 70, 48, 51, 3},
                          {2, 52, 52, 48, 48, 49, 70, 49, 69, 67, 55, 56, 50, 3}};

String products[][2] = {{"Potato Chips    ", "45"},
                        {"KT Biscuits     ", "25"},
                        {"Kitkat Choco    ", "75"}};

int totalBill = 0;
byte addedToCart[TOTAL_PRODUCTS] = {0};
byte temp[14], rxd;

void setup() {
  Serial.begin(9600);
  rfid.begin(9600);
  rfid2.begin(9600);
  zigbee.begin(9600);
  lcd.begin(16, 2);

  pinMode(buzzer, OUTPUT);
  digitalWrite(buzzer, 0);

  lcd.setCursor(0, 0);
  lcd.print("-Shopping Cart-");
  lcd.setCursor(0, 1);
  lcd.print((String)"Cart ID: " + cartID);
  delay(1500);
}

void loop() {
  get_rfid();
  get_rfid2();
  checkZigbee();

  lcd.setCursor(0, 0);
  lcd.print((String)"BILL: " + totalBill + "TK       ");
  lcd.setCursor(0, 1);
  lcd.print("put a product.. ");
}

void checkZigbee(){
  byte sr = 1;
  int bill = 0;
  while(zigbee.available() > 0){
    String txt = zigbee.readString();
    Serial.println(txt);

    if(txt.indexOf(cartID) != -1){
      zigbee.println();
      zigbee.println("RESPONSE FROM: CART L001");
      zigbee.println();
      zigbee.println();
      zigbee.println("----- XY SHOPPING MALL -----");
      zigbee.println("      Products        Prize");
      zigbee.println("---------------------------------");
      for(byte x = 0; x < TOTAL_PRODUCTS; x++){
        if(addedToCart[x] == 1){
          zigbee.println((String)sr + ". " + products[x][0] + products[x][1] + "TK");
          bill += products[x][1].toInt();
          sr++;
        }
      }
      zigbee.println("---------------------------------");
      zigbee.println((String)"TOTAL BILL = \t" + bill + "TK");
    }
  }
}

void get_rfid(){
  static byte temp[14];
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
    
    Serial.print("TAG: ");
    for(int x = 0; x < 14; x++){
      Serial.print(temp[x]);
      if(x != 13) Serial.print(", ");
    }
    Serial.println();
 
    int tag = match_card(temp);
    if(tag != -1 && addedToCart[tag] == 0){
      Serial.print("TAG Matched with ID #0");
      Serial.println(tag);

      lcd.setCursor(0, 1);
      lcd.print(products[tag][0]);
      lcd.setCursor(11, 0);
      lcd.print((String)products[tag][1] + "TK");
      int prize = products[tag][1].toInt();
      totalBill += prize;
      addedToCart[tag] = 1;
      delay(1000);
    }
    else if(tag != -1 && addedToCart[tag] == 1){
      Serial.print("TAG Matched with ID #0");
      Serial.println(tag);

      lcd.setCursor(0, 1);
      lcd.print(products[tag][0]);
      lcd.setCursor(11, 0);
      lcd.print((String)products[tag][1] + "TK");
      int prize = products[tag][1].toInt();
      totalBill -= prize;
      addedToCart[tag] = 0;
      delay(1000);
    }
  }
  else idSuccess = false;
}

void get_rfid2(){
  static byte temp[14];
  static bool idSuccess;
  
  if(rfid2.available() > 0){
    if(idSuccess == true) {
      for(int x = 0; x < rfid2.available(); x++) rfid2.read();
      return;
    }
    
    for(int x = 0; x < 14; x++) {
      temp[x] = rfid2.read();
      delay(10);
    } 

    if(temp[0] == 2 && temp[13] == 3) idSuccess = true;
    
    Serial.print("TAG: ");
    for(int x = 0; x < 14; x++){
      Serial.print(temp[x]);
      if(x != 13) Serial.print(", ");
    }
    Serial.println();

    int tag = match_card(temp);
    if(tag != -1 && addedToCart[tag] == 0){
      Serial.print("Unlisted product found ID #0");
      Serial.println(tag);
      
      lcd.setCursor(0, 0);
      lcd.print("                ");
      lcd.setCursor(0, 1);
      lcd.print("Unlisted product");
      
      digitalWrite(buzzer, 1);
      delay(1500);
      digitalWrite(buzzer, 0);
    }
    else if(tag != -1 && addedToCart[tag] == 1){
      lcd.setCursor(0, 0);
      lcd.print("Verified Product");
      lcd.setCursor(0, 1);
      lcd.print("                ");
      delay(1500);
    }
  }
  else idSuccess = false;
}

int match_card(byte card[14]){
  int matched;

  for(byte i = 0; i < TOTAL_PRODUCTS; i++){   
    matched = i;
    for(byte j = 0; j < 14; j++){
      if(cards[i][j] != card[j]) {matched = -1; break;}
    }
    if(matched != -1) return matched;
  }
  return -1;
}
