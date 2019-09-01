#include <SoftwareSerial.h>
#include <LiquidCrystal.h>

byte motor = 6;
byte IR = 3;
byte buzz = 4;
byte temp_sym[8] = {4,10,10,14,14,31,31,14};

LiquidCrystal lcd(5, 7, 11, 12, 13, 10);
SoftwareSerial esp(8,9);

int adc, temp, pwm, pwmL;
byte m_speed;
char rxd, cp = 0;
char tmp[3] = "";
volatile byte half_revolutions;
unsigned int rpm;
unsigned long timeold;     

void setup() {
  pinMode(motor, OUTPUT);
  pinMode(buzz, OUTPUT);
  attachInterrupt(1, rpm_fun, FALLING);
  half_revolutions = 0;
  rpm = 0;
  timeold = 0;;
  Serial.begin(115200); 
  esp.begin(115200);
  lcd.begin(16, 2);
  lcd.clear();
  lcd.createChar(0, temp_sym);
  delay(2000);
  
  esp.println("ATE0");
  delay(500);
  esp.println("AT+CIPMUX=1");
  delay(500);
  esp.println("AT+CIPSERVER=1,80");
  delay(500);

  lcd.setCursor(0,0);
  lcd.write(byte(0));
  lcd.setCursor(1,0);
  lcd.print(":");
  lcd.setCursor(5,0);
  lcd.print("C"); 
  lcd.setCursor(7,0);
  lcd.print("RPM:"); 
  lcd.setCursor(0,1);
  lcd.print("Speed:");
}

void loop() {
  get_temp();
  check_wifi();
  motor_control();
  calculate_RPM();
}

void motor_control(){
  if(temp < 30){
    digitalWrite(motor, HIGH);
    delayMicroseconds(pwm);
    digitalWrite(motor, LOW);
    delayMicroseconds(pwmL);
    
    lcd.setCursor(10,1);
    lcd.print("FanON "); 
    digitalWrite(buzz, LOW);
  }
  else if(temp > 32){
    digitalWrite(motor, HIGH);
    
    lcd.setCursor(10,1);
    lcd.print("FanOFF");
    digitalWrite(buzz, HIGH);
  }
  else{
    lcd.setCursor(10,1);
    lcd.print("FanOFF");
    digitalWrite(buzz, LOW);
  }
}

void decode_speed(){
  if(tmp[2] != 10) m_speed = (tmp[0] - 48) * 100 + (tmp[1] - 48) * 10 + (tmp[2] - 48);
  else m_speed = (tmp[0] - 48) * 10 + (tmp[1] - 48); 
  lcd.setCursor(8,1);
  lcd.print("%"); 
  lcd.setCursor(6,1);
  lcd.print(m_speed, DEC);
  pwm = m_speed * 200;
  pwmL = 20000 - pwm;
  Serial.print("HIGH delay: "); Serial.println(pwm, DEC); 
  Serial.print("LOW delay: "); Serial.println(pwmL, DEC); 
}

void get_temp(){
  adc = analogRead(0);
  temp = (adc / 2.046) - 10;
  lcd.setCursor(2,0);
  lcd.print(temp, DEC); 
  lcd.setCursor(4,0);
  lcd.print((char)223);
}

void check_wifi(){
  if(esp.available() > 0){
    rxd = esp.read();
    Serial.write(rxd);
    if(cp == 2) cp = 3;
    if(cp == 4) cp = 5;
    if(cp == 6) cp = 7;
    if(cp == 0 && rxd == 'd') cp = 1;
    if(cp == 1 && rxd == ' ') cp = 2;
    if(cp == 3) {cp = 4; tmp[0] = rxd;} 
    if(cp == 5) {cp = 6; tmp[1] = rxd;} 
    if(cp == 7) {cp = 8; tmp[2] = rxd;} 
    if(cp == 8){cp = 0; decode_speed();} 
  }
}

void calculate_RPM(){
  if (half_revolutions >= 20) { 
     rpm = 30 * 1000 / (millis() - timeold) * half_revolutions;
     timeold = millis();
     half_revolutions = 0;
     Serial.println(rpm, DEC);
     lcd.setCursor(11,0);
     lcd.print("     ");
     lcd.setCursor(11,0);
     lcd.print(rpm, DEC);
   }
}

void rpm_fun(){
   half_revolutions++;
 }

