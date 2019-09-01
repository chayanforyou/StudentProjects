#include <LiquidCrystal.h>

#define led1 6
#define led2 5
#define led3 4
#define freq 2

LiquidCrystal lcd(12, 11, 10, 9, 8, 7);

int ac1, ac2, ac3, ac4, ac5, ac6;
int high_time, low_time, time_period, frequency;

void setup() {
  Serial.begin(9600);
  lcd.begin(16, 2);

  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(freq, INPUT);
}

void loop() {
  ac1 = getACVolt(A0);
  ac2 = getACVolt(A1);
  ac3 = getACVolt(A2);
  ac4 = getACVolt(A3);
  ac5 = getACVolt(A4);
  ac6 = getACVolt(A5);

  high_time = pulseIn(freq, HIGH);
  low_time = pulseIn(freq, LOW);

  time_period = high_time + low_time;
  time_period = time_period / 1000;
  frequency = (1000 / time_period) - 2; 

  Serial.print((String)"Phase 1: " + ac1 + " VAC | ");
  Serial.print((String)"Phase 2: " + ac2 + " VAC | ");
  Serial.println((String)"Phase 3: " + ac3 + " VAC");
  Serial.print((String)"Phase 4: " + ac4 + " VAC | ");
  Serial.print((String)"Phase 5: " + ac5 + " VAC | ");
  Serial.println((String)"Phase 6: " + ac6 + " VAC");
  Serial.println((String)"FREQUENCY: " + frequency + " Hz");
  Serial.println();

  if((ac1 >= 190 && ac1 <= 235) &&
     (ac2 >= 190 && ac2 <= 235) && 
     (ac3 >= 190 && ac3 <= 235) && 
     (ac4 >= 190 && ac4 <= 235) && 
     (ac5 >= 190 && ac5 <= 235) && 
     (ac6 >= 190 && ac6 <= 235)){
      
      lcd.setCursor(0, 0);
      lcd.print("Phase OK Volt OK");
      
      if((frequency >= 48 && frequency <= 52)){
        lcd.setCursor(0, 1);
        lcd.print("Freq OK, Sync OK");
        digitalWrite(led1, 1);
        digitalWrite(led2, 1);
        digitalWrite(led3, 1);  
      }
      else {
        lcd.setCursor(0, 1);
        lcd.print("Freq missing,OFF");
        digitalWrite(led1, 0);
        digitalWrite(led2, 0);
        digitalWrite(led3, 0);
      }
  }
  else {
    lcd.setCursor(0, 0);
    lcd.print("Phase/Volt error");
    lcd.setCursor(0, 1);
    lcd.print("No Sync, ALL OFF");
    digitalWrite(led1, 0);
    digitalWrite(led2, 0);
    digitalWrite(led3, 0);
  }
}

int getACVolt(byte p){
  long adc = 0;
  adc = analogRead(p);
  return adc / 2.457;
}
