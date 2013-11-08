#pragma once

#include "ofMain.h"
#include "Particle.h"
#include <vector>

const unsigned int amount = 50;

class testApp : public ofBaseApp{
	public:
		void setup();
		void update();
		void draw();
        virtual void addParticle(int amt);
        virtual void killParticles();
		
		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y);
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
    
    Particle	mParticle;
	vector<Particle*>	mPCluster;
    typedef vector<Particle*>::iterator pIter;
    float w,h;
};
