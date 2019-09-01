#include <U8glib.h>

U8GLIB_ST7920_128X64_1X u8g(7, 9, 8);

long ecg_value;
int value[128], pos = 0;

void setup() {
  u8g.setFont(u8g_font_5x7);
  Serial.begin(9600);
  pinMode(10, INPUT);
  pinMode(11, INPUT); 
}

void loop() {
  read_ECG();
  pos++;
  if(pos > 128) pos = 0;
  
  if(pos == 0){
    update_display();
  } 
}

void update_display(){
  u8g.firstPage(); 
  do{
    u8g.drawFrame(0,0,128,51);
    u8g.setPrintPos(12,60);
    u8g.print("ECG Monitoring System");

    for(int x = 1; x <= 128; x++){
      u8g.drawLine(x, value[x], x - 1, value[x - 1]);
    }
    
  }while (u8g.nextPage());
}

void read_ECG(){
  if((digitalRead(10) == 1)||(digitalRead(11) == 1)){
    ecg_value = 50;
    //Serial.println('!');
  }
  else{
    //Serial.println(analogRead(A0));
    ecg_value = analogRead(A0);
    ecg_value = map(ecg_value, 0, 1023, 0, 100);
  }
  value[pos] = map(ecg_value, 0, 100, 0, 50);
  Serial.print("E ");   
  Serial.println(ecg_value);
  delay(1);
}

