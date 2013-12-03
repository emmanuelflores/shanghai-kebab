#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    ofBackground(0, 0, 0);
    //ofBackground(255, 255, 255);
    ofDisableArbTex();
    ofEnableAlphaBlending();
    ofSetFrameRate(30);
    ofSetPolyMode(OF_POLY_WINDING_POSITIVE);
    glEnable(GL_DEPTH_TEST);
    
    
    quadric = gluNewQuadric();
    gluQuadricTexture(quadric, GL_TRUE);
    gluQuadricNormals(quadric, GLU_SMOOTH);
    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    
    shader.load("shaders/vnoise.vert", "shaders/vnoise.frag");
    
    counter = 0;
    blendValue = 0;
}

//--------------------------------------------------------------
void testApp::update(){

}

//--------------------------------------------------------------
void testApp::draw(){
    cam.begin();
    shader.begin();

    
    shader.setUniform3f("LightPosition",1.648, 0.28, 1.0f);
    shader.setUniform4f("surfaceColor", 1.0f, 0.5f, 0.5f, 1.);
    shader.setUniform3f("offset", -1.857f, 100.5f, 0.5f);
    shader.setUniform1f("scaleIn", -5.873);
    shader.setUniform1f("scaleOut", 10.f);
    
    shader.setUniform1f("Freq",100.f);
    shader.setUniform1f("Width",1.f);
    shader.setUniform1f("StripeShift",100.f);
    
    
    
    ofRotateY(360*sinf(float(ofGetFrameNum())/500.0f));
    ofRotate(-90, 1, 0, 0);
    gluSphere(quadric, 150, 400, 400);
    
    shader.end();
    cam.end();

}

//--------------------------------------------------------------
void testApp::keyPressed(int key){

}

//--------------------------------------------------------------
void testApp::keyReleased(int key){

}

//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y){
    mMouse.x = x;
    mMouse.y = y;
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