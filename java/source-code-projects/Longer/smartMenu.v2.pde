import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;
PImage b1;
PImage[] img = new PImage[5];
PImage p1,m1;

int counter;
boolean longer,fk;

float xpos;
float ypos;
//float pxpos;
float dir;
float drag = 10;
    float secondValue;
    float firstValue;

void setup(){
  size(1280, 720);
  frameRate(48);
  counter = 0;
      float firstValue = 0;
      float secondValue =0;

  oscP5 = new OscP5(this, 7400);
  myRemoteLocation = new NetAddress("127.0.0.1",7400);
   img[0]=loadImage("food1.png");
   img[1]=loadImage("food2.png");
   img[2]=loadImage("food3.png");
   img[3]=loadImage("food4.png");
   img[4]=loadImage("food5.png");
   m1=loadImage("-2.png");
   p1=loadImage("-1.png");
   b1=loadImage("background.jpg");
   image(b1, 0, 0);
}

 
void oscEvent(OscMessage theOscMessage) {

  if (theOscMessage.checkAddrPattern("/test")==true) {
    float firstValue = theOscMessage.get(0).floatValue(); // intValue() stringValue()
    float secondValue = theOscMessage.get(1).floatValue();
    float thirdValue = theOscMessage.get(2).floatValue();
    println(" values: "+firstValue+", "+secondValue+", "+thirdValue);
       float dx = -firstValue*2 - xpos;
       xpos = xpos + dx/drag + 90;
       dir = xpos-500;
       println(dir);
//       pxpos = xpos;
       float dy = secondValue - ypos;
       ypos = ypos + dy/drag;
  
//    if(xpos>800){
//     cotroller=(cotroller+1+4)%4 
//    }
  }
}

void draw(){
  image(b1, 0, 0);
  if(ypos<70){
    image(p1, 1000, 450);
  }
  else if(ypos>180){
    image(m1, 1000, 450);
  }

  if(dir>300){
        longer = true;//heading right
        fk = true;//draw next
      }

      else if (dir<-200){
        longer = false;//heading left
        fk = true;//draw previous
      }
      
  if(longer && fk){
   if(counter<4){
    counter++;
   } else{
    counter = 4; 
   }
   fk = false;
  }
   else if(longer = false && fk){
    if(counter>0){
     counter--;
    } else{
     counter = 0; 
    }
    fk = false;
   }
  
  image(img[counter], 500, 150);    
      println(counter); 
}




//void mouseDragged(){
//  float dx = mouseX - xpos;
//  xpos = xpos + dx/drag;
//  float dy = mouseY - ypos;
//  ypos = ypos + dy/drag;   
//  image(b1, 0, 0);
//  image(f4, xpos-400, 300);
//  image(f1, xpos-200, 300);
//  image(f2, xpos, ypos);
//  image(f3, xpos+200, 300);
//  image(f5, xpos+400, 300);
// if(mouseX>800){
//  image(b1, 0, 0);
//  background(253, 253, 153, 80);
//  image(f1, 600, 300);
//  image(f2, 800, 300);
//  image(f3, 1000, 300);
//  image(f4, 400, 300);
//  image(f5, 200, 300);
//  }
//if(mouseX<400){
//  image(b1, 0, 0);   
//  background(253, 253, 153,  100);
//  image(f1, 200, 300);
//  image(f2, 400, 300);
//  image(f3, 600, 300);
//  image(f4, 1000, 300);
//  image(f5, 800, 300);
//  }
//}
//void mouseReleased() {
//  image(b1, 0, 0);
//  background(228, 200);
//  image(f1, 400, 300);
//  image(f2, 600, 300);
//  image(f3, 800, 300);
//  image(f4, 200, 300);
//  image(f5, 1000, 300);
//}
