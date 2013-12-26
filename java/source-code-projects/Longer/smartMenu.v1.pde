import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;
PImage b1;
PImage f1,f2,f3,f4,f5;
PImage p1,m1;
float xpos;
float ypos;
float drag = 10;
    float secondValue;
    float firstValue;

void setup(){
  size(1280, 720);
  frameRate(48);
      float firstValue = 0;
      float secondValue =0;

  oscP5 = new OscP5(this, 7400);
  myRemoteLocation = new NetAddress("127.0.0.1",7400);
   f1=loadImage("food1.png");
   f2=loadImage("food2.png");
   f3=loadImage("food3.png");
   f4=loadImage("food4.png");
   f5=loadImage("food5.png");
   m1=loadImage("-2.png");
   p1=loadImage("-1.png");
   b1=loadImage("background.jpg");
  image(b1, 0, 0);
//  image(f1, 400, 300);
//  image(f2, 600, 300);
//  image(f3, 800, 300);
//  image(f4, 200, 300);
//  image(f5, 1000, 300);

}

 
void oscEvent(OscMessage theOscMessage) {

  if (theOscMessage.checkAddrPattern("/test")==true) {
    float firstValue = theOscMessage.get(0).floatValue(); // intValue() stringValue()
    float secondValue = theOscMessage.get(1).floatValue();
    float thirdValue = theOscMessage.get(2).floatValue();
    println(" values: "+firstValue+", "+secondValue+", "+thirdValue);
       float dx = -firstValue*3 - xpos;
       xpos = xpos + dx/drag + 90;
       float dy = secondValue - ypos;
       ypos = ypos + dy/drag;
  
//    if(xpos>800){
//     cotroller=(cotroller+1+4)%4 
//    }
  }
}
void draw(){
  image(b1, 0, 0);
  if(ypos<80){
    image(p1, 1000, 500);
  }
  else if(ypos>160){
    image(m1, 1000, 500);
  }

  if(xpos>100){
   image(f1, xpos-525, 150);
  image(f2, xpos-200, 150);
  image(f3, xpos+125, 150); 
image(f4, xpos+450, 150);   
image(f5, xpos-850, 150); 

  }
  else if(xpos>600){
    image(f1, xpos-200, 150);
    image(f2, 400, 700);
  }
}
//  img(Ima[cotroller],0,0)
//}//boolean?



void mouseDragged(){
  float dx = mouseX - xpos;
  xpos = xpos + dx/drag;
  float dy = mouseY - ypos;
  ypos = ypos + dy/drag;   
  image(b1, 0, 0);
  image(f4, xpos-400, 300);
  image(f1, xpos-200, 300);
  image(f2, xpos, ypos);
  image(f3, xpos+200, 300);
  image(f5, xpos+400, 300);
 if(mouseX>800){
  image(b1, 0, 0);
  background(253, 253, 153, 80);
  image(f1, 600, 300);
  image(f2, 800, 300);
  image(f3, 1000, 300);
  image(f4, 400, 300);
  image(f5, 200, 300);
  }
if(mouseX<400){
  image(b1, 0, 0);   
  background(253, 253, 153,  100);
  image(f1, 200, 300);
  image(f2, 400, 300);
  image(f3, 600, 300);
  image(f4, 1000, 300);
  image(f5, 800, 300);
  }
}
void mouseReleased() {
  image(b1, 0, 0);
  background(228, 200);
  image(f1, 400, 300);
  image(f2, 600, 300);
  image(f3, 800, 300);
  image(f4, 200, 300);
  image(f5, 1000, 300);
}
