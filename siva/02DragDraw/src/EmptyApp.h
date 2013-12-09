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
    
    
    ofVec2f moveMouseVector;
    float	w,h;
	int		rad, strokegrowth;
	int     red,green,blue,alpha = 255;
    
    
};

#endif /* defined(__SIVABoilerplate__EmptyApp__) */
