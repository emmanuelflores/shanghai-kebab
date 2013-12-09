//
//  Ball.h
//  SIVATemplate
//
//  Created by efe on 09/12/13.
//
//

#ifndef SIVATemplate_Ball_h
#define SIVATemplate_Ball_h

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class Ball{
public:
    float	positionX, positionY;
	float	velocityX, velocityY;
    ofVec2f touchPosition;
    
    Ball(){}
    ~Ball(){}
    virtual void setup(){
        positionX = ofGetWidth()/2;
        positionY = ofGetHeight()/2;
        touchPosition.x = 0.0f;
        touchPosition.y = 0.0f;
        
        velocityX = 2;
        velocityY = 1;
    }
    
    virtual void update(){
        //positionX +=velocityX;
        //positionY +=velocityY;
        positionX += ((float)touchPosition.x-positionX)/20;
        positionY += ((float)touchPosition.y-positionY)/20;
    }
    
    virtual void draw(){
        ofCircle(positionX,positionY,20);
    }
    
    virtual void moveBall(ofVec2f position){
        touchPosition.x = position.x;
        touchPosition.y = position.y;
    }
    
    virtual void touchDownBallPosition(ofVec2f position){
        touchPosition.x = position.x;
        touchPosition.y = position.y;
    }
};


#endif
