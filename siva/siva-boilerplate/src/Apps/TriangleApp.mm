#include "TriangleApp.h"

//--------------------------------------------------------------
TriangleApp :: TriangleApp () {
    
}

//--------------------------------------------------------------
TriangleApp :: ~TriangleApp () {
    
}

//--------------------------------------------------------------
void TriangleApp::setup() {	
	ofBackground(255);
}

//--------------------------------------------------------------
void TriangleApp::update(){

}

//--------------------------------------------------------------
void TriangleApp::draw() {
    int a = MIN(ofGetWidth(), ofGetHeight()) * 0.3;
    int b = sqrt( a * a + a * a );
    int x = ofGetWidth()  * 0.5;
    int y = ofGetHeight() * 0.5;
    int p = 0;
    
	ofSetColor(ofColor::red);
    ofTriangle(x, y - a, x + b, y + b, x - b, y + b);
    
    x = ofGetWidth()  * 0.2;
    y = ofGetHeight() * 0.11;
    p = ofGetHeight() * 0.035;

}

//--------------------------------------------------------------
void TriangleApp::exit() {
    //
}

//--------------------------------------------------------------
void TriangleApp::touchDown(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void TriangleApp::touchMoved(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void TriangleApp::touchUp(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void TriangleApp::touchDoubleTap(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void TriangleApp::lostFocus(){

}

//--------------------------------------------------------------
void TriangleApp::gotFocus(){

}

//--------------------------------------------------------------
void TriangleApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void TriangleApp::deviceOrientationChanged(int newOrientation){

}


//--------------------------------------------------------------
void TriangleApp::touchCancelled(ofTouchEventArgs& args){

}

