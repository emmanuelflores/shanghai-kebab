int boxSize = 600;
float inc = 0.05f;
color orange = color(212, 124, 23);
float rx, ry;

void setup() {
  size(500, 500, P3D);
  strokeWeight(20);
  //rotation
  rx = radians(-25);
  ry = radians(45);
}


void draw() {
  background(0);
  
  // rotate from center
  translate(width/2, height/2, -boxSize*5);
  rotateX(rx);
  rotateY(ry);

  // box!
  stroke(0);
  fill(orange);
  box(boxSize); 
  
  translate(600,0,0);
  box(boxSize);
  
  translate(-1200,0,0);
  box(boxSize);

  // directional lines
//  pushMatrix();
//  translate(-boxSize*2, boxSize/2, boxSize/2);
//  stroke(255, 0, 0);
//  line(0, 0, 0, boxSize, 0, 0);
//  stroke(0, 255, 0);
//  line(0, 0, 0, 0, -boxSize, 0);
//  stroke(0, 0, 255);
//  line(0, 0, 0, 0, 0, -boxSize);
//  popMatrix();
}


void mouseDragged() {
  rx += (pmouseY-mouseY)*.01;
  ry += (pmouseX-mouseX)*-.01;
}

