#include <Servo.h> 
 
Servo myservo;  
              
int pos = 0; 
int direct=1;

int fsrPin = 0;
int LEDpin1=11;
int LEDpin2=10;
int fsrReading;


void setup(){
Serial.begin (9600);  
pinMode(LEDpin1,OUTPUT);
pinMode(LEDpin2,OUTPUT);
myservo.attach(9);
}


void loop () {
  fsrReading = analogRead(0);

Serial.println (fsrReading);

if (fsrReading < 30) {
digitalWrite(LEDpin1,LOW);
digitalWrite(LEDpin2,LOW);
pos=0;

} else if (fsrReading <150) {
digitalWrite(LEDpin1,HIGH);
digitalWrite(LEDpin2,LOW);
pos=0;

} else if (fsrReading >200) {
digitalWrite(LEDpin1,LOW);
digitalWrite(LEDpin2,HIGH);
pos=pos+1*direct;
                                
myservo.write(pos); 
if((pos<0)||(pos>180)){
direct=direct*(-1);
}    


}
}
