#define high GP2_bit
#define middle GP4_bit
#define low GP5_bit
#define relay GP1_bit

int adc = 0;
bit flag;

void main() {
   ANSEL = 0x01;
   TRISIO = 0x09;
   GPIO = 0;
   CMCON = 0x07;
   
   while(1){
      adc = adc_read(0);

      if(adc < 510){           //10V
        low = 1; middle = 0; high = 0;
        flag = 1;
      }
      
      else if(adc >= 510 && adc <= 645){  //12V
        low = 0; middle = 1; high = 0;
      }
      
      else if(adc > 645 && adc <= 710){   //13V
        low = 0; middle = 0; high = 1;
      }
      
      else if(adc > 710){     //14V
        low = 0; middle = 0; high = 1;
        flag = 0;
      }
      
      if(flag == 1) relay = 1;
      else relay = 0;
   }
}