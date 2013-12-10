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
	// initialize the accelerometer
	ofxAccelerometer.setup();
	
	//If you want a landscape oreintation
	//iPhoneSetOrientation(OFXIPHONE_ORIENTATION_LANDSCAPE_RIGHT);
	
	//ofBackground(127,127,127);
    
    ofSetFrameRate(40.0f);
    ofBackground(255, 255, 255);
    ofEnableAlphaBlending();
    
    mIsPressed = false;
    
    mPerlin = Perlin();
    
}

//--------------------------------------------------------------
void EmptyApp::update(){
    if( mIsPressed )
		mParticleController.addParticles( NUM_PARTICLES_TO_SPAWN, mTouchLocation, mTouchVel );
	
	mParticleController.update(mPerlin);
}

//--------------------------------------------------------------
void EmptyApp::draw() {
    ofBackgroundGradient(ofColor::white,ofColor(210,210,210,120), OF_GRADIENT_BAR);
    mParticleController.draw();
    
}

//--------------------------------------------------------------
void EmptyApp::exit() {
    //
}

//--------------------------------------------------------------
void EmptyApp::touchDown(ofTouchEventArgs &touch){
    mIsPressed = true;
    mTouchLocation.x = touch.x;
    mTouchLocation.y = touch.y;
}

//--------------------------------------------------------------

void EmptyApp::moveFinger(int x, int y){
    mTouchVel = ( ofVec2f(x,y) - mTouchLocation );
	mTouchLocation = ofVec2f(x,y);
}


void EmptyApp::touchMoved(ofTouchEventArgs &touch){
    moveFinger(touch.x, touch.y);
}

//--------------------------------------------------------------
void EmptyApp::touchUp(ofTouchEventArgs &touch){
    mIsPressed = false;
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

