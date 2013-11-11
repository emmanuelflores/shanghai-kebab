#pragma once

#include "ofMain.h"
#include "ofMain.h"
#include "SphericalField.h"
#include "NoiseField.h"
#include "ofxTileSaver.h"
#include "ParticleManager.h"
#include "ParticleController.h"
#include <vector.h>


#define MAX_PARTICLES		100  //500 1000
#define MAX_TRAIL_LENGTH	200 //200
#define USE_VBO

#define NUM_INITIAL_PARTICLES 20
#define NUM_PARTICLES_TO_SPAWN 10

unsigned const int totalBoxes = 150;//150

class testApp : public ofBaseApp{
	public:
		void setup();
		void update();
		void draw();
    
    void initVBO();
    void mapColour( float x, float y, int *r, int *g, int *b );
    void drawPoint();
    void drawTrailFill();
    void drawTrailFillVBO();
    void drawTrailOutline();
		
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
    
    
    //values for the boxes
    //vector<float> posX, posY, posZ, sizes;
    vector<float*> posX, posY, posZ, sizes;
    
    ofEasyCam cam;
    
    
    //shaders values
    ofVec3f mScale;
    
    
    //sound stuff
    int			sphere_resolution;
    ofSoundPlayer music;
    float * spectrum;
    float * scaled_spectrum;
    float * smoothed_spectrum;
    float * smoothed_scaled_spectrum;
    float smoothed_total_volume;
    
    
    bool isBackgroundCleared;
    
    
    ofColor c1 = ofColor(0,149,168);
    ofColor c2 = ofColor(0,97,111);
    ofColor c3 = ofColor(51,51,51);
    ofColor c4 = ofColor(102,102,102);
    ofColor c5 = ofColor(153,153,153);
    ofColor c6 = ofColor(204,204,204);
    ofColor c7 = ofColor(204,250,204);
    ofColor c8 = ofColor(102,220,204);
    ofColor c9 = ofColor(153,220,220);
    ofColor c10 = ofColor(102,153,220);
    ofColor palette[10] = {c1,c2,c3,c4,c5,c6,c7,c8,c9,c10};
    vector<ofColor>pickedColors;
    
    //ribbon
    int stageWidth;
    int stageHeight;
    int stageCenterX;
    int stageCenterY;
	
    bool useAdditiveBlending;
	
    NoiseField		noiseField;
    SphericalField	sphericalField;
	
    ofImage			colourMapImage;
	
    int		pTotal;
    int		posSpread;
    int		velSpread;
    int		trailIndex;
    float	pos[ MAX_PARTICLES ][ 3 ];
    float	vel[ MAX_PARTICLES ][ 3 ];
    float	col[ MAX_PARTICLES ][ 4 ];
    float	trl[ MAX_PARTICLES ][ 3 * MAX_TRAIL_LENGTH ];		// trail position.
    float	tvr[ MAX_PARTICLES ][ 3 * MAX_TRAIL_LENGTH * 2 ];	// trail vertexes.
    float	tcl[ MAX_PARTICLES ][ 4 * MAX_TRAIL_LENGTH * 2 ];	// trail colour.
    GLuint	vbo[ MAX_PARTICLES * 2 ];
	
    ofxVec3f	upAxis;
    float		upAxisRot;
    float		rotateY;
	
    ofxTileSaver	tileSaver;
    
    
    ParticleManager particleSystem;
    
    
    //second round of particles
    ParticleController	mParticleController;
	float				mZoneRadius;
	float				mLowerThresh, mHigherThresh;
	float				mAttractStrength, mRepelStrength, mOrientStrength;
    bool				mCentralGravity;
	bool				mFlatten;
	bool				mSaveFrames;
    ofVec3f             mCenter;
};
