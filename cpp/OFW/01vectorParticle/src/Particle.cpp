//
//  Particle.cpp
//  01vectorParticle
//
//  Created by efe on 06/11/13.
//
//

#include "Particle.h"


Particle::Particle(){};

Particle::Particle(float x, float y, float r):
xvalue(x),yvalue(y),radius(r){
    
    xstep = 3;
    ystep = 2;
    
}

Particle::Particle(float x, float y, float r, int xs, int ys):xvalue(x),yvalue(y),radius(r),
xstep(xs),ystep(ys){
    
}

Particle::~Particle(){
    
}

void Particle::update(){
	xvalue +=xstep;
	if((xvalue>=ofGetWindowWidth()-(radius*0.5)) || (xvalue<=(radius*0.5f))){
        xstep *=-1;
	}
	yvalue +=ystep;
	if((yvalue>=ofGetWindowHeight()-(radius*0.5f)) || (yvalue<=(radius*0.5f))){
		ystep *=-1;
	}
}


void Particle::draw(){
    ofNoFill();
    float red = (float)ofRandom(0.0f,1.0f);
    float green = (float)ofRandom(0.0f,1.0f);
    float blue = (float)ofRandom(0.0f,1.0f);
    glColor3f(red, green, blue);
    ofCircle(xvalue, yvalue, radius);
}