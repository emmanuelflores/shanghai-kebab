//
//  EmptyApp.h
//  SIVABoilerplate
//
//  Created by efe on 07/12/13.
//
//

#ifndef __SIVABoilerplate__EmptyApp__
#define __SIVABoilerplate__EmptyApp__

#include <iostream>

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

#include "Perlin.h"
#include "ParticleController.h"

#define NUM_PARTICLES_TO_SPAWN 10 //10 15 25

class EmptyApp : public ofxiOSApp {
	
public:
    
    EmptyApp ();
    ~EmptyApp ();
    
	void setup();
	void update();
	void draw();
	void exit();
	
	void touchDown(ofTouchEventArgs &touch);
	void touchMoved(ofTouchEventArgs &touch);
	void touchUp(ofTouchEventArgs &touch);
	void touchDoubleTap(ofTouchEventArgs &touch);
	void touchCancelled(ofTouchEventArgs &touch);
    
	void lostFocus();
	void gotFocus();
	void gotMemoryWarning();
	void deviceOrientationChanged(int newOrientation);
    virtual void moveFinger(int x, int y);
    
    ofVec2f mTouchLocation;
	ofVec2f mTouchVel;
    bool mIsPressed;
    
    Perlin mPerlin;
    
    ParticleController mParticleController;
    
};

#endif /* defined(__SIVABoilerplate__EmptyApp__) */
