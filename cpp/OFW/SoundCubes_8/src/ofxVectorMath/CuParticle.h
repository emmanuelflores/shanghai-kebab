//
//  CuParticle.h
//  CubesSound
//
//  Created by efe on 1/30/13.
//
//

#ifndef __CubesSound__CuParticle__
#define __CubesSound__CuParticle__

#include <iostream>
#include "ofMain.h"

class CuParticle {
public:
	CuParticle();
	CuParticle( ofVec3f pos, ofVec3f vel );
	void pullToCenter( const ofVec3f &center );
	void update( bool flatten );
	void draw();
	void drawTail();
	void limitSpeed();
	void addNeighborPos( ofVec3f pos );
    
	ofVec3f	mPos;
	ofVec3f	mTailPos;
	ofVec3f	mVel;
	ofVec3f	mVelNormal;
	ofVec3f	mAcc;
	
	ofColor	mColor;
	
	ofVec3f	mNeighborPos;
	int			mNumNeighbors;
	
	float		mDecay;
	float		mRadius;
	float		mLength;
	float		mMaxSpeed, mMaxSpeedSqrd;
	float		mMinSpeed, mMinSpeedSqrd;
	float		mCrowdFactor;
    
    float r, g, b;
    std::vector< ofVec3f > tailPositions;
    std::vector<float> tailAlpha;
};


#endif /* defined(__CubesSound__CuParticle__) */
