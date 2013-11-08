//
//  Particle.h
//  01vectorParticle
//
//  Created by efe on 06/11/13.
//
//

#ifndef ___1vectorParticle__Particle__
#define ___1vectorParticle__Particle__

#include <iostream>
#include "ofMain.h"

class Particle{
public:
    Particle();
	Particle(float x, float y, float r);
    Particle(float x, float y, float r, int xs, int ys);
    ~Particle();
    virtual void update();
    virtual void draw();
    
    float xvalue, yvalue, radius;
    int xstep, ystep;
};

#endif /* defined(___1vectorParticle__Particle__) */
