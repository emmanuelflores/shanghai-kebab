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
	Particle(const float& x, const float& y, const float& r);
    Particle(const float& x, const float& y, const float& r, const int& xs, const int& ys);
    ~Particle();
    virtual void update();
    virtual void draw();
    
    float xvalue, yvalue, radius;
    int xstep, ystep;
};

#endif /* defined(___1vectorParticle__Particle__) */
