#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    
    ofSetVerticalSync(true);
	ofSetFrameRate(60);
	
	ofEnableAlphaBlending();
	ofBackground(150,223,223);
	
	angle = 0;
	radius = 0;
	
	createParticles();
	animateParticles();

}

//--------------------------------------------------------------
void testApp::update(){
    // on every frame
	// we reset the forces
	// add in any forces on the particle
	// perfom damping and
	// then update
    for (unsigned int i = 0; i < particles.size(); i++){
		particles[i].resetForce();
		//particles[i].addForce(0,0.01);  // gravity
		particles[i].addDampingForce();
		particles[i].update();
	}
}

//--------------------------------------------------------------
void testApp::draw(){
    ofSetColor(0x000000);
	
	for (unsigned int i = 0; i < particles.size(); i++){
		particles[i].draw();
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

}

//--------------------------------------------------------------
void testApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){
    animateParticles();
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



//--------------------------------------------------------------
void testApp::createParticles() {
	for (int i = 0; i < 5000; i++){
		particle myParticle;
		particles.push_back(myParticle);
	}
}

//--------------------------------------------------------------
void testApp::animateParticles() {
	angle = 0;
	radius = 150;
	
	for (int i = 0; i < particles.size(); i++){
		angle += .03;
		radius += .005;
		
		float origX = mouseX + radius * cos(angle);
		float origY = mouseY + radius * sin(angle);
		
		particles[i].setInitialCondition(origX,origY,ofRandom(-2, 2), ofRandom(-2, 2));
		// more interesting with diversity :)
		// uncomment this:
		//particles[i].damping = ofRandom(0.001, 0.05);
	}
}