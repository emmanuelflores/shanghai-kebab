#include <Servo.h>
Servo One;
Servo Two;


int incomingPos = 0;
int servoX = 0;
int servoY = 0;
int minVal = 280;
int maxVal = 400;
int xpin = 0;
int ypin = 1;
int zpin = 2;
int pos = 0;

void setup()
{
  byte incomingPos;
  Serial.begin(9600);
  
  One.attach(9); 
  Two.attach(10);
}
  

void loop(){
int val = analogRead(2);
val = map(val,280,400,0,180);

servoX = val; 
servoY = Serial.read();
One.write(servoX);
Two.write(servoY);
  
  
 }
