sbit kp_row1 at RC7_bit;
sbit kp_row2 at RC6_bit;
sbit kp_row3 at RC5_bit;
sbit kp_row4 at RC4_bit;
sbit kp_col1 at RC3_bit;
sbit kp_col2 at RC2_bit;
sbit kp_col3 at RC1_bit;
sbit kp_row1_dir at TRISC7_bit;
sbit kp_row2_dir at TRISC6_bit;
sbit kp_row3_dir at TRISC5_bit;
sbit kp_row4_dir at TRISC4_bit;
sbit kp_col1_dir at TRISC3_bit;
sbit kp_col2_dir at TRISC2_bit;
sbit kp_col3_dir at TRISC1_bit;

void kp_init(){
  kp_row1_dir = 1;
  kp_row2_dir = 1;
  kp_row3_dir = 1;
  kp_row4_dir = 1;
  kp_col1_dir = 0;
  kp_col2_dir = 0;
  kp_col3_dir = 0;
  kp_col1 = 0;
  kp_col2 = 0;
  kp_col3 = 0;
}

char kp_scan(){
  char key = 0;
  kp_col1 = 1; kp_col2 = 0; kp_col3 = 0;
  delay_1ms();
  if(kp_row1 == 1) key = '1';
  else if(kp_row2 == 1) key = '4';
  else if(kp_row3 == 1) key = '7';
  else if(kp_row4 == 1) key = '*';
  delay_1ms();
  kp_col1 = 0; kp_col2 = 1; kp_col3 = 0;
  delay_1ms();
  if(kp_row1 == 1) key = '2';
  else if(kp_row2 == 1) key = '5';
  else if(kp_row3 == 1) key = '8';
  else if(kp_row4 == 1) key = '0';
  kp_col1 = 0; kp_col2 = 0; kp_col3 = 1;
  delay_1ms();
  if(kp_row1 == 1) key = '3';
  else if(kp_row2 == 1) key = '6';
  else if(kp_row3 == 1) key = '9';
  else if(kp_row4 == 1) key = '#';
  return key;
}


char kp_get_key(){
  char key = 0;
  while(!key){
    key = kp_scan();
  }
  return key;
}