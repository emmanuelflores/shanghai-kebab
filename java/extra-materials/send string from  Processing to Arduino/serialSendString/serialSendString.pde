import processing.serial.*;
Serial myPort;  

String data;
boolean a1;
boolean a2;

void setup(){
size(200,200);
a1=false;
a2=false;
data="00\n";

println(Serial.list());
myPort = new Serial(this, "COM14", 9600);
}

void draw(){
  
if(a1==true){
fill(255);
}else{
fill(0);
}
rect(0,0,width/2,height);

if(a2==true){
fill(255);
}else{
fill(0);
}
rect(width/2,0,width/2,height);



if((a1==true)&&(a2==true)){
data="11\n";
}else if((a1==false)&&(a2==true)){
data="01\n";
}else if((a1==true)&&(a2==false)){
data="10\n";
}else{
data="00\n";
}
print(data);
myPort.write(data);

}

void mouseClicked(){
if(mouseX<width/2){
a1=!a1;
}else{
a2=!a2;
}
}
