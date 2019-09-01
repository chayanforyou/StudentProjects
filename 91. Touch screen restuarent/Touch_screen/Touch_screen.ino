#include <VirtualWire.h>
#include <UTFT.h>
#include <URTouch.h>

extern uint8_t SmallFont[];

UTFT tft(ILI9341_16,38,39,40,41);
URTouch  touch( 6, 5, 4, 3, 2);

const byte TOTAL_ITEM = 5;
const byte TOTAL_DETAILS = 15;
char *txd;

char* item_name[] = {
  "1. Burgers",
  "2. Pizza",
  "3. Murg Polao",
  "4. Chicken Kabab",
  "5. Egg Fried Rice",
};

char* item_prize[] = {
  "150TK",
  "350TK",
  "250TK",
  "300TK",
  "200TK",
};

char* details[] = {
  "Baby Foods",       //0
  "Beef Products",    //1
  "Fruits and Fruit", //2
  "Beverages",        //3
  "Vitamin D",        //4
  "Vitamin B12",      //5
  "Vitamin E",        //6
  "Pork Products",    //7
  "Fats and Oils",    //8
  "Spices and Herbs", //9
  "Poultry Products", //10
  "Breakfast Cereals",//11
  "Vegetable Products",//12
  "Dairy and Egg",     //13
  "Meals Dishes",      //14
  "Vitamin C",         //15
};

int x, y;
byte items = 0, temp;

void product_show(char *pname, char *pprize){
  tft.clrScr();
  tft.setColor(VGA_WHITE);
  tft.drawRect(10,10,310,40);
  tft.setColor(VGA_AQUA);
  tft.fillRect(10,50,160,70);
  tft.drawRect(10,70,160,200);
  tft.setColor(VGA_YELLOW);
  tft.fillRect(10,210,60,230);
  tft.fillRect(260,210,310,230);
  tft.setColor(VGA_RED);
  tft.fillRect(200,90,280,125);
  tft.setColor(VGA_GREEN);
  tft.fillRect(200,135,280,165);

  tft.setColor(VGA_BLACK);
  tft.setBackColor(VGA_AQUA);
  tft.print("Details:", 60, 55);
  tft.setBackColor(VGA_YELLOW);
  tft.print("Prev", 20, 215);
  tft.print("Next", 270, 215);
  tft.setColor(VGA_WHITE);
  tft.setBackColor(VGA_GREEN);
  tft.print("ORDER", 223, 144);
  tft.setBackColor(VGA_RED);
  tft.print("PRIZE:", 220, 92);
  tft.setBackColor(VGA_BLACK);
  tft.print("Table No: 015", 190, 60);
  
  tft.setColor(VGA_WHITE);
  tft.setBackColor(VGA_BLACK);
  tft.print(pname, CENTER, 18);
  temp = random(TOTAL_DETAILS);
  tft.print(details[temp], 15, 75);
  temp = random(TOTAL_DETAILS);
  tft.print(details[temp], 15, 90);
  temp = random(TOTAL_DETAILS);
  tft.print(details[temp], 15, 105);
  temp = random(TOTAL_DETAILS);
  tft.print(details[temp], 15, 120);
  temp = random(TOTAL_DETAILS);
  tft.print(details[temp], 15, 135);
  temp = random(TOTAL_DETAILS);
  tft.print(details[temp], 15, 150);
  temp = random(TOTAL_DETAILS);
  tft.print(details[temp], 15, 165);
  temp = random(TOTAL_DETAILS);
  tft.print(details[temp], 15, 180);

  tft.setBackColor(VGA_RED);
  tft.print(pprize, 220, 108);
}

void confirmBox(){
  tft.clrScr();
  tft.setColor(VGA_WHITE);
  tft.fillRect(10,85,310,175);
  tft.setColor(VGA_BLUE);
  tft.fillRect(15,90,305,170);
  tft.setColor(VGA_RED);
  tft.fillRect(175,145,230,165);
  tft.fillRect(240,145,300,165);

  tft.setColor(VGA_WHITE);
  tft.setBackColor(VGA_BLUE);
  tft.print("Are you really place your order?", 35, 115);
  tft.setBackColor(VGA_RED);
  tft.print("Cancel", 180, 150);
  tft.print("Confirm", 245, 150);

  while(1){
    if(touch.dataAvailable()){
      touch.read();
      x = touch.getX();
      y = touch.getY();

      if(x >= 175 && x <= 230){    //Cancel
        if(y >= 145 && y <= 165){
          product_show(item_name[items], item_prize[items]);
          break;
        }
      }  
      if(x >= 240 && x <= 295){    //Confirm
        if(y >= 145 && y <= 165){
          send_order();
          break;
        }
      }  
    }
  }
}

void send_order(){
  switch(items){
    case 0: txd = "ID01"; break;
    case 1: txd = "ID02"; break;
    case 2: txd = "ID03"; break;
    case 3: txd = "ID04"; break;
    case 4: txd = "ID05"; break;     
  }
  vw_send((uint8_t *)txd, strlen(txd));
  vw_wait_tx();
  
  tft.clrScr();
  tft.setColor(VGA_WHITE);
  tft.fillRect(10,85,310,175);
  tft.setColor(VGA_BLUE);
  tft.fillRect(15,90,305,170);
  tft.setColor(VGA_WHITE);
  tft.setBackColor(VGA_BLUE);
  tft.print("Thanks. Your order placed.", 60, 125);

  delay(2000);
  product_show(item_name[items], item_prize[items]);
}

void setup() {
  tft.InitLCD();
  tft.clrScr();
  touch.InitTouch();
  tft.setFont(SmallFont);
  vw_set_ptt_inverted(true); 
  vw_set_tx_pin(12);
  vw_setup(2000);

  product_show(item_name[items], item_prize[items]);
}

void loop() {
  if(touch.dataAvailable()){
    touch.read();
    x = touch.getX();
    y = touch.getY();

    if(x >= 260 && x <= 310){    //NEXT
      if(y >= 210 && y <= 230){
        items++;
        if(items == TOTAL_ITEM) items = 0;
        product_show(item_name[items], item_prize[items]);
      }
    }
    if(x >= 10 && x <= 60){    //Prev
      if(y >= 210 && y <= 230){
        if(items != 0) items--;
        product_show(item_name[items], item_prize[items]);
      }
    }
    if(x >= 200 && x <= 280){    //Order
      if(y >= 135 && y <= 165){
        confirmBox();
      }
    }
  }
}
