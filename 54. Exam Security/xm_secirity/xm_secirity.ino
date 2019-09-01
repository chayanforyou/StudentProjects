#include <LiquidCrystal.h>
#include <Keypad.h>

#define button A3
#define buzzer 9
#define led 2

const char num1[] = "01764180287";

#define PASSDIGIT 6
const char password[PASSDIGIT] = "123456";

LiquidCrystal lcd(8,7,6,5,4,3);

char hexaKeys[4][3] = {
  {'1','2','3'},
  {'4','5','6'},
  {'7','8','9'},
  {'*','0','#'}
};

byte rowPins[4] = {A2, A1, A0, 15}; //connect to the row pinouts of the keypad
byte colPins[4] = {14, 16, 10}; //connect to the column pinouts of the keypad
Keypad key = Keypad( makeKeymap(hexaKeys), rowPins, colPins, 4, 3); 

char kp;
byte hh, mm, ss;
bool timer_f;
char rxd, cp = 0, cp2 = 0, x = 0;
char longi[10];
char lati[10];
int timer = 0;
bool smsFlag;
bool openAllowed;

void setup() {
  Serial.begin(9600);
  lcd.begin(16, 2);
  pinMode(button, INPUT);
  pinMode(buzzer, OUTPUT);
  pinMode(led, OUTPUT);

  digitalWrite(buzzer, 0);
  openAllowed = false;
  GSM_init();
}

void loop() {
  kp = key.getKey();
  
  lcd.setCursor(0,0);
  lcd.print("-Exam Security-");

  if(kp == '*') {
    bool check = securityPass();
    if(check == true) openAllowed = true;
    else{
      digitalWrite(buzzer, 1);
      send_SMS(num1);
    }
  }

  lcd.setCursor(0,1);
  if(!openAllowed) lcd.print("PROTECTED... ");
  else lcd.print("NON PROTECTED");

  if(!openAllowed && !digitalRead(button)){
    digitalWrite(buzzer, 1);
    send_SMS(num1);
  }

  if(openAllowed && !digitalRead(button)) {
    while(!digitalRead(button));
    openAllowed = false;
  }

  //if(timer == 0) Get_Location();
  timer++;
  if(timer == 10) digitalWrite(buzzer, 0);
  if(timer == 300) timer = 0; 
  delay(1000);
}

bool securityPass(){
  lcd.clear();
  lcd.print("Enter Pass:");
  delay(300);

  bool matched = true;
  for(int x = 0; x < PASSDIGIT; x++){
    kp = key.waitForKey();
    if(kp != password[x]) {
      matched = false; 
      lcd.clear();
      lcd.print("Wrong Password!");
      delay(2000);
      break;
    }
    lcd.setCursor(x, 1);
    lcd.print(kp);
  }
  lcd.clear();
  return matched;
}

void set_time(){
  char digit[] = "00:00", x = 0;
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Set time: HH:MM");
  lcd.setCursor(0,1);
  lcd.print(digit);
  lcd.blink();

  while(1){
    if(x != 0 && kp == '*') x--;
    if(kp == '#') {
      x++;
      if(x == 5) break;
      if(x == 2) x++; 
    }
    if(kp == '*' || kp == '#');
    else digit[x] = kp;
    
    lcd.setCursor(0,1);
    lcd.print(digit);
    lcd.setCursor(x,1);
    
    kp = 0;
    while(!kp) kp = key.getKey();
  }
  hh = (digit[0] - 48)  * 10 + (digit[1] - 48);
  mm = (digit[3] - 48)  * 10 + (digit[4] - 48);
  mm--;
  ss = 60;
  timer_f = true;
  digitalWrite(led, 0);
  lcd.clear();
  lcd.noBlink();
}

void Get_Location(){ 
  memset(longi, 0, sizeof(longi));
  memset(lati, 0, sizeof(lati));
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Finding Location");
  lcd.setCursor(0,1);
  lcd.print("Please wait...");
  
  Serial.println("AT+SAPBR=1,1");
  delay(3000);
  Serial.println("AT+CIPGSMLOC=1,1");
  receive_loc();
  Serial.println("AT+SAPBR=0,1");
  delay(1000);

  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print(lati);
  lcd.setCursor(0,1);
  lcd.print(longi);
  delay(1000); 
  lcd.clear();
}

void receive_loc(){
  while(!Serial.available());
  while(Serial.available()){
    rxd = Serial.read();

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
  if(lati[0] == 0 || longi[0] == 0) Get_Location();
}

void send_SMS(char *number){
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
  Serial.print("Latitude: ");
  Serial.println(lati);
  Serial.print("Longitude: ");
  Serial.println(longi);
  Serial.print("https://www.google.com/maps/place/");
  Serial.print(lati);
  Serial.print(",");
  Serial.print(longi);
  
  Serial.write(0x1A); 
  Serial.print("\r\n");
  delay(3000);
  
  smsFlag = true;
  lcd.clear();
}

void GSM_init(){
  lcd.clear();
  lcd.print("GSM Init...");
  delay(15000);
  
  Serial.println("AT");
  delay(1000);
  Serial.println("ATE0");
  delay(1000);
  Serial.println("AT+CMGF=1");
  delay(1000);
  Serial.println("AT+CNMI=1,2,0,0,0");
  delay(1000);
  Serial.println("AT+CGATT=1");
  delay(1000);
  Serial.println("AT+SAPBR=3,1,\"CONTYPE\",\"GPRS\"");
  delay(1000);
  Serial.println("AT+SAPBR=3,1,\"APN\",\"gpinternet\"");
  delay(1000);
}
