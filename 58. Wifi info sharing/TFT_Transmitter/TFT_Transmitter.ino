#include <SoftwareSerial.h>

SoftwareSerial wifi(10, 11);
SoftwareSerial gsm(5, 6);

String wifiSSID = "Go Online!";
String wifiPASS = "Password_code_404";
String HOST = "192.168.0.109";

String rxd, getData;
bool connectFlag = false;

void setup() {
  Serial.begin(9600);
  wifi.begin(9600);
  gsm.begin(9600);
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
  
  GSM_init();

  digitalWrite(LED_BUILTIN, LOW);
}

void loop() {
  readSMS();
  readTTL();
  if(connectFlag == false) wifi_init();
}

void wifi_init(){
  digitalWrite(LED_BUILTIN, HIGH);
  wifi.listen();
  wifi.println((String)"AT+CWJAP=\"" + wifiSSID + "\",\"" + wifiPASS + "\"");
  delay(100);
  if(wifi.available() > 0){
    rxd = wifi.readString();
    if(rxd.indexOf("GOT IP") != -1) {
      connectFlag = true;
      wifi.println((String)"AT+CIPSTART=\"TCP\",\"" + HOST + "\",333");
      delay(50);
      digitalWrite(LED_BUILTIN, LOW);
    }
    rxd = "";
  }
}

void sendData(String msg){
  digitalWrite(LED_BUILTIN, HIGH);
  int digit = msg.length() + 2;

  wifi.println((String)"AT+CIPSTART=\"TCP\",\"" + HOST + "\",333");
  delay(50);
  wifi.println((String)"AT+CIPSEND=" + digit);
  delay(50);
  wifi.println(msg);
  delay(50);
  digitalWrite(LED_BUILTIN, LOW);
}

void GSM_init(){
  gsm.listen();
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
  if(gsm.available() > 0){
    rxd = gsm.readString();
    rxd = "";
  }
}

void readSMS(){
  gsm.listen();
  if(gsm.available() > 0){
    rxd = gsm.readString(); 
  }
  int x = rxd.indexOf("line");
  if(x != -1){
    rxd.remove(0, x + 4);
    getData = ">>L" + rxd;
    sendData(getData);
    rxd = "";
  }
}

void readTTL(){
  if(Serial.available() > 0){
    rxd = Serial.readString(); 
  }
  int x = rxd.indexOf("line");
  if(x != -1){
    rxd.remove(0, x + 4);
    getData = ">>L" + rxd;
    sendData(getData);
    Serial.println("OK");
    rxd = "";
  }
}

