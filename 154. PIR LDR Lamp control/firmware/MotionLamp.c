#define sensor GP1_bit
#define lamp   GP4_bit
#define led    GP0_bit

int adc;
int timer = 0;
bit enableFlag;

void main() {
  ADFM_bit = 1;
  ANSEL = 4;
  CMCON = 7;
  TRISIO = 0b00000110;
  GPIO = 0;
  enableFlag = 0;
  
  while(1){
    lamp = ~lamp;
    led = ~led;
    delay_ms(1000);
  }
}