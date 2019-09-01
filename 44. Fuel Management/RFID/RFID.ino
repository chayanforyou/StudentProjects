#include <SoftwareSerial.h>

SoftwareSerial rfid(8, 9);

void setup() {
  Serial.begin(9600);
  rfid.begin(9600);
}

void loop() {
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
      Serial.print("New Card: ");
      for(int x = 0; x < 14; x++){
        Serial.print(temp[x]);
        Serial.print(", ");
      }
      Serial.println();
    //}
  }
  else idSuccess = false;
}
