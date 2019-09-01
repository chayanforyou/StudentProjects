#define ds A0
#define st A1
#define sh A2

#define segdata0 22
#define segdata1 24
#define segdata2 26
#define segdata3 28
#define segdata4 30
#define segdata5 32
#define segdata6 34

#define digit01 8
#define digit02 9
#define digit03 10
#define digit04 11
#define digit05 12
#define digit06 13
#define digit07 1
#define digit08 2
#define digit09 3
#define digit10 4
#define digit11 5
#define digit12 6
#define digit13 16
#define digit14 15
#define digit15 14
#define digit16 0
#define digit17 20
#define digit18 19
#define digit19 18
#define digit20 17

#define led1L1 38 
#define led2L1 40
#define led3L1 40 // new led
#define led1L2 42 
#define led2L2 44 
#define led3L2 44 // new led
#define led1L3 46 
#define led2L3 48 
#define led1L4 50
#define led2L4 52 

#define butt1L1 A3
#define butt2L1 A2
#define butt3L1 A1
#define butt4L1 A0
#define butt1L2 A7
#define butt2L2 A6
#define butt3L2 A5
#define butt4L2 A4
#define butt1L3 A10
#define butt2L3 A9
#define butt3L3 A8
#define butt1L4 A13
#define butt2L4 A12
#define butt3L4 A11

#define buzz A14

#define DASH 100

long digit = 0xffff;
char anode[] = {192, 249, 164, 176, 153, 146, 130, 248, 128, 144};
char cathode[] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};

void displayInit(){
  pinMode(ds, OUTPUT);
  pinMode(st, OUTPUT);
  pinMode(sh, OUTPUT);
  pinMode(segdata0, OUTPUT);
  pinMode(segdata1, OUTPUT);
  pinMode(segdata2, OUTPUT);
  pinMode(segdata3, OUTPUT);
  pinMode(segdata4, OUTPUT);
  pinMode(segdata5, OUTPUT);
  pinMode(segdata6, OUTPUT);
  pinMode(digit01, OUTPUT);
  pinMode(digit02, OUTPUT);
  pinMode(digit03, OUTPUT);
  pinMode(digit04, OUTPUT);
  pinMode(digit05, OUTPUT);
  pinMode(digit06, OUTPUT);
  pinMode(digit07, OUTPUT);
  pinMode(digit08, OUTPUT);
  pinMode(digit09, OUTPUT);
  pinMode(digit10, OUTPUT);
  pinMode(digit11, OUTPUT);
  pinMode(digit12, OUTPUT);
  pinMode(digit13, OUTPUT);
  pinMode(digit14, OUTPUT);
  pinMode(digit15, OUTPUT);
  pinMode(digit16, OUTPUT);
  pinMode(digit17, OUTPUT);
  pinMode(digit18, OUTPUT);
  pinMode(digit19, OUTPUT);
  pinMode(digit20, OUTPUT);

  pinMode(led1L1, OUTPUT);
  pinMode(led2L1, OUTPUT);
  pinMode(led3L1, OUTPUT);
  pinMode(led1L2, OUTPUT);
  pinMode(led2L2, OUTPUT);
  pinMode(led3L1, OUTPUT);
  pinMode(led1L3, OUTPUT);
  pinMode(led2L3, OUTPUT);
  pinMode(led1L4, OUTPUT);
  pinMode(led2L4, OUTPUT);

  pinMode(buzz, OUTPUT);

  pinMode(butt1L1, INPUT_PULLUP);
  pinMode(butt2L1, INPUT_PULLUP);
  pinMode(butt3L1, INPUT_PULLUP);
  pinMode(butt4L1, INPUT_PULLUP);
  pinMode(butt1L2, INPUT_PULLUP);
  pinMode(butt2L2, INPUT_PULLUP);
  pinMode(butt3L2, INPUT_PULLUP);
  pinMode(butt4L2, INPUT_PULLUP);
  pinMode(butt1L3, INPUT_PULLUP);
  pinMode(butt2L3, INPUT_PULLUP);
  pinMode(butt3L3, INPUT_PULLUP);
  pinMode(butt1L4, INPUT_PULLUP);
  pinMode(butt2L4, INPUT_PULLUP);
  pinMode(butt3L4, INPUT_PULLUP);
}

void sendSegment(byte dta){
  if(dta != 100) dta = cathode[dta];
  else dta = 64; //show -
  digitalWrite(segdata0, bitRead(dta, 0));
  digitalWrite(segdata1, bitRead(dta, 1));
  digitalWrite(segdata2, bitRead(dta, 2));
  digitalWrite(segdata3, bitRead(dta, 3));
  digitalWrite(segdata4, bitRead(dta, 4));
  digitalWrite(segdata5, bitRead(dta, 5));
  digitalWrite(segdata6, bitRead(dta, 6));
}

void masking(){
  digitalWrite(digit01, bitRead(digit, 0));
  digitalWrite(digit02, bitRead(digit, 1));
  digitalWrite(digit03, bitRead(digit, 2));
  digitalWrite(digit04, bitRead(digit, 3));
  digitalWrite(digit05, bitRead(digit, 4));
  digitalWrite(digit06, bitRead(digit, 5));
  digitalWrite(digit07, bitRead(digit, 6));
  digitalWrite(digit08, bitRead(digit, 7));
  digitalWrite(digit09, bitRead(digit, 8));
  digitalWrite(digit10, bitRead(digit, 9));
  digitalWrite(digit11, bitRead(digit, 10));
  digitalWrite(digit12, bitRead(digit, 11));
  digitalWrite(digit13, bitRead(digit, 12));
  digitalWrite(digit14, bitRead(digit, 13));
  digitalWrite(digit15, bitRead(digit, 14));
  digitalWrite(digit16, bitRead(digit, 15));
  digitalWrite(digit17, bitRead(digit, 16));
  digitalWrite(digit18, bitRead(digit, 17));
  digitalWrite(digit19, bitRead(digit, 18));
  digitalWrite(digit20, bitRead(digit, 19));
}

void selectDigit(byte val){
  digit = 0x0000;
  bitWrite(digit, val, 1);
  masking();
}

void clearDigit(){
  digit = 0x0000;
  masking();
}

void sevenSegment(byte digit, byte value = 100){
  if(value != DASH) sendSegment(value / 10);
  else sendSegment(DASH);
  selectDigit(digit);
  delayMicroseconds(500);
  clearDigit();
  if(value != DASH) sendSegment(value % 10);
  else sendSegment(DASH);
  selectDigit(digit + 1);
  delayMicroseconds(500);
  clearDigit();
}
