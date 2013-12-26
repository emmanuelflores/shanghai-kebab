const int  buttonPin1 = 2; 
const int  buttonPin2 = 3;
const int  buttonPin3 = 4;
const int ledPin = 8; // the pin that the LED is attached to
const int ledPin1 = 5; 
const int ledPin2 = 11;
const int ledPin3 = 9;
const int ledPin4 = 6;
const int ledPin5 = 12;
const int ledPin6 = 13;
const int ledPin7 = 7;
const int ledPin8 = 10;


int buttonPushCounter = 0;
int buttonPushCounter1 = 0;
int buttonPushCounter2 = 0;
int buttonPushCounter3 = 0;// counter for the number of button presses
int buttonState1 = 0;
int buttonState2 = 0;
int buttonState3 = 0;// current state of the button
int lastButtonState1 = 0;
int lastButtonState2 = 0;
int lastButtonState3 = 0;
int buttonPushTotal = 0;


void setup() {
  // initialize the button pin as a input:
  pinMode(buttonPin1, INPUT);
  pinMode(buttonPin2, INPUT);
  pinMode(buttonPin3, INPUT);
  // initialize the LED as an output:
  pinMode(ledPin, OUTPUT);
  pinMode(ledPin1, OUTPUT);
  pinMode(ledPin2, OUTPUT);
  
  
  
  Serial.begin(9600);
}

void loop(){
  if (buttonPushCounter3 > 5){
  countSteps();
  }
  else{
  calabrate();
  }
 // if
 //sayHello();
} 
  

void calabrate(){
 
  buttonState1 = digitalRead(buttonPin1);
  buttonState2 = digitalRead(buttonPin2);
  buttonState3 = digitalRead(buttonPin3);

  if (buttonState1 != lastButtonState1) {
    if (buttonState1 == HIGH) {
      buttonPushCounter1++;
      Serial.println("on");
      Serial.print("number of button1 pushes:  ");
      Serial.println(buttonPushCounter1);
      Serial.println(buttonPushTotal);
    }
    else {
      Serial.println("off");
    }
  }
  lastButtonState1 = buttonState1;
  
  
  if (buttonState2 != lastButtonState2) {
    if (buttonState2 == HIGH) {
      buttonPushCounter2++;
      Serial.println("on");
      Serial.print("number of button2 pushes:  ");
      Serial.println(buttonPushCounter2);
      Serial.println(buttonPushTotal);
    }
    else {
      Serial.println("off");
    }
  }
  lastButtonState2 = buttonState2;  
  
  
  if (buttonState3 != lastButtonState3) {
    if (buttonState3 == HIGH) {
      buttonPushCounter3++;
      Serial.println("on");
      Serial.print("number of button3  pushes:  ");
      Serial.println(buttonPushCounter3);
      Serial.println(buttonPushCounter);
    }
    else {
      Serial.println("off");
    }
  }

  lastButtonState3 = buttonState3;

buttonPushTotal = buttonPushCounter1 + buttonPushCounter2;
}

