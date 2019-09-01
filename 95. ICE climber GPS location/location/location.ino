#include <LiquidCrystal.h>
#include <SoftwareSerial.h>

SoftwareSerial serial(2,3);
LiquidCrystal lcd(4, 5, 6, 7, 8, 9);

char rxd, cp = 0, cp2 = 0, x = 0;
char longi[10];
char lati[10];
int timer = 0;

char number[] = "01729956870";

void setup() {
  Serial.begin(9600);
  serial.begin(9600);
  lcd.begin(16, 2);
  lcd.clear();
  delay(2000);
  GSM_init();   
}

void loop() {
  lcd.setCursor(0,0);
  lcd.print("La: ");
  lcd.print(lati);
  lcd.setCursor(0,1);
  lcd.print("Lo: ");
  lcd.print(longi);
     
  SMS_read();
  if(timer == 0) Get_Location();
  timer++;
  if(timer == 10000) timer = 0;              
}

void Get_Location(){ 
  memset(longi, 0, sizeof(longi));
  memset(lati, 0, sizeof(lati));
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Finding Location");
  lcd.setCursor(0,1);
  lcd.print("Please wait...");
  Serial.println("Finding Location");
  
  serial.println("AT+CIPGSMLOC=1,1");
  receive_loc();
  
  lcd.clear();
  Serial.println("Lacation Read OK.");
}

void receive_loc(){
  while(!serial.available());
  while(serial.available()){
    rxd = serial.read();

    if(cp == 0 && rxd == 'L') cp = 1;
    if(cp == 1 && rxd == 'O') cp = 2;
    if(cp == 2 && rxd == 'C') cp = 3;
    if(cp == 3 && rxd == ':') cp = 4;

    if(cp == 4 && rxd == ',') cp = 5;
    if(cp == 5 && rxd != ',') cp = 6;

    if(cp == 6){
      if(rxd != ','){
        longi[x] = rxd;
        x++;
      }
      else {
        cp = 7;
        x = 0;
      }
    }
    
    if(cp == 7 && rxd == ',') cp = 8;
    if(cp == 8 && rxd != ',') cp = 9; 
    
    if(cp == 9){
      if(rxd != ','){
        lati[x] = rxd;
        x++;
      }
      else {
        cp = 0;
        x = 0;
      }
    }
  }
  Serial.println(lati);
  Serial.println(longi);
  if(lati[0] == 0 || longi[0] == 0) Get_Location();
}

void SMS_read(){
  if(serial.available()){
    rxd = serial.read();
    if(cp2 == 0 && rxd == '+') cp2 = 1;
    if(cp2 == 1 && rxd == 'C') cp2 = 2;
    if(cp2 == 2 && rxd == 'M') cp2 = 3;
    if(cp2 == 3 && rxd == 'T') cp2 = 4;

    if(cp2 == 4 && rxd == 13) cp2 = 5; 
    if(cp2 == 5 && rxd == 10) cp2 = 6;
    if(cp2 == 6 && rxd != 10) cp2 = 7;
  
    if(cp2 == 7 && rxd == 'L') cp2 = 8;
    if(cp2 == 8 && rxd == 'O') cp2 = 9;
    if(cp2 == 9 && rxd == 'C') cp2 = 10;
    if(cp2 == 10 && rxd == 'A') {
       cp2 = 0;
       send_SMS();    
    }
  }
}

void send_SMS(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Sending SMS..");
  
  serial.print("AT+CMGF=1\r\n");
  delay(1000);
  serial.print("AT+CMGS=\"");
  serial.print(number);
  serial.print("\"\r\n");
  delay(1000);
  serial.print("Latitude: ");
  serial.println(lati);
  serial.print("Longitude: ");
  serial.println(longi);
  
  serial.write(0x1A); 
  serial.print("\r\n");
  delay(3000);
  
  lcd.clear();
}

void GSM_init(){
  lcd.clear();
  lcd.print("GSM Init...");
  Serial.println("GSM Init...");
  delay(10000);
  
  serial.println("AT");
  delay(1000);
  serial.println("AT+CMGF=1");
  delay(1000);
  serial.println("AT+CNMI=1,2,0,0,0");
  delay(1000);
  serial.println("AT+SAPBR=1,1");
  delay(3000);
  
  Serial.println("GSM Init OK.");
  lcd.clear();
  lcd.print("GSM Init OK.");
}
