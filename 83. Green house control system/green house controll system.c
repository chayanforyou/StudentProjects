sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB2_bit;
 sbit LCD_EN_Direction at TRISB3_bit;
 sbit LCD_D4_Direction at TRISB4_bit;
 sbit LCD_D5_Direction at TRISB5_bit;
 sbit LCD_D6_Direction at TRISB6_bit;
 sbit LCD_D7_Direction at TRISB7_bit;
 // End LCD module connections
 
 #define h_relay RC1_bit
 #define t_relay RC2_bit
 #define s_relay RC3_bit

unsigned int Humidity = 0;
unsigned int Temperature = 0;
unsigned int soil = 0;
long adc_rd = 0;

const int Humidity_on = 45;
const int Temperature_on = 24;
const int soil_on = 30;
const int Humidity_off = 55;
const int Temperature_off = 26;
const int soil_off = 70;

void Get_Humidity();
void Get_Temperature();
void Get_soil(void);

void main(){
 TRISC = 0;
 PORTC = 0;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 
   while(1){
     Get_soil();
     Get_Humidity();
     Get_Temperature();
     delay_ms(500);
     if(humidity < Humidity_on) {h_relay = 1;}
     if(temperature < Temperature_on) {t_relay = 1;}
     if(soil < soil_on) {s_relay = 1;}
     if(humidity > Humidity_off) {h_relay = 0;}
     if(temperature > Temperature_off) {t_relay = 0;}
     if(soil > soil_off) {s_relay = 0;}
   }
 }

 void Get_Humidity(void){
   char hum[] = "RH:  %";
   int ii;
   float voltage = 0.00;
   adc_rd = 0;
   for(ii=0;ii<20;ii++){
     adc_rd += ADC_Read(2);
   }
   adc_rd /= 20;
   voltage = adc_rd*0.004883;
   Humidity = (int)((3.71 * voltage * voltage * voltage) - (20.65 * voltage * voltage) + (64.81 * voltage) - 27.44);
   hum[3] = (Humidity%100) / 10 + 48;
   hum[4] = Humidity%10 +48;
   Lcd_Out(2,1,hum);
 }

 void Get_Temperature(){
   char Tmp[] = "Temp:   C";
   float voltage;
   adc_rd = ADC_Read(1);
   voltage = (float)adc_rd * 0.0048875;
   Temperature = voltage * 100;
   Tmp[5] = Temperature / 10 + 48;
   Tmp[6] = Temperature % 10 + 48;
   Tmp[7] = 223;
   Lcd_Out(2,8,Tmp);
 }
 
 void Get_soil(){
   char Tmp[] = "Soil mois.:      ";
   adc_rd = ADC_Read(0);
   soil = 100 - (adc_rd / 10.6);
   Tmp[12] = soil / 100  + 48;
   Tmp[13] = (soil % 100) / 10  + 48;
   Tmp[14] = soil % 10 + 48;
   tmp[15] = '%';
   Lcd_Out(1,1,Tmp);
 }