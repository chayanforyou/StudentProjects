#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/31. Fire fighting robot/Fire Room/Fire room.c"

sbit MANTXPIN at RC3_bit;
sbit MANTXPIN_Direction at TRISC3_bit;

char rf_tx = 0;

void main() {
 Man_Send_Init();

 while(1){
 Man_send(rf_tx);
 delay_ms(2000);
 rf_tx++;
 if(rf_tx == 10) rf_tx = 0;
 }
}
