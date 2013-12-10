#include "CircleApp.h"

//--------------------------------------------------------------
CircleApp :: CircleApp () {
    
}

//--------------------------------------------------------------
CircleApp :: ~CircleApp () {
    
}

//--------------------------------------------------------------
void CircleApp::setup() {
	ofBackground(255);
    radius = 100;
}

//--------------------------------------------------------------
void CircleApp::update(){

}

//--------------------------------------------------------------
void CircleApp::draw() {
    int x = ofGetWidth()  * 0.5;
    int y = ofGetHeight() * 0.5;
    //int r = MIN(ofGetWidth(), ofGetHeight()) * 0.3;
    int p = 0;
    
	ofSetColor(ofColor::red);
    ofCircle(x, y, radius);
    
    x = ofGetWidth()  * 0.2;
    y = ofGetHeight() * 0.11;
    p = ofGetHeight() * 0.035;
    
    ofSetColor(ofColor::white);
    
}

//--------------------------------------------------------------
void CircleApp::exit() {
    //
}

//--------------------------------------------------------------
void CircleApp::touchDown(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void CircleApp::touchMoved(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void CircleApp::touchUp(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void CircleApp::touchDoubleTap(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void CircleApp::lostFocus(){

}

//--------------------------------------------------------------
void CircleApp::gotFocus(){

}

//--------------------------------------------------------------
void CircleApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void CircleApp::deviceOrientationChanged(int newOrientation){

}


//--------------------------------------------------------------
void CircleApp::touchCancelled(ofTouchEventArgs& args){

}

