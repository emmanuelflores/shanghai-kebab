/*
HC-SR04 Ping distance sensor]
VCC to arduino 5v GND to arduino GND
Echo to Arduino pin 13 Trig to Arduino pin 12
Red POS to Arduino pin 11
Green POS to Arduino pin 10
560 ohm resistor to both LED NEG and GRD power rail
More info at: http://goo.gl/kJ8Gl
Original code improvements to the Ping sketch sourced from Trollmaker.com
Some code and wiring inspired by http://en.wikiversity.org/wiki/User:Dstaub/robotcar
*/

#define trigPin 13
#define echoPin 12
#include <Servo.h> 

Servo myservo; 
Servo servo;
Servo servo1;
Servo servo2;

int pos1 = 0; 
int pos2 = 0;
int pos3 = 0;
int pos4 = 0;
boolean doit;


void setup() {
  Serial.begin (9600);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  myservo.attach(9);  
  servo.attach(10);
  servo1.attach(11);
  servo2.attach(8);
  doit=true;

}

void loop() {
  long duration, distance;
  digitalWrite(trigPin, LOW);  
  delayMicroseconds(2); 
  digitalWrite(trigPin, HIGH);

  delayMicroseconds(10); 
  digitalWrite(trigPin, LOW);
  duration = pulseIn(echoPin, HIGH);
  distance = (duration/2) / 29.1;
  Serial.println(distance);
  delay(1000);
  
  if (distance < 30) {
    if(doit==true){
  for(pos1 = 0; pos1 <=120; pos1 += 1)  
  {                                 
    myservo.write(pos1);              
    delay(50);   
      }
    } 
      if(pos1>=120){
        if(doit==true){
        for(pos2 = 0;pos2<=180; pos2 +=1){
      servo.write(pos2);
      delay(50);
          }
        }
        if(doit==true){
        for(pos3 = 0;pos3<=180; pos3 +=1){
      servo1.write(pos3);
      delay(50);
          }
        }
         if(doit==true){
        for(pos4 = 0;pos4<=180; pos4 +=1){
      servo2.write(pos4);
      delay(50);
          }
        }
        if(pos2>=180){
        pos2=180;
        servo.write(pos2);
        doit=false;
        }
        
        if(pos3>=180){
        pos3=180;
        servo1.write(pos3);
        doit=false;
        }
       
        if(pos4>=180){
        pos4=180;
        servo2.write(pos4);
        doit=false;
        }
      pos1=120;
      myservo.write(pos1);
      doit=false;    
     }
  }
  else{
  pos1=0;
  pos2=0;
  pos3=0;
  pos4=0;
myservo.write(pos1);
servo.write(pos2);
servo1.write(pos3);
servo2.write(pos4);

if(doit==false){
doit=true;
    }
    
  }  
}

