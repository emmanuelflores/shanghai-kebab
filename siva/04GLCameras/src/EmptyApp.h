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
#include <vector>

const static unsigned int totalBoxes = 30;


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
    
protected:
    //uniform values
    float blendValue;
    
    
    //values for the boxes
    //vector<float> posX, posY, posZ, sizes;
    vector<float*> posX, posY, posZ, sizes;
    
    ofEasyCam cam;
    
    
    bool isBackgroundCleared;
    
    
    ofColor c1 = ofColor(0,149,168);
    ofColor c2 = ofColor(0,97,111);
    ofColor c3 = ofColor(51,51,51);
    ofColor c4 = ofColor(102,102,102);
    ofColor c5 = ofColor(153,153,153);
    ofColor c6 = ofColor(204,204,204);
    ofColor c7 = ofColor(204,250,204);
    ofColor c8 = ofColor(102,220,204);
    ofColor c9 = ofColor(153,220,220);
    ofColor c10 = ofColor(102,153,220);
    ofColor palette[10] = {c1,c2,c3,c4,c5,c6,c7,c8,c9,c10};
    vector<ofColor>pickedColors;
    

    
};

#endif /* defined(__SIVABoilerplate__EmptyApp__) */
