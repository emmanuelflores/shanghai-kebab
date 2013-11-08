#include "particle.h"
#include "ofMain.h"
#define OF_ADDON_USING_OFXVECTORMATH

//------------------------------------------------------------
particle::particle(){
	setInitialCondition(0,0,0,0);
	damping = .005f;//.0005f
	angleSpeed = ofRandom(0.001f, 0.0005f);//(.1f,.5f) (0.001f, 0.0005f)
	radius = ofRandom(1, 3);//(10,30)
	circleSize = ofRandom(2, 20);
}

//------------------------------------------------------------
void particle::resetForce(){
    // we reset the forces every frame
    frc.set(0,0);
}

//------------------------------------------------------------
void particle::addForce(float x, float y){
    // add in a force in X and Y for this frame.
    frc.x = frc.x + x;
    frc.y = frc.y + y;
}

//------------------------------------------------------------
void particle::addDampingForce(){
	
	// the usual way to write this is  vel *= 0.99
	// basically, subtract some part of the velocity 
	// damping is a force operating in the oposite direction of the 
	// velocity vector
	
    //frc.x = frc.x - vel.x * damping;
	frc.x = frc.x - vel.x * damping/2;
    frc.y = frc.y - vel.y * damping;
}

//------------------------------------------------------------
void particle::setInitialCondition(float px, float py, float vx, float vy){
    pos.set(px,py);
	vel.set(vx,vy);
}

//------------------------------------------------------------
void particle::update(){
	angle+= angleSpeed;
	vel = vel + frc;
	pos = pos + vel;

}

//------------------------------------------------------------
void particle::draw(){
	float xPos = pos.x + radius * tan(angle);//cos(angle)
	float yPos = pos.y + radius * sin(angle);//sin(angle)
	
	ofSetColor(255, 255, 255, 100);
    ofCircle(xPos,yPos, circleSize);
	
	ofSetColor(255, 255, 255, 255);
	ofCircle(xPos, yPos, 1);
	
	//Draw Normal points
	//ofCircle(pos.x, pos.y, 2);
}

