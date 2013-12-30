import oscP5.*;
import netP5.*;
import processing.serial.*;
  
OscP5 oscP5;
NetAddress myRemoteLocation;

//created by chen and Connor Feng
//2013.12.29
//Jie Yang's LED board matrix project

Serial myPort;

int xint,yint;
String data;

void setup(){
 oscP5 = new OscP5(this,1451);
  myRemoteLocation = new NetAddress("127.0.0.1",1451);
  println(Serial.list());
//  String portName = Serial.list()[2];
  myPort = new Serial(this, "/dev/cu.usbmodem1451", 9600);
  
}

void draw() {
  background(0);
char x=char(xint);  
char y=char(yint);
data=str(x)+str(y)+"\n";
  print(data);
  myPort.write(data);
}

void oscEvent(OscMessage theOscMessage) {
  /* check if theOscMessage has the address pattern we are looking for. */
  
  if(theOscMessage.checkAddrPattern("/x/")==true) {
    /* check if the typetag is the right one. */
    if(theOscMessage.checkTypetag("i")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
      xint = theOscMessage.get(0).intValue();    
      println("xint recieved "+xint);
      return;
    }  
  } 

  if(theOscMessage.checkAddrPattern("/y/")==true) {
    /* check if the typetag is the right one. */
    if(theOscMessage.checkTypetag("i")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
      yint = theOscMessage.get(0).intValue();    
      println("yint recieved "+yint);
      return;
    }  
  } 
}
