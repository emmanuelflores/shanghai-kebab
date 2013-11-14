class Stribe{
  int colour;
  float x1,y1,z1,x2,y2,z2;
  float life;
  float lifeLeft;
  float sWeight;
  
  Stribe(int c ,float xpos1, float ypos1, float zpos1,float xpos2, float ypos2, float zpos2,float l,float s){
  colour=c;
  x1=xpos1;
  y1=ypos1;
  z1=zpos1;
  x2=xpos2;
  y2=ypos2;
  z2=zpos2;
  sWeight=s;
  lifeLeft=l;
  life=lifeLeft;
  }

void activeShow(float xpos1, float ypos1, float zpos1,float xpos2, float ypos2, float zpos2){
  strokeWeight(sWeight);
  stroke(colour,255,255);
  line(xpos1,ypos1,zpos1,xpos2,ypos2,zpos2);
}

void stayShow(float soundToAffect){
  lifeLeft=lifeLeft-0.5;
  sWeight=sWeight+1;
  sWeight=sWeight*map(soundToAffect,0.5,1,1,0.01);
strokeWeight(sWeight);
float alpha=map((lifeLeft/life),1,0,255,0);
alpha=alpha*map(soundToAffect,0,1,1,1.99);
stroke(colour,255,255,alpha);
line(x1,y1,z1,x2,y2,z2);
}

}
