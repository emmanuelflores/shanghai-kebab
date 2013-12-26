class TimeLine {
  int top;
  int bottom;
  int xpos;
  int y;
  int date;
  boolean over;
  boolean lock;

  TimeLine(int t, int b, int x) {
    top=t;
    bottom= b;
    xpos=x;
    y=top;
  }

  void checkOver() {
    if (dist(mouseX, mouseY, xpos, y)<25) {
      over=true;
    }
    else {
      over=false;
    }
  }

  void update() {
    if (mousePressed && over) {
      lock=true;
    }
    if (!mousePressed) {
      lock=false;
    }
    if (lock==true) {
      y=constrain(mouseY, top, bottom);
    }
    date=int(map(y-top,0,bottom-top,1,30));
  }
  
  void display(){
  strokeWeight(2);
  stroke(150);
  line(xpos,top,xpos,bottom);
  stroke(255);
  fill(150);
  ellipse(xpos,y,25,25);
  text("11."+date,xpos+35,y);
  }
  
  int returnDate(){
  return date;
  }
  
}

