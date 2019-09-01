#include <LiquidCrystal.h>
#include <Servo.h>
#include <rdm6300.h>

#define gsm Serial
#define butt 13
#define col1 A0
#define col2 A1
#define col3 A2
#define col4 A3
#define buzz 2

LiquidCrystal lcd(12, 11, 10, 9, 8, 7);
Rdm6300 rdm6300;
Servo servo;

String number = "01764180287";
String password[] = {
  "123456",
  "111111",
  "222222",
  "333333",
  "444444",
  "555555",
  "666666",
  "777777",
  "888888",
  "999999",
};
int passNum, check;

String id_01 = "Antor Ahmed";
String id_02 = "Tanvir Bhai";
const int32_t card_01 = 5401083;
const int32_t card_02 = 5401048;
int32_t card;

void setup() {
  Serial.begin(9600);
  rdm6300.begin(3);
  lcd.begin(16, 2);
  servo.attach(4);

  pinMode(butt, INPUT);
  pinMode(col1, OUTPUT);
  pinMode(col2, OUTPUT);
  pinMode(col3, OUTPUT);
  pinMode(col4, OUTPUT);
  pinMode(buzz, OUTPUT);

  lcd.clear();
  servo.write(1);
  //GSMinit();
}

void loop() {
  lcd.setCursor(0, 0);
  lcd.print(" Bank Security  ");
  lcd.setCursor(0, 1);
  lcd.print("DOOR CLOSED...!");

  card = getRfid();

  if (card == card_01) {
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Name:");
    lcd.setCursor(0, 1);
    lcd.print(id_01);
    delay(1000);
    checkPass();
    check = 0;
  }
  else if (card == card_02) {
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Name:");
    lcd.setCursor(0, 1);
    lcd.print(id_02);
    delay(1000);
    checkPass();
    check = 0;
  }
  else if (card != 0) {
    lcd.setCursor(0, 1);
    lcd.print("UNAUTHORIZED!");
    delay(1000);
    check++;
    if (check > 2) beep(1000);
  }
}

void checkPass() {
  char k = 0;
  String pass = "";
  int c = 0;
  passNum = random(10);
  sendSMS(number, (String)"OTG is: " + password[passNum]);

  lcd.setCursor(0, 0);
  lcd.print("ENTER PASS:");
  lcd.setCursor(0, 1);
  while (c < 6) {
    k = getKeypad();
    lcd.print((String)k);
    pass += k;
    c++;
  }
  if (pass == password[passNum]) {
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Password Matched");
    lcd.setCursor(0, 1);
    lcd.print("DOOR OPEN!");
    servo.write(90);
    delay(10000);
    servo.write(1);
  }
  else{
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Wrong PASS..!");
    beep(2000);
  }
}

void beep(int d) {
  digitalWrite(buzz, 1);
  delay(d);
  digitalWrite(buzz, 0);
}

void GSMinit() {
  lcd.print("Connecting GSM..");
  delay(5000);
  gsm.println("AT");
  delay(1000);
  gsm.println("ATE0");
  delay(1000);
  gsm.println("AT+CMGF=1");
  delay(1000);
  gsm.println("AT+CNMI=1,2,0,0,0");
  delay(1000);
  lcd.clear();
}

void sendSMS(String number, String txt) {
  lcd.clear();
  lcd.print("Sending SMS...");
  gsm.print("AT+CMGF=1\r\n");
  delay(200);
  gsm.print("AT+CMGS=\"");
  delay(200);
  gsm.print(number);
  gsm.print("\"\r\n");
  delay(200);
  gsm.print(txt);
  gsm.write(0x1A);
  gsm.print("\r\n");
  delay(3000);
  lcd.clear();
}

int32_t getRfid() {
  if (rdm6300.update()) return rdm6300.get_tag_id();
  return 0;
}

void selectCol(bool a, bool b, bool c, bool d) {
  digitalWrite(col1, a);
  digitalWrite(col2, b);
  digitalWrite(col3, c);
  digitalWrite(col4, d);
}

char scanKeypad() {
  char k = 0;
  int adc = 0;
  selectCol(0, 0, 0, 1);
  adc = analogRead(A4);
  //if(adc > 10) Serial.println(adc);
  if (adc > 785 && adc < 795)      k = '1';
  else if (adc > 685 && adc < 695) k = '4';
  else if (adc > 590 && adc < 600) k = '7';
  else if (adc > 450 && adc < 460) k = '*';
  selectCol(0, 0, 1, 0);
  adc = analogRead(A4);
  //if(adc > 10) Serial.println(adc);
  if (adc > 835 && adc < 840)      k = '2';
  else if (adc > 725 && adc < 735) k = '5';
  else if (adc > 620 && adc < 630) k = '8';
  else if (adc > 470 && adc < 480) k = '0';
  selectCol(0, 1, 0, 0);
  adc = analogRead(A4);
  //if(adc > 10) Serial.println(adc);
  if (adc > 725 && adc < 735)      k = '3';
  else if (adc > 635 && adc < 645) k = '6';
  else if (adc > 550 && adc < 560) k = '9';
  else if (adc > 427 && adc < 437) k = '#';
  selectCol(1, 0, 0, 0);
  adc = analogRead(A4);
  //if(adc > 10) Serial.println(adc);
  if (adc > 785 && adc < 795)      k = 'A';
  else if (adc > 685 && adc < 695) k = 'B';
  else if (adc > 590 && adc < 600) k = 'C';
  else if (adc > 455 && adc < 460) k = 'D';

  return k;
}

char getKeypad() {
  char x = 0, y = 1;
  while (x == 0) x = scanKeypad();
  while (y != 0) y = scanKeypad();
  delay(100);
  return x;
}
