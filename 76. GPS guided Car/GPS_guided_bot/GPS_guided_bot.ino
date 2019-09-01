#define gsm Serial1

#define metalSensor 40
#define noiseSensor 41

#define Q1  22
#define Q2  24
#define Q3  26
#define Q4  28
#define STD 30

#define FENA  8
#define FA    9
#define FB   10
#define FC   11
#define FD   12
#define FENB 13

#define BENA  2
#define BA    4
#define BB    3
#define BC    6
#define BD    6
#define BENB  7

String latitude  = "22.3260705"; // must be 10 digit
String longitude = "91.7498200"; // must be 10 digit

const String server = "http://kitsware.com/projects/gpscar/update_machine.php?";
const String gpsLink = "http://kitsware.com/projects/gpscar/stat_machine.php";

int gas;
char r;
bool metal, noise;

void setup() {
  Serial.begin(9600);
  gsm.begin(9600);
  
  pinMode(FENA, OUTPUT);
  pinMode(FA, OUTPUT);
  pinMode(FB, OUTPUT);
  pinMode(FC, OUTPUT);
  pinMode(FD, OUTPUT);
  pinMode(FENB, OUTPUT);

  pinMode(BENA, OUTPUT);
  pinMode(BA, OUTPUT);
  pinMode(BB, OUTPUT);
  pinMode(BC, OUTPUT);
  pinMode(BD, OUTPUT);
  pinMode(BENB, OUTPUT);

  pinMode(Q1, INPUT);
  pinMode(Q2, INPUT);
  pinMode(Q3, INPUT);
  pinMode(Q4, INPUT);
  pinMode(STD, INPUT);

  pinMode(metalSensor, INPUT);
  pinMode(noiseSensor, INPUT);

  digitalWrite(FENA, 1);
  digitalWrite(FENB, 1);
  digitalWrite(BENA, 1);
  digitalWrite(BENB, 1);

  GSM_init();
}

void loop() {
  if(Serial.available()){
    r = Serial.read();
    Serial.println((String)"Received: " + r);

    if(r == 'f') forward();
    else if(r == 'b') backward();
    else if(r == 'l') left();
    else if(r == 'r') right();
    else if(r == 's') STOP();
  }

  if(digitalRead(STD)){
    if(digitalRead(Q1) && digitalRead(Q2) && digitalRead(Q3) && digitalRead(Q4)) forward();
    else if(digitalRead(Q1) && digitalRead(Q2) && digitalRead(Q3) && digitalRead(Q4)) backward();
    else if(digitalRead(Q1) && digitalRead(Q2) && digitalRead(Q3) && digitalRead(Q4)) left();
    else if(digitalRead(Q1) && digitalRead(Q2) && digitalRead(Q3) && digitalRead(Q4)) right();
    else if(digitalRead(Q1) && digitalRead(Q2) && digitalRead(Q3) && digitalRead(Q4)) STOP();
    else if(digitalRead(Q1) && digitalRead(Q2) && digitalRead(Q3) && digitalRead(Q4)) gotoPath();    
  }

  send2Server();
  checkServer();
}

void gotoPath(){
  String t = (String)latitude[8] + latitude[9];
  int sec = t.toInt();
  t = (String)longitude[7] + longitude[8] + longitude[9];
  int mSec = t.toInt();

  forward();
  delay(sec * 1000);
  delay(mSec);
  STOP();
}

void GSM_init(){  
  delay(10000);
  gsm.println("AT");
  gsmResponse();
  gsm.println("ATE0");
  gsmResponse();
  gsm.println("AT+CGATT=1");
  gsmResponse();
  gsm.println("AT+SAPBR=3,1,\"CONTYPE\",\"GPRS\"");
  gsmResponse();
  gsm.println("AT+SAPBR=1,1"); 
  gsmResponse();
  delay(6000);
  gsm.println("AT+HTTPINIT"); 
  gsmResponse();
}

void send2Server(){  
  gas = analogRead(A0);
  metal = digitalRead(metalSensor);
  noise = digitalRead(noiseSensor);
                            
  gsm.println((String)"AT+HTTPPARA=\"URL\",\"" + server + "gas=" + gas + "&metal=" + metal + "&noise=" + noise + "\"");
  gsmResponse();
  gsm.println("AT+HTTPACTION=0");
  gsmResponse();
}

void checkServer(){
  gsm.println((String)"AT+HTTPPARA=\"URL\",\"" + gpsLink + "\"");
  gsmResponse();
  gsm.println("AT+HTTPACTION=0");
  gsmResponse();
  gsm.println("AT+HTTPREAD");
  String d = gsmResponse();

  if(d.indexOf("GPS=1") != -1) {
    gsm.println((String)"AT+HTTPPARA=\"URL\",\"" + server + "GPS=0" + "\"");
    gsmResponse();
    gsm.println("AT+HTTPACTION=0");
    gsmResponse();
    
    gotoPath();
  }
}

String gsmResponse(){
  String data;  
  while(!gsm.available());
  while(gsm.available()){
    data = gsm.readString();
  }
  return data;
}

void forward(){
  digitalWrite(FA, 0);
  digitalWrite(FB, 1);
  digitalWrite(FC, 0);
  digitalWrite(FD, 1);

  digitalWrite(BA, 0);
  digitalWrite(BB, 1);
  digitalWrite(BC, 0);
  digitalWrite(BD, 1);
}

void backward(){
  digitalWrite(FA, 1);
  digitalWrite(FB, 0);
  digitalWrite(FC, 1);
  digitalWrite(FD, 0);

  digitalWrite(BA, 0);
  digitalWrite(BB, 0);
  digitalWrite(BC, 0);
  digitalWrite(BD, 0);
}

void left(){
  digitalWrite(FA, 0);
  digitalWrite(FB, 1);
  digitalWrite(FC, 0);
  digitalWrite(FD, 0);

  digitalWrite(BA, 0);
  digitalWrite(BB, 0);
  digitalWrite(BC, 0);
  digitalWrite(BD, 1);
}

void right(){
  digitalWrite(FA, 0);
  digitalWrite(FB, 0);
  digitalWrite(FC, 0);
  digitalWrite(FD, 1);

  digitalWrite(BA, 0);
  digitalWrite(BB, 1);
  digitalWrite(BC, 0);
  digitalWrite(BD, 0);
}

void STOP(){
  digitalWrite(FA, 0);
  digitalWrite(FB, 0);
  digitalWrite(FC, 0);
  digitalWrite(FD, 0);

  digitalWrite(BA, 0);
  digitalWrite(BB, 0);
  digitalWrite(BC, 0);
  digitalWrite(BD, 0);
}
