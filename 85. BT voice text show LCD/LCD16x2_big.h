
const char character_1[] = {7,15,31,31,31,31,31,31};
const char character_2[] = {31,31,31,31,31,31,15,7};
const char character_3[] = {31,31,31,0,0,0,31,31};
const char character_4[] = {31,0,0,0,0,31,31,31};
const char character_5[] = {28,30,31,31,31,31,31,31};
const char character_6[] = {31,31,31,31,31,31,30,28};
const char character_7[] = {31,31,31,0,0,0,0,0};
const char character_8[] = {0,0,0,0,0,31,31,31};

void custom_char(char pos_row, char pos_char, char cus_char) {
  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character_1[i]);
    Lcd_Cmd(72);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character_2[i]);
    Lcd_Cmd(80);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character_3[i]);
    Lcd_Cmd(88);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character_4[i]);
    Lcd_Cmd(96);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character_5[i]);
    Lcd_Cmd(104);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character_6[i]);
    Lcd_Cmd(112);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character_7[i]);
    Lcd_Cmd(120);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character_8[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, cus_char);
}