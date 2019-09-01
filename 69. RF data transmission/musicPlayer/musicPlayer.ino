#include <Keypad.h>
#include <SD.h> 
#define SD_ChipSelectPin 10
#include <TMRpcm.h> 
#include <SPI.h>

const byte ROWS = 5;
const byte COLS = 6; 

char hexaKeys[ROWS][COLS] = {
  {'a','b','c','d','e','f'},
  {'g','h','i','j','k','l'},
  {'m','n','o','p','q','r'},
  {'s','t','u','v','w','x'},
  {'y','z','1','2','3','4'}
};
byte rowPins[ROWS] = {2, 3, 4, 5, 6}; 
byte colPins[COLS] = {A0, A1, A2, A3, A4, A5}; 

TMRpcm player;
Keypad keyPad = Keypad(makeKeymap(hexaKeys), rowPins, colPins, ROWS, COLS); 

void setup(){
  player.speakerPin = 9;
  Serial.begin(9600);

  if (!SD.begin(SD_ChipSelectPin)) {
    Serial.println("SD card not present. resetting..");
    delay(2000);
    setup();   
  }
  player.setVolume(5);
}
  
void loop(){
  char key = keyPad.getKey();
  
  if (key){
    Serial.println(key);

    switch(key){
      case 'a': playMusic("hello.wav"); break;
      case 'b': playMusic("hello.wav"); break;
      case 'c': playMusic("hello.wav"); break;
      case 'd': playMusic("hello.wav"); break;
      case 'e': playMusic("hello.wav"); break;
      case 'f': playMusic("hello.wav"); break;
      case 'g': playMusic("hello.wav"); break;
      case 'h': playMusic("hello.wav"); break;
      case 'i': playMusic("hello.wav"); break;
      case 'j': playMusic("hello.wav"); break;
      case 'k': playMusic("hello.wav"); break;
      case 'l': playMusic("hello.wav"); break;
      case 'm': playMusic("hello.wav"); break;
      case 'n': playMusic("hello.wav"); break;
      case 'o': playMusic("hello.wav"); break;
      case 'p': playMusic("hello.wav"); break;
      case 'q': playMusic("hello.wav"); break;
      case 'r': playMusic("hello.wav"); break;
      case 's': playMusic("hello.wav"); break;
      case 't': playMusic("hello.wav"); break;
      case 'u': playMusic("hello.wav"); break;
      case 'v': playMusic("hello.wav"); break;
      case 'w': playMusic("hello.wav"); break;
      case 'x': playMusic("hello.wav"); break;
      case 'y': playMusic("hello.wav"); break;
      case 'z': playMusic("hello.wav"); break;
      case '1': playMusic("hello.wav"); break;
      case '2': playMusic("hello.wav"); break;
      case '3': playMusic("hello.wav"); break;
      case '4': playMusic("hello.wav"); break;
    }
  }
}

void playMusic(char *filename){
  player.play(filename);
}
