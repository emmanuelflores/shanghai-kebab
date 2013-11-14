Wurm testWurm;

void setup() {
  frameRate(30);
  size(450,300);
  background(255);
  testWurm = new Wurm(100, 100);
}

void draw(){
  testWurm.drawWurm();
  
}

class Wurm {

  //variables
  int wurm_size = 5;
  float xpos, ypos;
  float xspeed = random(0, 1.4);
  float yspeed = random(0, 1.2);
  float xdirection = random(-1, 0);
  float ydirection = random(-1, 0);
  float myAngle = 0;

  //constructor
  Wurm(float xpos, float ypos) {
    //xpos = theXpos;
    //ypos = theYpos;
    this.xpos = xpos;
    this.ypos = ypos;
  }
  //methods
  void drawWurm() {

    xpos = xpos + ( xspeed * xdirection );
    ypos = ypos + ( yspeed * ydirection );

    if (xpos > width-wurm_size || xpos < 0) {
      xdirection *= -1;
    }
    if (ypos > height-wurm_size || ypos < 0) {
      ydirection *= -1;
    }


    /* Draw the centipede */
    myAngle += random(0, 12.015f);//0...2,5,9,10
    pushMatrix();
    translate(xpos, ypos);
    rotate(myAngle);//* multiplicar por varios valores
    stroke(random(0, 1), random(0, 5), random(0, 3), 1);//valores de
    //1 2 3 o mayores
    /*
    line(0, 0,random(-45,-30), random(-45,-30));
     line(0, 0,random(-45,-30), random(-45,-30));
     line(0, 0, -random(-45,-30), random(-45,-30));
     line(0, 0, -random(-45,-30), random(-45,-30));
     */
    line(0, 0, random(-145, -30), random(-45, -30));
    line(0, 0, random(-245, -130), random(-5, -30));
    line(0, 0, -random(-45, -30), random(-35, -430));
    line(0, 0, -random(-45, -30), random(-45, -130));
    //valores desiguales en los segmentos
    popMatrix();

    pushMatrix();
    //translate(xpos,ypos);
    translate(xpos*123, ypos*12);
    //rotate(myAngle);
    rotate(myAngle*20);
    //stroke(random(0,50),random(50,100),random(0,50),30);
    // stroke(random(0,5.0),random(5,100),random(0,5.0),30);
    stroke(random(0, 0.5), random(0.5, 1.0), random(0, 0.5), 100);//10
    /*
    line(50, 0,random(-45,30), random(-45,30));
     line(50, 0,random(-45,30), random(-45,30));
     line(50, 0, -random(-45,30), random(-45,30));
     stroke(255,20);
     line(50, 0, -random(-45,30), random(-45,30));
     noStroke();
     */
    line(5.0, 0, random(-4.5, 3.0), random(-4.5, 13.0));
    line(50, 0, random(-45, 30), random(-45, 30));
    line(50, 0, -random(-45, 30), random(-45, 30));
    stroke(255, 20);
    line(50, 0, -random(-45, 30), random(-45, 30));
    noStroke();
    fill(100, 255, 100, 10);
    //ellipse(50,50,5,5);
    ellipse(5.0, 5.0, 5, 5);//valores mayores o menores
    //fill(150,255,150,7);
    fill(random(15, 150), 255, random(15, 150), 7);
    ellipse(50, -30, 7, 3);
    popMatrix();
  }
}

