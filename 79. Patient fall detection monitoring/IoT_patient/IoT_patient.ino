#define USE_ARDUINO_INTERRUPTS true
#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_PCD8544.h>
#include <PulseSensorPlayground.h>
#include <Wire.h>
#include <Keypad.h>

#define wifi Serial3
#define gsm Serial2
#define buzz 22

Adafruit_PCD8544 lcd = Adafruit_PCD8544(7, 6, 5, 4, 3);
PulseSensorPlayground pulseSensor;

char hexaKeys[4][4] = {
  {'1', '2', '3', 'A'},
  {'4', '5', '6', 'B'},
  {'7', '8', '9', 'C'},
  {'*', '0', '#', 'D'}
};
byte rowPins[4] = {47, 45, 43, 41};
byte colPins[4] = {39, 37, 35, 33};
Keypad key = Keypad( makeKeymap(hexaKeys), rowPins, colPins, 4, 4);

const int MPU_addr = 0x68;
int16_t AcX, AcY, AcZ;
int16_t GyX, GyY, GyZ, Tmp;

long ecg_value;
int value[128], pos = 0, BPM, temp;
int alarm1, alarm2, alarm3, timer, ss, count, mm;
bool fall, isAlarm = false;
char level;

String number = "01764180287";
String wifiSSID = "Jarvis!";
String wifiPASS = "Password_Code_405";
String HOST = "kitsware.com";  // 12

void setup() {
  Serial.begin(9600);
  wifi.begin(115200);
  gsm.begin(9600);
  lcd.begin();
  pulseSensor.analogInput(A1);
  pulseSensor.setThreshold(550);
  pulseSensor.blinkOnPulse(13);
  pulseSensor.begin();
  pinMode(10, INPUT);
  pinMode(11, INPUT);

  Wire.begin();
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x6B);
  Wire.write(0);
  Wire.endTransmission(true);

  lcd.setContrast(50);
  lcd.setReinitInterval(10);
  lcd.setTextSize(1);
  lcd.setTextColor(BLACK);
  lcd.clearDisplay();

  wifi.println("AT+CWMODE=1");
  checkResponse();
  wifi.println((String)"AT+CWJAP=\"" + wifiSSID + "\",\"" + wifiPASS + "\"");
  checkResponse();
  //GSMinit();

  lcd.clearDisplay();
  beep(100);
}

void loop() {
  heartBeat();
  readGyro();
  BPM = getPulse();
  temp = getTemp();
  level = getLevel();

  lcd.fillRect(0, 0, 84, 7, WHITE);
  lcd.setCursor(0, 0);
  lcd.print((String)temp + (char)247 + "C " + BPM + "BMP  " + level);
  lcd.fillRect(0, 10, 84, 17, WHITE);
  lcd.setCursor(0, 10);
  if (fall) lcd.print((String)"Fall Detect ");
  else lcd.print((String)"IDLE  TIME:" + mm);

  char k = key.getKey();
  if (k == 'A') setAlarm();

  if (isAlarm == true) {
    count++;
    if (count > 10) {
      count = 0;
      ss++;
      if (ss == 60) {
        ss = 0;
        mm++;
      }
    }

    if(alarm1 != 0 && mm == alarm1) {beep(5000); alarm1 = 0;}
    if(alarm2 != 0 && mm == alarm2) {beep(5000); alarm2 = 0;}
    if(alarm3 != 0 && mm == alarm3) {beep(5000); alarm3 = 0;}
  }

  timer++;
  if (timer > 500) {
    timer = 0;
    send2Server();
  }
}


