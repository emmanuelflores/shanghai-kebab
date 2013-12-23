String inData;

void setup() {
    Serial.begin(9600);
    pinMode(8,OUTPUT);
    pinMode(9,OUTPUT);

}

void loop() {
    while (Serial.available() > 0)
    {
        char recieved = Serial.read();
        inData += recieved; 

        // Process message when new line character is recieved
        if (recieved == '\n')
        {
   //     Serial.print(inData);
        if(inData.charAt(0)=='1'){
  //      Serial.println("true");
        digitalWrite(8,HIGH);
        }  else{
        digitalWrite(8,LOW);
        }
        
        if(inData.charAt(1)=='1'){
//          Serial.println("true");
        digitalWrite(9,HIGH);
        }  else{
        digitalWrite(9,LOW);
        }
          
            inData = ""; // Clear recieved buffer
        }
    }
}
