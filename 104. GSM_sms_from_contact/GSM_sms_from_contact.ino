
char number[14];
char rxd, i;

void setup() {
  Serial.begin(9600);
  delay(2000);
  GSM_init();

  Serial.println("Reading Contact...."); //[TEST]remove this line
  
  Serial.println("AT+CPBF=\"A\"");
  
  rxd = 0;
  while(rxd != '"') rxd = Serial.read();

  rxd = Serial.read();  //skip "
  delay(10);
  
  for(i = 0; i < 12; i++){
    rxd = Serial.read();
    delay(10);
    number[i] = rxd; 
  }
  
  Serial.print("Contact for A: ");  //[TEST]remove this line
  Serial.println(number);           //[TEST]remove this line
}

void loop() {

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
