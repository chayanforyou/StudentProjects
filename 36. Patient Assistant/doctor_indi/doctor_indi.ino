#include <LiquidCrystal.h>
#include <VirtualWire.h>

const byte receive_pin = 4;
const byte play = 11;
const byte next = 13;
const byte prev = 10;

LiquidCrystal lcd(5, 4, 9, 8, 7, 6);

char cmd[VW_MAX_MESSAGE_LEN];
uint8_t buflen = VW_MAX_MESSAGE_LEN;
bool flag = true;

void setup() {
  lcd.begin(16, 2);
  lcd.clear();
  Serial.begin(9600);

  vw_set_rx_pin(receive_pin);
  vw_set_ptt_inverted(true); // Required for DR3100
  vw_setup(2000);   // Bits per sec
  vw_rx_start();       // Start the receiver PLL running
  
  pinMode(play, OUTPUT);
  pinMode(next, OUTPUT);
  pinMode(prev, OUTPUT);
  digitalWrite(play, HIGH);
  digitalWrite(next, HIGH);
  digitalWrite(prev, HIGH);

  digitalWrite(play, LOW);
  delay(500);
  digitalWrite(play, HIGH);
}

void loop() {
  lcd.setCursor(0,0);
  lcd.print("PatientAssistant");
  lcd.setCursor(0,1);
  lcd.print("Command: ");

  if (vw_get_message((uint8_t *)cmd, &buflen)) {
    int i;
    Serial.print("Got: ");
  
    for (i = 0; i < buflen; i++){
      Serial.print(cmd[i], HEX);
      Serial.print(' ');
    }
    lcd.print(cmd);
    Serial.println();

    if(cmd[1] == '0') flag = true;

    if(cmd[1] == '1' && flag == true){
      digitalWrite(next, LOW);
      delay(500);
      digitalWrite(next, HIGH);
      delay(1000);

      digitalWrite(play, LOW);
      delay(500);
      digitalWrite(play, HIGH);
      flag = false;
    }
  }
}

