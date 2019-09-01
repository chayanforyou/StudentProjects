#define digit1 RC5_bit
#define digit2 RC1_bit
#define digit3 RC2_bit
#define digit4 RC6_bit
#define digit5 RC7_bit
#define relay  RC0_bit
#define led    RA5_bit

#define motorKey RA3_bit
#define setKey   RA0_bit
#define upKey    RA1_bit
#define downKey  RA2_bit

sbit Soft_I2C_Scl           at RC3_bit;
sbit Soft_I2C_Sda           at RC4_bit;
sbit Soft_I2C_Scl_Direction at TRISC3_bit;
sbit Soft_I2C_Sda_Direction at TRISC4_bit;

const char cathode[] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};

char counter = 0, anime = 0;
bit secFlag;

void InitTimer1(){
  T1CON = 0x21;
  TMR1IF_bit = 0;
  TMR1H = 0x3C;
  TMR1L = 0xB0;
  TMR1IE_bit = 1;
  INTCON = 0xC0;
}

void Interrupt(){
  if (TMR1IF_bit){
    TMR1IF_bit = 0;
    TMR1H = 0x3C;
    TMR1L = 0xB0;
    anime++;
    counter++;
    if(anime > 5) anime = 0;
    if(counter == 10){
      counter = 0;
      secFlag = 1;
    }
  }
}

void clearDigit(){
  digit1 = 1; digit2 = 1; digit3 = 1; 
  digit4 = 1; digit5 = 1;
}

void mask(char val){
  RB0_bit = val.b6;
  RB1_bit = val.b5;
  RB2_bit = val.b0;
  RB3_bit = val.b1;
  RB4_bit = val.b2;
  RB5_bit = val.b3;
  RB6_bit = val.b4;
}

void segmentOut(char d, char val){
  mask(val);
  switch(d){
    case 1: digit1 = 0; break;
    case 2: digit2 = 0; break;
    case 3: digit3 = 0; break;
    case 4: digit4 = 0; break;
    case 5: digit5 = 0; break;
  }
  delay_ms(1);
  clearDigit();
}

void segmentByte(char d, char val){
  char digit[2];
  digit[0] = cathode[val / 10];
  digit[1] = cathode[val % 10];
  
  segmentOut(d, digit[0]);
  segmentOut(d + 1, digit[1]);
}

void animation(){
  switch(anime){
    case 0: segmentOut(1, 1); break;
    case 1: segmentOut(1, 2); break;
    case 2: segmentOut(1, 4); break;
    case 3: segmentOut(1, 8); break;
    case 4: segmentOut(1, 16); break;
    case 5: segmentOut(1, 32); break;
  }
}

void EEPROMWrite(char addrs, char val){
  soft_I2C_Start();
  soft_I2C_Write(0xA2);
  soft_I2C_Write(addrs);
  soft_I2C_Write(val);
  soft_I2C_Stop();
  delay_ms(1);
}

char EEPROMRead(char addrs){
  char dta;
  soft_I2C_Start();
  soft_I2C_Write(0xA2);
  soft_I2C_Write(addrs);
  soft_I2C_Start();
  soft_I2C_Write(0xA3);
  dta = soft_I2C_Read(0u);
  soft_I2C_Stop();
  delay_ms(25);
  return dta;
}

char currentHH, currentMM, currentSS;
char targetMM, targetSS;
char repeatHH, repeatMM;
char motorFlag;

char checkUP(char val){
  static short bFlag = 0;
  if(upKey && !bFlag) {
    val++;
    if(val > 99) val = 0;
    bFlag = 1;
  }
  if(!upKey) bFlag = 0;
  return val;
}

char checkDOWN(char val){
  static short bFlag = 0;
  if(downKey && !bFlag) {
    if(val != 0) val--;
    bFlag = 1;
  }
  if(!downKey) bFlag = 0;
  return val;
}

