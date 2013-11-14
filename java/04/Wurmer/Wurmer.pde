void setup(){
 Wurm testWurm = new Wurm(100,100); 
}


class Wurm {
  
  //variables
  int wurm_size = 5;
  float xpos, ypos;
  float xspeed = random(0,1.4);
  float yspeed = random(0,1.2);
  float xdirection = random(-1,0);
  float ydirection = random(-1,0);
  float myAngle = 0;
  
  //constructor
  Wurm(float xpos, float ypos){
    //xpos = theXpos;
    //ypos = theYpos;
    this.xpos = xpos;
    this.ypos = ypos;
  }
  //methods
  
}

