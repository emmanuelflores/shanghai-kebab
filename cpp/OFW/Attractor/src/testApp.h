#pragma once

#include "ofMain.h"
#include "Particle.h"
#include <vector>

static const unsigned int AMOUNT=100;//Add stuff here
static const unsigned int TRACE_LENGTH=4;//5 or less

class testApp : public ofBaseApp{
	public:
		void setup();
		void update();
		void draw();
		
		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y);
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
    
    virtual void drawBackground();
    
    
    std::vector<Particle*> dot;
    typedef std::vector<Particle*>::iterator pIter;
    
    int     counter;
    
    float sTreshold;
    float accx,accy;
    int trig;
    int startshake;
    int shake;
    int shakemaxnumber ;
    int timeofgesture;
};
