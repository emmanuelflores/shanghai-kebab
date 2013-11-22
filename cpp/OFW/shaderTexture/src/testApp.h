#pragma once

#include "ofMain.h"

class testApp : public ofBaseApp{
	public:
		void setup();
		void update();
		void draw();
		
		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y);
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
    
    
    ofShader shader;
    GLUquadricObj *quadric;
    ofImage redColor;
    
protected:
    //mouse stuff
    ofVec2f mMouse;
    
    int counter;
    
    //uniform values
    float blendValue;
    
    ofImage		texture1;
    
    ofEasyCam   cam;
};
