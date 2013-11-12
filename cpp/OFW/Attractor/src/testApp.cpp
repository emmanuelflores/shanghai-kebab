#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    counter = 0;
    
    ofBackgroundGradient(ofColor::gray,ofColor(30,10,30), OF_GRADIENT_CIRCULAR);
    ofSetBackgroundAuto(true);
    ofEnableAlphaBlending();
    ofEnableSmoothing();
    
    
    for(unsigned int i=0;i<AMOUNT;i++){
        dot.push_back(new Particle());
    }
    
    
    for(pIter p=dot.begin(); p!=dot.end();++p){
        (*p)->setup();
    }
    
    for(unsigned int i=0;i<AMOUNT;i++){
        dot.at(i)->setNrOfTraceDots(TRACE_LENGTH);
    }
    
    
    //sTreshold = 1.6;
    sTreshold = 1.0;
    trig=0;
    shake=0;
    shakemaxnumber = 1;
    timeofgesture = 500;

}

//--------------------------------------------------------------
void testApp::update(){
    for(pIter p=dot.begin(); p!=dot.end();++p){
        (*p)->update();
    }
    
    
    //drawing when not using gradient
    if( counter == 0){
        ofSetBackgroundAuto(true);
    }else{
        ofSetBackgroundAuto(false);
    }
}

//--------------------------------------------------------------
void testApp::draw(){
    drawBackground();
    
    
    for(pIter p=dot.begin(); p!=dot.end();++p){
        (*p)->toScreen();
    }

}

//--------------------------------------------------------------
void testApp::keyPressed(int key){

}

//--------------------------------------------------------------
void testApp::keyReleased(int key){

}

//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y){
    for(pIter p=dot.begin(); p!=dot.end();++p){
        (*p)->mouseMoved(x,y);
    }
}

//--------------------------------------------------------------
void testApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void testApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void testApp::dragEvent(ofDragInfo dragInfo){ 

}


void testApp::drawBackground(){
    ofBackgroundGradient(ofColor::gray,ofColor(30,10,30), OF_GRADIENT_CIRCULAR);
}