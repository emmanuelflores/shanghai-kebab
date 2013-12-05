#include "SquareApp.h"

//--------------------------------------------------------------
SquareApp :: SquareApp () {
    
}

//--------------------------------------------------------------
SquareApp :: ~SquareApp () {
    
}

//--------------------------------------------------------------
void SquareApp::setup() {	
	ofBackground(255);

}

//--------------------------------------------------------------
void SquareApp::update(){

}

//--------------------------------------------------------------
void SquareApp::draw() {
    ofEnableAlphaBlending();
    
    int w = MIN(ofGetWidth(), ofGetHeight()) * 0.6;
    int h = w;
    int x = (ofGetWidth() - w)  * 0.5;
    int y = (ofGetHeight() - h) * 0.5;
    int p = 0;
    
	ofSetColor(ofColor::red);
    ofRect(x, y, w, h);
    
    x = ofGetWidth()  * 0.2;
    y = ofGetHeight() * 0.11;
    p = ofGetHeight() * 0.035;
}

//--------------------------------------------------------------
void SquareApp::exit() {
    //
}

//--------------------------------------------------------------
void SquareApp::touchDown(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void SquareApp::touchMoved(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void SquareApp::touchUp(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void SquareApp::touchDoubleTap(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void SquareApp::lostFocus(){

}

//--------------------------------------------------------------
void SquareApp::gotFocus(){

}

//--------------------------------------------------------------
void SquareApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void SquareApp::deviceOrientationChanged(int newOrientation){

}


//--------------------------------------------------------------
void SquareApp::touchCancelled(ofTouchEventArgs& args){

}

