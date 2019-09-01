
int motor = 2;     //assign motor with arduino in D2.
int sensor = 1;    //assign soil sensor in A1.
int soil = 0;      //sensor output variable.
boolean flag = false;

void setup() {
  Serial.begin(9600);   //start serial communication.
  pinMode(motor, OUTPUT);   //setup motor PIN as output.
}

void loop(){    //endless loop. do it forever.
  soil = analogRead(sensor);
  Serial.println(soil);
  
  if(soil < 150){ //set motor as OFF. 
    flag = false;
    digitalWrite(motor, LOW);}
  else if(soil > 735){ //set motor as OFF. 
    flag = false;
    digitalWrite(motor, LOW);}
    
  if(soil > 600){flag = true;}
  
 if(soil > 160 && soil < 730){
   if(flag == true){
    digitalWrite(motor, HIGH);  //set motor as ON.
   }
 }
}
