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
	ofBackground(255);
    ofSetFrameRate(30);
    mBall = new Ball();
    mBall->setup();
}

//--------------------------------------------------------------
void EmptyApp::update(){
    mBall->update();
}

//--------------------------------------------------------------
void EmptyApp::draw() {
    ofSetColor(100,100,100);
    ofNoFill();
    mBall->draw();
    
}

//--------------------------------------------------------------
void EmptyApp::exit() {
    //
}

//--------------------------------------------------------------
void EmptyApp::touchDown(ofTouchEventArgs &touch){
    //mBall->touchDownBallPosition(ofVec2f(touch.x,touch.y));
}

//--------------------------------------------------------------
void EmptyApp::touchMoved(ofTouchEventArgs &touch){
    //mBall->moveBall(ofVec2f(touch.x,touch.y));
}

//--------------------------------------------------------------
void EmptyApp::touchUp(ofTouchEventArgs &touch){
    
}

//--------------------------------------------------------------
void EmptyApp::touchDoubleTap(ofTouchEventArgs &touch){
    
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

