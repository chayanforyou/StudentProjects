#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Raktim Sir/Nov 16/5. BT Voice control system/Firmware C/BT Trigger.c"

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





unsigned short msg[15];

void main() {
 adcon1 = 0x07; trisA = 0x00;
 trisC = 0x80;
 lcd_init();
 uart1_init(9600);
  porta.b3  = 0;  portc.b3  = 0;
 lcd_cmd(_lcd_clear);
 lcd_cmd(_lcd_cursor_off);

 while(1){
 lcd_out(1,1, "BT Voice Control");
 lcd_out(2,1, "Li8:");
 lcd_out(2,10, "Fan:");
 if( porta.b3  == 1){lcd_out(2,5, "ON ");}
 else{lcd_out(2,5, "OFF");}
 if( portc.b3  == 1){lcd_out(2,14, "ON ");}
 else{lcd_out(2,14, "OFF");}
 uart1_read_text(msg, "#", 15);
 lcd_cmd(_lcd_clear);
 lcd_out(1,1, "Voice Command:");
 if(msg[1] == 'l' && msg[8] == 'n'){
 lcd_out(2,1, "Light On");
  porta.b3  = 1;
 }
 else if(msg[1] == 'l' && msg[9] == 'f'){
 lcd_out(2,1, "Light Off");
  porta.b3  = 0;
 }
 else if(msg[1] == 'f' && msg[6] == 'n'){
 lcd_out(2,1, "Fan On");
  portc.b3  = 1;
 }
 else if(msg[1] == 'f' && msg[6] == 'f'){
 lcd_out(2,1, "Fan Off");
  portc.b3  = 0;
 }
 else{
 lcd_out(2,1, "Unknown cmd..");
 }
 delay_ms(2000);
 lcd_cmd(_lcd_clear);
 }
}
