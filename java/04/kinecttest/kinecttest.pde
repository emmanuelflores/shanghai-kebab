/* --------------------------------------------------------------------------
 * SimpleOpenNI User3d Test
 * --------------------------------------------------------------------------
 * Processing Wrapper for the OpenNI/Kinect 2 library
 * http://code.google.com/p/simple-openni
 * --------------------------------------------------------------------------
 * prog:  Max Rheiner / Interaction Design / Zhdk / http://iad.zhdk.ch/
 * date:  12/12/2012 (m/d/y)
 * ----------------------------------------------------------------------------
 */

import SimpleOpenNI.*;
import ddf.minim.*;

SimpleOpenNI context;
float        zoomF =0.5f;
float        rotX = radians(180);  // by default rotate the hole scene 180deg around the x-axis, 
// the data from openni comes upside down
float        rotY = radians(0);
boolean      autoCalib=true;

Minim minim;
AudioInput in;

PVector      bodyCenter = new PVector();
PVector      bodyDir = new PVector();
PVector      com = new PVector();                                   
PVector      com2d = new PVector();                                   
color[]       userClr = new color[] { 
  color(255, 0, 0), 
  color(0, 255, 0), 
  color(0, 0, 255), 
  color(255, 255, 0), 
  color(255, 0, 255), 
  color(0, 255, 255)
};

boolean extraStuffEnable;
int handDistance;
int phandDistance;
PVector leftHand;
PVector rightHand;
ArrayList<Stribe> s;
Stribe activeStribe;
  float soundToAffect;

void setup()
{
  size(1024, 768, P3D);  // strange, get drawing error in the cameraFrustum if i use P3D, in opengl there is no problem
  colorMode(HSB);

  minim = new Minim(this);
  
  // use the getLineIn method of the Minim object to get an AudioInput
  in = minim.getLineIn();

 s=new ArrayList<Stribe>();
 int activeStribeColor=int(random(0,255));
 activeStribe=new Stribe(activeStribeColor,0,0,0,0,0,0,random(0,100),random(0,10));
 
  context = new SimpleOpenNI(this);

  extraStuffEnable=true;
  handDistance=0;
  phandDistance=0;


  if (context.isInit() == false)
  {
    println("Can't init SimpleOpenNI, maybe the camera is not connected!"); 
    exit();
    return;
  }

  // disable mirror
  context.setMirror(false);

  // enable depthMap generation 
  context.enableDepth();

  // enable skeleton generation for all joints
  context.enableUser();

  stroke(255, 255, 255);
  smooth();  
  perspective(radians(45), 
  float(width)/float(height), 
  10, 150000);
}

void draw()
{
  
soundToAffect= map(in.left.get(1000),-1,1,0,1);
println( soundToAffect);

  // update the cam
  context.update();
 int[] userList= context.getUsers();
//println(extraStuffEnable);         

  if(extraStuffEnable==true){
    background(0, 0, 100);
  }else{
  background(0,0,0);
  }


  // set the scene pos
  translate(width/2, height/2, 0);
  rotateX(rotX);
  rotateY(rotY);
  scale(zoomF);

  int[]   depthMap = context.depthMap();
  int[]   userMap = context.userMap();
  int     steps   = 3;  // to speed up the drawing, draw every third point
  int     index;
  PVector realWorldPoint;

  translate(0, 0, -1000);  // set the rotation center of the scene 1000 infront of the camera

     for (int i=s.size()-1;i>=0;i--){
 Stribe st=s.get(i);
 st.stayShow(soundToAffect);
 if(st.lifeLeft<0){
 s.remove(i);
 }
 }
 
   if(extraStuffEnable==true){
   // draw the skeleton if it's available
 
    for (int i=0;i<userList.length;i++)
    {
      if (context.isTrackingSkeleton(userList[i]))
        drawSkeleton(userList[i]);
        
      // draw the center of mass
      if (context.getCoM(userList[i], com))
      {
        stroke(100, 255, 0);
        strokeWeight(1);
        beginShape(LINES);
        vertex(com.x - 15, com.y, com.z);
        vertex(com.x + 15, com.y, com.z);

        vertex(com.x, com.y - 15, com.z);
        vertex(com.x, com.y + 15, com.z);

        vertex(com.x, com.y, com.z - 15);
        vertex(com.x, com.y, com.z + 15);
        endShape();

        fill(0, 255, 100);
        text(Integer.toString(userList[i]), com.x, com.y, com.z);
      }
    }
     //  // draw the kinect cam
    context.drawCamFrustum();
  }
  
  
      for (int i=0;i<userList.length;i++){
      leftHand=returnHand(userList[i],SimpleOpenNI.SKEL_LEFT_HAND);
      rightHand=returnHand(userList[i],SimpleOpenNI.SKEL_RIGHT_HAND);
      
if(extraStuffEnable==true){
      drawBetweenHands(userList[i]);
}      


      handDistance=int(dist(leftHand.x, leftHand.y,leftHand.z,rightHand.x,  rightHand.y,  rightHand.z));   
 
    // println(leftHand.x);    
      activeStribe.activeShow(leftHand.x, leftHand.y,leftHand.z,rightHand.x,  rightHand.y,  rightHand.z);
     if ((handDistance>1000)&&(phandDistance<1000)) {
      s.add(new Stribe(activeStribe.colour,leftHand.x, leftHand.y,leftHand.z,rightHand.x,  rightHand.y,  rightHand.z,activeStribe.life,activeStribe.sWeight));
      int newColor=int(random(0,255));
    Stribe newStribe=new Stribe(newColor,leftHand.x, leftHand.y,leftHand.z,rightHand.x,  rightHand.y,  rightHand.z,random(0,100),random(0,10));
   activeStribe=newStribe;  
  }  
    }

   phandDistance=handDistance;
}



// -----------------------------------------------------------------
// SimpleOpenNI user events

void onNewUser(SimpleOpenNI curContext, int userId)
{
  println("onNewUser - userId: " + userId);
  println("\tstart tracking skeleton");

  context.startTrackingSkeleton(userId);
}

void onLostUser(SimpleOpenNI curContext, int userId)
{
  println("onLostUser - userId: " + userId);
}

void onVisibleUser(SimpleOpenNI curContext, int userId)
{
  //println("onVisibleUser - userId: " + userId);
}


// -----------------------------------------------------------------
// Keyboard events

void keyPressed()
{
  switch(key)       
  {
  case ' ':
    extraStuffEnable=!extraStuffEnable;
    break;
  }

  switch(keyCode)
  {
  case LEFT:
    rotY += 0.1f;
    break;
  case RIGHT:
    // zoom out
    rotY -= 0.1f;
    break;
  case UP:
    if (keyEvent.isShiftDown())
      zoomF += 0.01f;
    else
      rotX += 0.1f;
    break;
  case DOWN:
    if (keyEvent.isShiftDown())
    {
      zoomF -= 0.01f;
      if (zoomF < 0.01)
        zoomF = 0.01;
    }
    else
      rotX -= 0.1f;
    break;
  }
}


