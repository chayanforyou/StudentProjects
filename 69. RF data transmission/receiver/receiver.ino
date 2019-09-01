#include <LiquidCrystal.h>
#include <VirtualWire.h>

#define buzz 2

const int receive_pin = 11;

LiquidCrystal lcd(3, 8, 4, 5, 6, 7);

byte loc;
byte butt, temp, humidity, mq7, bpm;

void setup() {
  Serial.begin(115200);
  lcd.begin(16, 2);
  pinMode(buzz, OUTPUT);
  
  vw_set_rx_pin(receive_pin);
  vw_set_ptt_inverted(true);
  vw_setup(2000);  

  vw_rx_start();

  lcd.print("Hello World!");
}

void loop() {
  char buf[VW_MAX_MESSAGE_LEN];
  uint8_t buflen = VW_MAX_MESSAGE_LEN;

  if (vw_get_message(buf, &buflen)){
    String rxd = (String)buf;
    //Serial.println(rxd);

    String tmp;
    loc = rxd.indexOf(",");
    tmp = rxd.substring(0, loc);
    butt = tmp.toInt();
    rxd.remove(0, loc + 1);

    loc = rxd.indexOf(",");
    tmp = rxd.substring(0, loc);
    temp = tmp.toInt();
    rxd.remove(0, loc + 1);

    loc = rxd.indexOf(",");
    tmp = rxd.substring(0, loc);
    humidity = tmp.toInt();
    rxd.remove(0, loc + 1);

    loc = rxd.indexOf(",");
    tmp = rxd.substring(0, loc);
    mq7 = tmp.toInt();
    rxd.remove(0, loc + 1);

    loc = rxd.indexOf(",");
    tmp = rxd.substring(0, loc);
    bpm = tmp.toInt();
    rxd.remove(0, loc + 1);
    Serial.println((String)"B: " + butt + "\tT: "  + temp + "\tH: " + humidity + "\tM: " + mq7 + "\tB: " + bpm);
  }

  if(butt == 1){
    digitalWrite(buzz, 1);
    delay(1000);
    digitalWrite(buzz, 0);
    butt = 0;
  }

  lcd.setCursor(0, 0);
  lcd.print((String) temp + (char)223 + "C   Hum= " + intToStr(humidity) + "%");
  lcd.setCursor(0, 1);
  lcd.print((String) "MQ7=" + intToStr(mq7) + "  " + intToStr(bpm) + " BPM");
}

String intToStr(int val){
  if(val < 100) return (String)"0" + val;
  else return (String)val;
}
