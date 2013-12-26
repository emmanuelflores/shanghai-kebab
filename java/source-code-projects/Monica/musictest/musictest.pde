import ddf.minim.*;

Minim minim;
AudioPlayer player;

import processing.serial.*;

Serial myPort;  // Create object from Serial class
String val;      // Data received from the serial port
int valIn=0;

void setup() 
{
  size(200, 200);
 
 minim = new Minim(this);
     player = minim.loadFile("ahahah.mp3");
 
  String portName = Serial.list()[8];
  println(Serial.list());
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil(10);
}

void draw()
{



  background(255);             // Set background to white
  if (valIn >300) {              // If the serial value is 0,
    fill(0);                   // set fill to black
    

    player.play();
    
  } 
  else {                       // If the serial value is not 0,
    fill(204);                 // set fill to light gray
     player.pause();
  }
  rect(50, 50, 100, 100);
}

void serialEvent(Serial myPort) {
  val = myPort.readStringUntil(10);
 val=trim(val);
  println(val);
   valIn=int(val);
    println(valIn);
}


