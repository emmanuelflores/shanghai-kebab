#pragma once
#include "CuParticle.h"
#include "ofMain.h"
#include <list>

class ParticleController {
 public:
	ParticleController();
	void applyForce( float zoneRadius, float lowerThresh, float higherThresh, float attractStrength, float repelStrength, float orientStrength );
	void pullToCenter( const ofVec3f &center );
	void update( bool flatten );
	void draw();
	void addParticles( int amt );
	
	std::list<CuParticle>	mParticles;
	ofVec3f mParticleCentroid;
	int mNumParticles;
};