import processing.serial.*;
Serial myPort;  

PFont f;
PImage img;

Boolean sh;
Boolean bj;
Boolean jp;
String shp;
String bjp;
String jpp;
String data="000\n";

color c1=color(159,223,252);
color c2=color(110,255,16);
color c3=color(247,215,60);
color c4=color(18,170,255);
color c5=color(200,105,255);
color c6=color(255,49,49);
int[] pollution= {
  133, 255, 30
};

Table city_value_table;
TableRow pollutionFromTable;

TimeLine t;

void setup() {
  size(1280, 800);
  println(Serial.list());
myPort = new Serial(this, Serial.list()[4], 9600);
  
  img = loadImage("map.png");
  f=createFont("ArialMT", 21);
  textFont(f);
  textAlign(LEFT, CENTER);
  
  city_value_table = loadTable("cities.csv", "header");
  t=new TimeLine(160,575,100);
  
  sh=false;
  bj=false;
  jp=false;
}

void draw() {
  image(img, 0, 0);
  t.checkOver();
  t.update();
  t.display();
  int get=t.returnDate()-1;
 // println(get);
  
  pollutionFromTable=city_value_table.getRow(get);
  pollution[0]=pollutionFromTable.getInt("shanghai");
  pollution[1]=pollutionFromTable.getInt("beijing");
  pollution[2]=pollutionFromTable.getInt("tokyo");

  //shanghai
    stroke(255);
  strokeWeight(2);
  shp=checkPollution(pollution[0]);
  if (sh!= true) {
    fill(150);
    shp="0";
  }else{
  text("Shanghai:"+pollution[0]+"  level:"+shp,596+25,421-3);
  }
  ellipse(596, 421, 25, 25);

  //beijing
    stroke(255);
  strokeWeight(2);
  bjp=checkPollution(pollution[1]);
  if (bj!= true) {
    fill(150);
    bjp="0";
  }else{
  text("Beijing:"+pollution[1]+"  level:"+bjp,490+25,165-3);
  }
  ellipse(490, 165, 25, 25);


  //japan
    stroke(255);
  strokeWeight(2);
  jpp=checkPollution(pollution[2]);
  if (jp!= true) {
    fill(150);
    jpp="0";
  }else{
  text("Tokyo:"+pollution[2]+"  level:"+jpp,1053+25,271-3);
  }
  ellipse(1053, 271, 25, 25);
  
  data=shp+bjp+jpp+"\n";
  print(data);
  println(myPort.available());
  myPort.write(data);
}


void mouseClicked() {
  //shanghai
  if (dist(mouseX, mouseY, 596, 421)<25) {
    sh=!sh;
  }

  //beijing
  if (dist(mouseX, mouseY, 490, 165)<25) {
    bj=!bj;
  }

  //japan
  if (dist(mouseX, mouseY, 1053, 271)<25) {
    jp=!jp;
  }
}

String checkPollution(int p) {
  if (p<50) {
    fill(c1);
    return "1";
  }
  else if (p<100) {
    fill(c2);
    return "2";
  }
  else if (p<150) {
    fill(c3);
    return "3";
  }
  else if (p<200) {
    fill(c4);
    return "4";
  }
  else if (p<250) {
    fill(c5);
    return "5";
  }
  else {
    fill(c6);
    return "6";
  }
}