void setupTime(){
  char d;
  delay_ms(400);
  while(!setKey){
    for(d = 0; d < 100; d++){
      segmentOut(1, 16);  // 1
      segmentByte(2, targetMM);
      segmentByte(4, targetSS);
      targetMM = checkUP(targetMM);
      targetMM = checkDOWN(targetMM);
      if(setKey) break;
    }
    for(d = 0; d < 100; d++){
      segmentOut(1, 16);  // 1
      segmentByte(4, currentSS);
      targetMM = checkUP(targetMM);
      targetMM = checkDOWN(targetMM);
      if(setKey) break;
    }
  }
  delay_ms(400);
  EEPROMWrite(0, targetMM);
  
  while(!setKey){
    for(d = 0; d < 100; d++){
      segmentOut(1, 16);  // 1
      segmentByte(2, targetMM);
      segmentByte(4, targetSS);
      targetSS = checkUP(targetSS);
      targetSS = checkDOWN(targetSS);
      if(setKey) break;
    }
    for(d = 0; d < 100; d++){
      segmentOut(1, 16);  // 1
      segmentByte(2, targetMM);
      targetSS = checkUP(targetSS);
      targetSS = checkDOWN(targetSS);
      if(setKey) break;
    }
  }
  delay_ms(400);
  EEPROMWrite(1, targetSS);
  
  while(!setKey){
    for(d = 0; d < 100; d++){
      segmentOut(1, 92);  // 0
      segmentByte(2, repeatHH);
      segmentByte(4, repeatMM);
      repeatHH = checkUP(repeatHH);
      repeatHH = checkDOWN(repeatHH);
      if(setKey) break;
    }
    for(d = 0; d < 100; d++){
      segmentOut(1, 92);  // 0
      segmentByte(4, repeatMM);
      repeatHH = checkUP(repeatHH);
      repeatHH = checkDOWN(repeatHH);
      if(setKey) break;
    }
  }
  delay_ms(400);
  EEPROMWrite(5, repeatHH);
  
  while(!setKey){
    for(d = 0; d < 100; d++){
      segmentOut(1, 92);  // 0
      segmentByte(2, repeatHH);
      segmentByte(4, repeatMM);
      repeatMM = checkUP(repeatMM);
      repeatMM = checkDOWN(repeatMM);
      if(setKey) break;
    }
    for(d = 0; d < 100; d++){
      segmentOut(1, 92);  // 0
      segmentByte(2, repeatHH);
      repeatMM = checkUP(repeatMM);
      repeatMM = checkDOWN(repeatMM);
      if(setKey) break;
    }
  }
  delay_ms(400);
  EEPROMWrite(6, repeatMM);
}

void main() {
  ADCON1 = 0x07; TRISA = 0x0F;
  TRISB = 0x00; PORTB = 0x00;
  TRISC = 0x00; PORTC = 0x00;
  soft_I2C_init();
  InitTimer1();
  
  /*EEPROMWrite(0, 0);
  EEPROMWrite(1, 0);
  EEPROMWrite(2, 0);
  EEPROMWrite(3, 0);
  EEPROMWrite(4, 0);
  EEPROMWrite(5, 0);
  EEPROMWrite(6, 0);
  EEPROMWrite(7, 0);*/
  
  targetMM = EEPROMRead(0);
  targetSS = EEPROMRead(1);
  currentMM = EEPROMRead(2);
  currentSS = EEPROMRead(3);
  motorFlag = EEPROMRead(4);
  repeatHH = EEPROMRead(5);
  repeatMM = EEPROMRead(6);
  currentHH = EEPROMRead(7);
  
  while(1){
    if(motorFlag == 0 && motorKey){
      relay = 0;
      led = 0;

      EEPROMWrite(7, currentHH);
      segmentByte(2, currentHH);
      EEPROMWrite(2, currentMM);
      segmentByte(4, currentMM);
      EEPROMWrite(3, currentSS);
      animation();

      if(secFlag) {
        if(currentSS == 0 && currentMM == 0 && currentHH == 0) {
          currentMM = targetMM;
          currentSS = targetSS;
          motorFlag = 1;
          EEPROMWrite(4, motorFlag);
        }
        
        if(currentSS == 0) {
          currentSS = 60;
          if(currentMM != 0) currentMM--;
          if(currentMM == 0 && currentHH != 0){
            currentMM = 59;
            currentHH--;
          }
        }
        
        currentSS--;
        secFlag = 0;
      }
    }
    else if(motorFlag == 1 && motorKey){
      relay = 1;
      led = 1;

      segmentByte(2, currentMM);
      segmentByte(4, currentSS);
      animation();

      if(secFlag) {
        if(currentSS == 0 && currentMM != 0) {
          currentSS = 60;
          currentMM--;
        }

        if(currentSS == 0 && currentMM == 0) {
          currentHH = repeatHH;
          currentMM = repeatMM;
          currentSS = 1;
          motorFlag = 0;
          EEPROMWrite(4, motorFlag);
        }
        
        currentSS--;

        EEPROMWrite(2, currentMM);
        EEPROMWrite(3, currentSS);
        secFlag = 0;
      }
    }
    else if(!motorKey){
      relay = 0;
      led = 0;
      segmentOut(1, 63);     // O
      segmentOut(2, 113);    // F
      segmentOut(3, 113);    // F

      if(setKey) {while(setKey); setupTime();}
      if(motorKey) motorFlag = 1;
      currentMM = targetMM;
      currentSS = targetSS;
    }
  }
}