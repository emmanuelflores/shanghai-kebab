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
    ofSetBackgroundAuto(false);
    
    strokegrowth=1;
	rad=1;
}

//--------------------------------------------------------------
void EmptyApp::update(){
    rad = (rad + strokegrowth);
	if (rad > 50) {
		strokegrowth = strokegrowth * -1;
	}
	else if (rad < 1) {
		strokegrowth = +1;
	}
    
    red = ofRandom(0,255);
    green = ofRandom(0,255);
    blue = ofRandom(0,255);
    alpha = ofRandom(0,255);
}

//--------------------------------------------------------------
void EmptyApp::draw() {
    ofSetColor(red,green,blue,alpha);
    ofFill();
    ofCircle(moveMouseVector.x, moveMouseVector.y, rad);
    
}

//--------------------------------------------------------------
void EmptyApp::exit() {
    //
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
    ofBackground(255);
    moveMouseVector.x = touch.x;
    moveMouseVector.y = touch.y;
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