//void sayHello(){
// Serial.println("hello"); 
//}
//---------------------------------------------------------------
 void countSteps(){
  buttonState1 = digitalRead(buttonPin1);
  buttonState2 = digitalRead(buttonPin2);

  if (buttonState1 != lastButtonState1) {
    if (buttonState1 == HIGH) {
      buttonPushCounter1++;
      Serial.println("on");
      Serial.print("number of button1 pushes:  ");
      Serial.println(buttonPushCounter1);
      Serial.println(buttonPushCounter);
    }
    else {
      Serial.println("off");
    }
  }
  lastButtonState1 = buttonState1;
  
  
  if (buttonState2 != lastButtonState2) {
    if (buttonState2 == HIGH) {
      buttonPushCounter2++;
      Serial.println("on");
      Serial.print("number of button2 pushes:  ");
      Serial.println(buttonPushCounter2);
      Serial.println(buttonPushCounter);
    }
    else {
      Serial.println("off");
    }
  }

  lastButtonState2 = buttonState2;

buttonPushCounter = buttonPushCounter1 + buttonPushCounter2;

 int i = buttonPushCounter; 
  
  
 int k = buttonPushTotal;//calabrate//number of total steps
 int j = 9; //constant//number of LEDs
 int p = (k/j);//steps for m,n to add
 int m = p;
 int n = 0;
  
 if (buttonPushCounter < k + 2 ) {
  for(int i=n;i<m;i++){
      if (buttonPushCounter == i ) {
   digitalWrite(ledPin, HIGH);
  }
  else {
   digitalWrite(ledPin, LOW);
}
  }
  n = n + p;
  m = m + p;    
  
  
  for(int i=n;i<m;i++){
      if (buttonPushCounter == i ) {
   digitalWrite(ledPin1, HIGH);
   digitalWrite(ledPin, HIGH);
  }
  else {
   digitalWrite(ledPin1, LOW);
  }
  }
  n = n + p;
  m = m + p;  
  
 for(int i=n;i<m;i++){
   if (buttonPushCounter == i ) {
    digitalWrite(ledPin2, HIGH);
    digitalWrite(ledPin1, HIGH);
    digitalWrite(ledPin, HIGH);
  } 
  else {
   digitalWrite(ledPin2, LOW);
  }
 }
  n = n + p;
  m = m + p; 
  
  
  for(int i=n;i<m;i++){
    if (buttonPushCounter == i ) {
    digitalWrite(ledPin3, HIGH);
    digitalWrite(ledPin2, HIGH);
    digitalWrite(ledPin1, HIGH);
    digitalWrite(ledPin, HIGH);
  } 
  else {
   digitalWrite(ledPin3, LOW);
  }
  }
  n = n + p;
  m = m + p;  
  
  for(int i=n;i<m;i++){
    if (buttonPushCounter == i ) {
    digitalWrite(ledPin4, HIGH);
    digitalWrite(ledPin3, HIGH);
    digitalWrite(ledPin2, HIGH);
    digitalWrite(ledPin1, HIGH);
    digitalWrite(ledPin, HIGH);
  } 
  else {
   digitalWrite(ledPin4, LOW);
  }
  }
  n = n + p;
  m = m + p;  
  
  for(int i=n;i<m;i++){
    if (buttonPushCounter == i ) {
    digitalWrite(ledPin5, HIGH);
    digitalWrite(ledPin4, HIGH);
    digitalWrite(ledPin3, HIGH);
    digitalWrite(ledPin2, HIGH);
    digitalWrite(ledPin1, HIGH);
    digitalWrite(ledPin, HIGH);
  } 
  else {
   digitalWrite(ledPin5, LOW);
  }
  }
  n = n + p;
  m = m + p;  
  
  for(int i=n;i<m;i++){
    if (buttonPushCounter == i ) {
    digitalWrite(ledPin6, HIGH);
    digitalWrite(ledPin5, HIGH);
    digitalWrite(ledPin4, HIGH);
    digitalWrite(ledPin3, HIGH);
    digitalWrite(ledPin2, HIGH);
    digitalWrite(ledPin1, HIGH);
    digitalWrite(ledPin, HIGH);
  } 
  else {
   digitalWrite(ledPin6, LOW);
  }
  }
  n = n + p;
  m = m + p;  
  
  for(int i=n;i<m;i++){
    if (buttonPushCounter == i ) {
    digitalWrite(ledPin7, HIGH);
    digitalWrite(ledPin6, HIGH);
    digitalWrite(ledPin5, HIGH);
    digitalWrite(ledPin4, HIGH);
    digitalWrite(ledPin3, HIGH);
    digitalWrite(ledPin2, HIGH);
    digitalWrite(ledPin1, HIGH);
    digitalWrite(ledPin, HIGH);
  } 
  else {
   digitalWrite(ledPin7, LOW);
  }
  }
  n = n + p;
  m = m + p;   
  
  for(int i=n;i<m;i++){
    if (buttonPushCounter == i ) {
    digitalWrite(ledPin8, HIGH);
    digitalWrite(ledPin7, HIGH);
    digitalWrite(ledPin6, HIGH);
    digitalWrite(ledPin5, HIGH);  
    digitalWrite(ledPin4, HIGH);
    digitalWrite(ledPin3, HIGH);
    digitalWrite(ledPin2, HIGH);
     digitalWrite(ledPin1, HIGH);
    digitalWrite(ledPin, HIGH);
  } 
  else {
   digitalWrite(ledPin8, LOW);
  }
  }
  n = n + p;
  m = m + p; 
  
//  for(int i=n;i<m;i++){
//    if (buttonPushCounter == i ) {
//    digitalWrite(ledPin9, HIGH);
//    digitalWrite(ledPin8, HIGH);
//    digitalWrite(ledPin7, HIGH);
//    digitalWrite(ledPin6, HIGH);
//    digitalWrite(ledPin5, HIGH);
//    digitalWrite(ledPin4, HIGH);
//    digitalWrite(ledPin3, HIGH);
//    digitalWrite(ledPin2, HIGH);
//    digitalWrite(ledPin1, HIGH);
//    digitalWrite(ledPin, HIGH);
//  } 
//  else {
//   digitalWrite(ledPin9, LOW);
//  }
//  }
//  n = n + p;
//  m = m + p;  
  
   
 }
 
  else { 
  buttonPushCounter1 = 0;
  buttonPushCounter2 = 0;
   n = 0;
   m = j;
 }
  
}

