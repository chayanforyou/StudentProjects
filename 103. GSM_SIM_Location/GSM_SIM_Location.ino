
int x = 0, y = 0;
char longitude[20];
char latitude[20];
String Location = "";         
boolean stringComplete = false;  

void setup() {
  Serial.begin(9600);
  delay(2000);
  GSM_init();  //NOTE: add bearer setting cmd to this function. 
  Location.reserve(200);
}

void loop() {
  Serial.println("AT+CIPGSMLOC=1,1");
  delay(1000);
 
  if (stringComplete) {
    x = 0; y = 0;
    while(Location[x++] != ',');
    while(Location[x++] != ',') longitude[y++] = Location[x - 1];
    y = 0;
    while(Location[x++] != ',') latitude[y++] = Location[x - 1];
    Serial.println();
    Serial.print("Location: ");                      
    Serial.print(Location);
    Serial.print("Longitude: ");
    Serial.println(longitude);
    Serial.print("Latitude: ");
    Serial.println(latitude);
    Serial.println();
    Location = "";
    stringComplete = false;            
  }                     
}

void serialEvent() {
  while (Serial.available()) {
    char inChar = (char)Serial.read();
    Location += inChar;
    if (inChar == '\n') {
      stringComplete = true;
    }
  }
}

void GSM_init(){
  Serial.println("AT");
  delay(500);
  Serial.println("ATE0");
  delay(500);
  Serial.println("AT+CMGF=1");
  delay(500);
  Serial.println("AT+CNMI=1,2,0,0,0"); 
  delay(500);
}
