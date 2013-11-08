#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    ofBackground(30, 30, 30);
    ofSetVerticalSync(true);
	ofSetFrameRate(60);
	ofEnableAlphaBlending();
    //one particle
    //mParticle=Particle(200.0f,200.0f,30.0f);
    
    //more
    for(unsigned int i=0;i<amount;i++){
		float x = ofRandom(ofGetWindowWidth());
		float y = ofRandom(ofGetWindowHeight());
		float r=ofRandom(10.0f,20.0f);
        float xspeed = (int)ofRandom(2,5);
        float yspeed = (int)ofRandom(2,5);
		mPCluster.push_back(Particle(x,y,r,xspeed,yspeed));
	}

}

//--------------------------------------------------------------
void testApp::update(){
    //mParticle.update();
    for(vector<Particle>::iterator c=mPCluster.begin();
		c!=mPCluster.end();++c){
		c->update();
	}
    
}

//--------------------------------------------------------------
void testApp::draw(){
    //mParticle.draw();
    for(vector<Particle>::iterator c=mPCluster.begin();
		c!=mPCluster.end();++c){
		c->draw();
	}
}


//--------------------------------------------------------------
void testApp::addParticle(int amt){
    
}

//--------------------------------------------------------------
void testApp::keyPressed(int key){

}

//--------------------------------------------------------------
void testApp::keyReleased(int key){

}

//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y){

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