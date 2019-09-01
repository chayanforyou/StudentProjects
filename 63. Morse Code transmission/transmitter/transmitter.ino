
#define laser 2

String txt;

void setup() {
  Serial.begin(9600);
  pinMode(laser, OUTPUT);
  digitalWrite(laser, 0);
  delay(1000);

  //sendLaser(" !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~");

  Serial.println("--- Morse code data transmitter ---");
}

void loop() {
  Serial.println("Press any key to send a message...");
  while(!Serial.available());
  txt = Serial.readString();
  txt = "";
  Serial.println("Type your message (MAX 16 digit):");
  while(!Serial.available());
  txt = Serial.readString();
  byte i = txt.length() - 2;
  txt.remove(i, 2);
  sendLaser(txt + "#");
  Serial.println("OK");
}

void sendLaser(String txt){
  byte i = txt.length();
  //Serial.println(i);
  for(int a = 0; a < i; a++){
    digitalWrite(laser, 1);
    int d = (byte)txt[a] - 31;
    d = d * 10;
    //Serial.println(d);
    delay(d);
    digitalWrite(laser, 0);
    delay(100);
  }
}

