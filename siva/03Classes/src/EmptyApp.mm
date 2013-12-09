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
	ofBackground(200,200,122);
    for(unsigned int i=0;i<amount;i++){
        mPCluster.push_back(new Particle());
    }
    
    for(vector<Particle*>::iterator p=mPCluster.begin();
       p!=mPCluster.end();++p){
		(*p)->setup();
	}
}

//--------------------------------------------------------------
void EmptyApp::update(){
    for(vector<Particle*>::iterator p=mPCluster.begin();
        p!=mPCluster.end();++p){
		(*p)->update();
	}
}

//--------------------------------------------------------------
void EmptyApp::draw() {
    //sexy line
	for(vector<Particle*>::iterator p=mPCluster.begin();
        p!=mPCluster.end();++p){
		(*p)->draw();
	}
    
}

//--------------------------------------------------------------
void EmptyApp::exit() {
    //
}

//--------------------------------------------------------------
void EmptyApp::touchDown(ofTouchEventArgs &touch){
    
}

//--------------------------------------------------------------
void EmptyApp::touchMoved(ofTouchEventArgs &touch){
    for(vector<Particle*>::iterator p=mPCluster.begin();
        p!=mPCluster.end();++p){
		(*p)->touchMoved(touch);
	}
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