void setAlarm() {
  lcd.clearDisplay();
  lcd.setCursor(0, 0);
  lcd.print("A. Set Alarm 1");
  lcd.setCursor(0, 10);
  lcd.print("B. Set Alarm 2");
  lcd.setCursor(0, 20);
  lcd.print("C. Set Alarm 3");
  lcd.setCursor(0, 30);
  lcd.print("D. Exit");
  lcd.display();

  while (true) {
    char k = key.getKey();
    String value = "";

    if (k == 'D') break;
    if (k == 'A') {
      lcd.fillRect(0, 30, 84, 20, WHITE);
      lcd.setCursor(0, 30);
      lcd.print("Enter [Min]:");
      lcd.display();

      value = "";
      while (k != '#') {
        k = key.waitForKey();
        if (k >= '0' && k <= '9') {
          value += k;
          lcd.setCursor(0, 40);
          lcd.print(value);
          lcd.display();
        }
      }
      alarm1 = value.toInt();
      Serial.println(alarm1);
      lcd.fillRect(0, 30, 84, 20, WHITE);
      lcd.setCursor(0, 30);
      lcd.print("D. Exit");
      lcd.display();
    }
    else if (k == 'B') {
      lcd.fillRect(0, 30, 84, 20, WHITE);
      lcd.setCursor(0, 30);
      lcd.print("Enter [Min]:");
      lcd.display();

      value = "";
      while (k != '#') {
        k = key.waitForKey();
        if (k >= '0' && k <= '9') {
          value += k;
          lcd.setCursor(0, 40);
          lcd.print(value);
          lcd.display();
        }
      }
      alarm2 = value.toInt();
      Serial.println(alarm2);
      lcd.fillRect(0, 30, 84, 20, WHITE);
      lcd.setCursor(0, 30);
      lcd.print("D. Exit");
      lcd.display();
    }
    else if (k == 'C') {
      lcd.fillRect(0, 30, 84, 20, WHITE);
      lcd.setCursor(0, 30);
      lcd.print("Enter [Min]:");
      lcd.display();

      value = "";
      while (k != '#') {
        k = key.waitForKey();
        if (k >= '0' && k <= '9') {
          value += k;
          lcd.setCursor(0, 40);
          lcd.print(value);
          lcd.display();
        }
      }
      alarm3 = value.toInt();
      Serial.println(alarm3);
      lcd.fillRect(0, 30, 84, 20, WHITE);
      lcd.setCursor(0, 30);
      lcd.print("D. Exit");
      lcd.display();
    }
  }
  if (alarm1 == 0 && alarm2 == 0 && alarm3 == 0) isAlarm = false;
  else isAlarm = true;
}

void beep(int d) {
  digitalWrite(buzz, 1);
  delay(d);
  digitalWrite(buzz, 0);
}

void readGyro() {
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x3B);
  Wire.endTransmission(false);
  Wire.requestFrom(MPU_addr, 14, true);
  AcX = Wire.read() << 8 | Wire.read();
  AcY = Wire.read() << 8 | Wire.read();
  AcZ = Wire.read() << 8 | Wire.read();
  Tmp = Wire.read() << 8 | Wire.read();
  GyX = Wire.read() << 8 | Wire.read();
  GyY = Wire.read() << 8 | Wire.read();
  GyZ = Wire.read() << 8 | Wire.read();

  GyX = map(GyX, -32768, 32767, -90, 90);
  GyY = map(GyY, -32768, 32767, -90, 90);
  GyZ = map(GyZ, -32768, 32767, -90, 90);

  //Serial.println((String)"X: " + GyX);
  if (GyX < -10 || GyX > 20) fall = true;
  else fall = false;
}

int getTemp() {
  int adc = analogRead(A2);
  return abs((adc * 500) / 1024);
}

int getPulse() {
  int myBPM = pulseSensor.getBeatsPerMinute();

  if (pulseSensor.sawStartOfBeat()) {
    return myBPM;
  }
  return 0;
}

char getLevel() {
  int adc = analogRead(A8);
  if (adc > 1000) return 'L';
  else if (adc > 550 && adc < 700) return 'M';
  else if (adc > 300 && adc < 450) return 'H';
}

void heartBeat() {
  if ((digitalRead(10) == 1) || (digitalRead(11) == 1)) ecg_value = 512;
  else ecg_value = analogRead(A0);
  //Serial.println(ecg_value);
  value[pos] = map(ecg_value, 0, 1023, 0, 20);

  pos++;
  if (pos > 84) pos = 0;
  if (pos == 0) {
    lcd.fillRect(0, 30, 84, 48, WHITE);
    for (int x = 1; x <= 84; x++) {
      lcd.drawLine(x, 30 + value[x], x - 1, 30 + value[x - 1], BLACK);
    }
    lcd.display();
  }
}

void send2Server() {
  String t;
  if (fall) t = "Fall_Detect";
  else t = "IDLE";

  String post = (String)"GET /projects/iotpatient/update_machine.php?&heart="
                + BPM + "&temp=" + temp + "&fall=" + t + "&level="
                + level + "&alarm1=" + alarm1 + "min&alarm2=" + alarm2
                + "min&alarm3=" + alarm3 + "min HTTP/1.1";
  int index = post.length() + 43;

  wifi.println("AT+CIPMUX=0");
  checkResponse();
  wifi.println("AT+CIPSTART=\"TCP\",\"" + HOST + "\",80");
  checkResponse();
  wifi.println((String)"AT+CIPSEND=" + index);
  checkResponse();
  wifi.println(post);  // 2
  wifi.println("HOST: " + HOST); // 8 + 12
  wifi.println("Connection: Close\r\n"); // 21
  checkResponse();
}

String checkResponse() {
  String r = "";
  while (!wifi.available());
  while (wifi.available()) {
    r = wifi.readString();
    //Serial.println(r);
  }
  delay(100);
  return r;
}

void GSMinit() {
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

void sendSMS(String number, String txt) {
  digitalWrite(buzz, 1);
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
  digitalWrite(buzz, 0);
}
