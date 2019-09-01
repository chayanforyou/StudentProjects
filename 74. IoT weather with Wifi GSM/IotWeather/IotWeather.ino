#include <SoftwareSerial.h>
#include <LiquidCrystal.h>

#define fire A3
#define buzz 13
#define light 10
#define fan 11
#define pump 12


#define wifi Serial

LiquidCrystal lcd(7, 6, 5, 4, 3, 2);
SoftwareSerial gsm(9, 8);

const char num[] = "01764180287";
String wifiSSID = "Xioami Mi A1";
String wifiPASS = "AntorIsTheBest";
String HOST = "iotweathermonitor.000webhostapp.com";

int gas, temp;
bool serverMode = 0;
bool smsFlag = false;

void setup() {
  wifi.begin(115200);
  gsm.begin(9600);
  lcd.begin(16, 2);

  pinMode(fire, INPUT);
  pinMode(buzz, OUTPUT);
  pinMode(light, OUTPUT);
  pinMode(fan, OUTPUT);
  pinMode(pump, OUTPUT);
  
  wifi.println("AT+CWMODE=1"); 
  checkResponse();
  wifi.println((String)"AT+CWJAP=\"" + wifiSSID + "\",\"" + wifiPASS + "\""); 
  checkResponse();
  GSMinit();
}

void loop() {
  gas = analogRead(A5);
  temp = analogRead(A7);
  temp = temp * 0.4887;
  
  checkServer();
  delay(500);
  if(serverMode == 0){
    if(temp > 32) digitalWrite(light, 1);
    else if (temp < 28) digitalWrite(light, 0);

    if(gas > 200) digitalWrite(fan, 1);
    else if (gas < 100) digitalWrite(fan, 0);

    if(!digitalRead(fire)) digitalWrite(pump, 1);
    else digitalWrite(pump, 0);

    if(!smsFlag && (temp > 32 || gas > 200 || !digitalRead(fire))) {
      sendSMS(num); 
      smsFlag = true;
    }
    else smsFlag = false;
  }

  lcdprint(0, 0, (String)temp + (char)223 + "C  G:" + gas + "  F:" + !digitalRead(fire) + "  ");
  lcdprint(0, 1, (String)"L=" + digitalRead(light) + "  F=" + digitalRead(fan) + "  P=" + digitalRead(pump) + "  " + serverMode);
  
  send2Server();
  delay(500);
}

void lcdprint(byte x, byte y, String txt){
  lcd.setCursor(x, y);
  lcd.print(txt);
}

void send2Server(){
  String post = (String)"GET /update_machine.php?&temp=" + temp + "&gas=" + gas + "&fire=" + !digitalRead(fire) + " HTTP/1.1";
  int index = post.length() + 66;

  wifi.println("AT+CIPMUX=0");
  checkResponse(); 
  wifi.println("AT+CIPSTART=\"TCP\",\"" + HOST + "\",80");
  checkResponse();
  wifi.println((String)"AT+CIPSEND=" + index);
  checkResponse();
  wifi.println(post);  // 2
  wifi.println("HOST: " + HOST); // 8 + 35
  wifi.println("Connection: Close\r\n"); // 21
  checkResponse();
}

void checkServer(){
  String post = (String)"GET /stat_machine.php HTTP/1.1";
  int index = post.length() + 66;

  wifi.println("AT+CIPMUX=0");
  checkResponse(); 
  wifi.println("AT+CIPSTART=\"TCP\",\"" + HOST + "\",80");
  checkResponse();
  wifi.println((String)"AT+CIPSEND=" + index);
  checkResponse();
  wifi.println(post);  // 2
  wifi.println("HOST: " + HOST); // 8 + 35
  wifi.println("Connection: Close\r\n"); // 21
  String check = checkResponse();

  if(check.indexOf("server=0") != -1) serverMode = 0;
  else if(check.indexOf("server=1") != -1) serverMode = 1;

  if(serverMode == 1){
    if(check.indexOf("light=0") != -1) digitalWrite(light, 0);
    else if(check.indexOf("light=1") != -1) digitalWrite(light, 1);
    if(check.indexOf("fan=0") != -1) digitalWrite(fan, 0);
    else if(check.indexOf("fan=1") != -1) digitalWrite(fan, 1);
    if(check.indexOf("pump=0") != -1) digitalWrite(pump, 0);
    else if(check.indexOf("pump=1") != -1) digitalWrite(pump, 1);
  }
}

String checkResponse(){
  String r;
  while(!wifi.available());
  while(wifi.available()){
    r = wifi.readString();
    //Serial.println(r);
  }
  delay(50);
  return r;
}

void GSMinit(){
  lcd.clear();
  lcd.print("GSM Init...");
  delay(15000);
  
  gsm.println("AT");
  delay(1000);
  gsm.println("ATE0");
  delay(1000);
  gsm.println("AT+CMGF=1");
  delay(1000);
  gsm.println("AT+CNMI=1,2,0,0,0");
  delay(1000);
}

void sendSMS(char *number){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Sending SMS..");
  digitalWrite(buzz, 1);
  
  gsm.print("AT+CMGF=1\r\n");
  delay(200);
  gsm.print("AT+CMGS=\"");
  delay(200);
  gsm.print(number);
  gsm.print("\"\r\n");
  delay(200);
  gsm.print((String)temp + "dC.\nG:" + gas + ".\nF:" + !digitalRead(fire));
  gsm.write(0x1A); 
  gsm.print("\r\n");
  delay(3000);
  lcd.clear();
  digitalWrite(buzz, 0);
}
