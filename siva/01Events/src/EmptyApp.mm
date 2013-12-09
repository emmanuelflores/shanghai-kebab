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
    
}

//--------------------------------------------------------------
void EmptyApp::update(){
    
}

//--------------------------------------------------------------
void EmptyApp::draw() {
    int redValue = (int)ofMap(moveMouseVector.x, 0, ofGetWidth(), 0, 255);
    int greenValue = (int)ofMap(moveMouseVector.y, 0, ofGetHeight(), 0, 255);
    ofBackground(redValue, greenValue, 100);
    
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

