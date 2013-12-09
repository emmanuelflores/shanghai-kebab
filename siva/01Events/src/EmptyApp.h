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
    
    float radius;
    
    ofVec2f moveMouseVector;
    
    
};

#endif /* defined(__SIVABoilerplate__EmptyApp__) */
