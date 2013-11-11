//
//  CuParticle.cpp
//  CubesSound
//
//  Created by efe on 1/30/13.
//
//

#include "CuParticle.h"
#include "mathCubes.h"





CuParticle::CuParticle()
{
}

CuParticle::CuParticle( ofVec3f pos, ofVec3f vel )
{
	mPos			= pos;
	mTailPos		= pos;
	mVel			= vel;
	mVelNormal		= ofVec3f(0,1,0);
	mAcc			= ofVec3f::zero();
	
	mColor			= ofColor(1,1,1,1);
	
	mNeighborPos	= ofVec3f::zero();
	mNumNeighbors	= 0;
	mMaxSpeed		= (float)ofRandom( 2.5f, 3.0f );
	mMaxSpeedSqrd	= mMaxSpeed * mMaxSpeed;
	mMinSpeed		= (float)ofRandom( 1.0f, 1.5f );
	mMinSpeedSqrd	= mMinSpeed * mMinSpeed;
	
	mDecay			= 0.99f;
	mRadius			= 1.0f;
	mLength			= 10.0f;
	mCrowdFactor	= 1.0f;
    
    r = (int)ofRandom(0,255);
    g = (int)ofRandom(30, 130);
    b = (int)ofRandom(130,255);
}

void CuParticle::pullToCenter( const ofVec3f &center )
{
	ofVec3f dirToCenter = mPos - center;
	float distToCenter = dirToCenter.length();
	float maxDistance = 300.0f;
	
	if( distToCenter > maxDistance ){
		dirToCenter.normalize();
		float pullStrength = 0.0008f;
		mVel -= dirToCenter * ( ( distToCenter - maxDistance ) * pullStrength );
	}
}


void CuParticle::update( bool flatten )
{
    //Take care of the tail
    
    ofVec3f posOffset1 = mPos;
    ofVec3f posOffset2 = mPos;
    
    posOffset1.x = mPos.x - 1;
    posOffset2.x = mPos.x + 1;
    
    
    tailPositions.push_back(posOffset1);
    tailPositions.push_back(posOffset2);
    
    if (tailPositions.size() > 50) {
        tailPositions.erase( tailPositions.begin(), tailPositions.begin()+2);
    }
    
    float alphaValue = 1.0f;
    
    tailAlpha.push_back( alphaValue );
    tailAlpha.push_back( alphaValue ); //we're pushing alphaValue twice on purpose as we're drawing quads
    
    if (tailAlpha.size() > 50) {
        tailAlpha.erase( tailAlpha.begin(), tailAlpha.begin()+2);
    }
    
    for (int i = 0; i < tailAlpha.size(); i++) {
        tailAlpha[i] = tailAlpha[i] - 0.02f;
    }
    
    //Crowd Factor
    
    mCrowdFactor -= ( mCrowdFactor - ( 1.0f - mNumNeighbors * 0.01f ) ) * 0.1f;
	
	if( flatten )
		mAcc.z = 0.0f;
	
	
	mVel += mAcc;
	mVelNormal = mVel.normalized();
	
	limitSpeed();
	
	mPos += mVel;
	if( flatten )
		mPos.z = 0.0f;
	
	mTailPos = mPos - ( mVelNormal * mLength );
	mVel *= mDecay;
	mAcc = ofVec3f::zero();
	
	float c = mNumNeighbors/50.0f;
	//mColor = ColorA( CM_HSV, math<float>::max( 1.0f - c, 0.0f ), c, c + 0.5f, 1.0f );
    mColor = ofColor(math<int>::max(255-c,0),c,c+125,255);
    //mColor = ofColor( math<float>::max( 1.0f - c, 0.0f ), c, c + 0.5f, 1.0f );
	
	mNeighborPos = ofVec3f::zero();
	mNumNeighbors = 0;
}

void CuParticle::limitSpeed()
{
	float vLengthSqrd = mVel.lengthSquared();
	if( vLengthSqrd > mMaxSpeedSqrd ){
		mVel = mVelNormal * mMaxSpeed;
		
	} else if( vLengthSqrd < mMinSpeedSqrd ){
		mVel = mVelNormal * mMinSpeed;
	}
}

void CuParticle::draw()
{
    ofSetColor(r, g, b);
    ofSphere(mPos.x, mPos.y, mPos.z, mRadius+4);
    
//    glBegin(GL_QUAD_STRIP);
//    
//    for (int i = 0; i < tailPositions.size(); i++) {
//        ofSetColor(r, g, b, tailAlpha[i]);
//        glVertex3f ( tailPositions[i].x, tailPositions[i].y, tailPositions[i].z );
//    }
//    glEnd();
    
}

void CuParticle::drawTail()
{
	ofSetColor(255,255,255);
	//glVertex3fv( mPos );
    glVertex3f(mPos.x,mPos.y,mPos.z);
    ofSetColor(255, 0, 0,255);
    //	glVertex3fv( mTailPos );
    glVertex3f(mTailPos.x,mTailPos.y,mTailPos.z);
}

void CuParticle::addNeighborPos( ofVec3f pos )
{
	mNeighborPos += pos;
	mNumNeighbors ++;
}





