//
//  EmptyApp.cpp
//  SIVABoilerplate
//
//  Created by efe on 07/12/13.
//
//

#include "EmptyApp.h"


//--------------------------------------------------------------
EmptyApp :: EmptyApp () {

}

//--------------------------------------------------------------
EmptyApp :: ~EmptyApp () {
    
}

//--------------------------------------------------------------
void EmptyApp::setup() {
    ofxAccelerometer.setup();
	ofBackground(255);
    ofEnableSmoothing();
    blendValue = 0;
    ofEnableDepthTest();
    glEnable(GL_DEPTH_TEST);
    
    
    for(unsigned int i = 0;i<totalBoxes;i++){
        float px = ofRandom((ofGetWidth()*0.5f)*-1.0f,ofGetWidth()*0.5f);
        float py = ofRandom((ofGetHeight()*0.5f)*-1.0f,ofGetHeight()*0.5f);
        float pz = ofRandom(-300,300);
        float si = ofRandom(10,100);
        
        posX.push_back(new float(px));
        posY.push_back(new float(py));
        posZ.push_back(new float(pz));
        sizes.push_back(new float(si));
    }
    
}

//--------------------------------------------------------------
void EmptyApp::update(){

}

//--------------------------------------------------------------
void EmptyApp::draw() {
    cam.begin();
    ofRotateY(360*sinf(float(ofGetFrameNum())/500.0f));
    ofRotate(-90, 1, 0, 0);
    for(unsigned int i = 0;i<totalBoxes;i++){
        //color
        int randomIndex = (int)ofRandom(10);
        pickedColors.push_back(palette[randomIndex]);
        ofNoFill();
        ofSetColor(0, 0, 0);
        ofDrawBox(*posX[i], *posY[i], *posZ[i], *sizes[i]);
        
        
    }
    
    cam.end();
    
}

//--------------------------------------------------------------
void EmptyApp::exit() {
    
}

//--------------------------------------------------------------
void EmptyApp::touchDown(ofTouchEventArgs &touch){
    NSLog(@"touch down events: %d %f %f",touch.id,touch.x,touch.y);
}

//--------------------------------------------------------------
void EmptyApp::touchMoved(ofTouchEventArgs &touch){
    NSLog(@"touch moved events: %d %f %f",touch.id,touch.x,touch.y);
    moveMouseVector.x = touch.x;
    moveMouseVector.y = touch.y;
}

//--------------------------------------------------------------
void EmptyApp::touchUp(ofTouchEventArgs &touch){
    NSLog(@"touch up events: %d %f %f",touch.id,touch.x,touch.y);
}

//--------------------------------------------------------------
void EmptyApp::touchDoubleTap(ofTouchEventArgs &touch){
    NSLog(@"You are double tapping");
}

//--------------------------------------------------------------
void EmptyApp::lostFocus(){
    
}

//--------------------------------------------------------------
void EmptyApp::gotFocus(){
    
}

//--------------------------------------------------------------
void EmptyApp::gotMemoryWarning(){
    
}

//--------------------------------------------------------------
void EmptyApp::deviceOrientationChanged(int newOrientation){
    
}


//--------------------------------------------------------------
void EmptyApp::touchCancelled(ofTouchEventArgs& args){
    
}

