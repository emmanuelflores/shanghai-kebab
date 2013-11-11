int boxSize = 50;
color orange = color(212, 124, 23);
float rx, ry;

ArrayList<Float> xValues = new ArrayList<Float>();
ArrayList<Float> yValues = new ArrayList<Float>();
ArrayList<Float> zValues = new ArrayList<Float>();
ArrayList<ArrayList<Float>> colors = new ArrayList<ArrayList<Float>>();


int amount = 20;

void setup() {
  size(500, 500, P3D);
  strokeWeight(10);
  //rotation
  rx = radians(-25);
  ry = radians(45);
  
  for(int i=0;i<amount;i++){
    ArrayList<Float> _colorsBox = new ArrayList<Float>();
    float _x = random(-550,550);
    float _y = random(-550,550);
    float _z = random(-250,250);
    for(int j=0;j<3;j++){
     float _color = random(0,255);
     _colorsBox.add(new Float(_color));
      
    }
    xValues.add(new Float(_x));
    yValues.add(new Float(_y));
    zValues.add(new Float(_z));
    colors.add(new ArrayList(_colorsBox));
  }
}


void draw() {
  background(100, 100, 100);

  translate(width/2, height/2, -boxSize*5);
  rotateX(rx);
  rotateY(ry);

  stroke(0);
  fill(orange);
  box(boxSize);
  
  for (int i=0;i<amount;i++) {
    pushMatrix();
      float _r,_g,_b;
//    float tx = random(-150, 150);
//    float ty = random(-150, 150);
//    float tz = random(-50, 50);
    translate(xValues.get(i),yValues.get(i),zValues.get(i));
    stroke(random(0,255),random(0,255),random(0,255));
    
    fill(orange);
    box(boxSize);
    popMatrix();
  }
}


void mouseDragged() {
  rx += (pmouseY-mouseY)*.01;
  ry += (pmouseX-mouseX)*-.01;
}

