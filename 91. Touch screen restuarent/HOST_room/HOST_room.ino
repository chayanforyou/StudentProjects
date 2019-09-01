#include <VirtualWire.h>
#include <LiquidCrystal.h>

LiquidCrystal lcd(4, 11, 6, 7, 8, 9);

byte attempt = 0;

void setup() {
  lcd.begin(16, 2);
  lcd.clear();
  Serial.begin(9600);

  vw_set_rx_pin(12);
  vw_set_ptt_inverted(true); 
  vw_setup(2000);  
  vw_rx_start(); 

  lcd.setCursor(0,0);
  lcd.print("Restuarent Order");
  lcd.setCursor(0,1);
  lcd.print("Currently None.");
}

void loop() {
  uint8_t buf[VW_MAX_MESSAGE_LEN];
  uint8_t buflen = VW_MAX_MESSAGE_LEN;

  if (vw_get_message(buf, &buflen)){
    lcd.setCursor(0,0);
    lcd.print("Received. TN:015");
    lcd.setCursor(0,1);
    lcd.print("ID");

    if(attempt == 0){
      lcd.write(buf[2]);
      lcd.write(buf[3]);
      lcd.print(",");
      lcd.print("           ");
    }
    else if(attempt == 1){
      lcd.setCursor(5,1);
      lcd.write(buf[2]);
      lcd.write(buf[3]);
      lcd.print(",");
    }
    else if(attempt == 2){
      lcd.setCursor(8,1);
      lcd.write(buf[2]);
      lcd.write(buf[3]);
      lcd.print(",");
    }
    else if(attempt == 3){
      lcd.setCursor(11,1);
      lcd.write(buf[2]);
      lcd.write(buf[3]);
      lcd.print(",");
    }
    else if(attempt == 4){
      lcd.setCursor(14,1);
      lcd.write(buf[2]);
      lcd.write(buf[3]);
    }
    attempt++;
    if(attempt > 4) attempt = 0;
  }   
}
