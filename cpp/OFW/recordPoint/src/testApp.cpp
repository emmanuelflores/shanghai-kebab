#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    ofSetVerticalSync(true);
	ofSetFrameRate(60);
	ofEnableAlphaBlending();
	
	// set background:
	
	ofBackground(30,30,30);
	
	angle	= 0;
	angle2	= 90;
	radius2	= 60;
	Xorigin	= 200;
	Yorigin	= 200;

}

//--------------------------------------------------------------
void testApp::update(){
    angle += 0.2f;
	angle2 += 0.01f;

}

//--------------------------------------------------------------
void testApp::draw(){
    float origX		= Xorigin + radius2 * cos(angle2);
	float origY		= Yorigin + radius2 * sin((angle2)) * -1;
	float radius	= 35;
	
	
	float xPos = origX + radius * cos(angle);
	float yPos = origY + (radius * sin(angle)) * -1; // since 0,0 is top left corner....
	
	PR.addPoint( ofPoint(xPos, yPos, 0) );
	
	ofFill();
	ofSetRectMode(OF_RECTMODE_CENTER);	// center around the position
	ofSetColor(255, 100, (255-yPos));
	//ofSetColor((255-yPos), 100, 255);
	ofCircle(xPos, yPos, 2);
	
	PR.draw();
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