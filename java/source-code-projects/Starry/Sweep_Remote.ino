/*
 * IRremote: IRrecvDemo - demonstrates receiving IR codes with IRrecv
 * An IR detector/demodulator must be connected to the input RECV_PIN.
 * Version 0.1 July, 2009
 * Copyright 2009 Ken Shirriff
 * http://arcfn.com
 */

#include <IRremote.h>

int power_flag = 0;
const int led = 9;
const int RECV_PIN = 2;
IRrecv irrecv(RECV_PIN);
decode_results results;

// Sweep
// by BARRAGAN <http://barraganstudio.com> 
// This example code is in the public domain.
int buttonState = 0; 
int PbuttonState=0;
int Counter=0;
const int buttonPin = 2;
const int ledPin=13;
#include <Servo.h> 
 
Servo myservo;  // create servo object to control a servo 
                // a maximum of eight servo objects can be created 
 
int pos = 0;    // variable to store the servo position 
 
void setup() 
{ 
  Serial.begin(9600);
  pinMode(buttonPin, INPUT);
  pinMode(ledPin, OUTPUT);
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
  irrecv.enableIRIn();   // 启动红外解码
} 
 
 
void loop() {
  if (irrecv.decode(&results)) {
    Serial.println(results.value, HEX);
Serial.println(buttonState);
  buttonState = digitalRead(buttonPin);
  digitalWrite(ledPin,buttonState);

  if (results.value == 0xFD8877){ 
  Counter=Counter+1;
    if (Counter % 2 == 0){
    pos=180;
myservo.write(pos);
delay(2000);
  pos=88;
myservo.write(pos);
    }
    else{
       pos=0;
myservo.write(pos);
delay(2000);
  pos=88;
myservo.write(pos);
    }
  }
else{
  pos =88; 
myservo.write(pos);

}
    irrecv.resume(); 
    delay(500);
  PbuttonState=buttonState;
}
}
