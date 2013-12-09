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
    float   w,h;
    float   ratio;
    
    Ball(){}
    ~Ball(){}
    virtual void setup(){
        w=static_cast<float> (ofGetWidth());
        h=static_cast<float> (ofGetHeight());
        
        positionX = w/2;
        positionY = h/2;
        touchPosition.x = 0.0f;
        touchPosition.y = 0.0f;
        
        velocityX = 5;
        velocityY = 3;
        ratio=10;
    }
    
    virtual void update(){
        positionX += velocityX;
        positionY += velocityY;
        
        if(positionX < ratio/2){
            positionX = ratio;
            velocityX *= -1;
        }
        if(positionX > w - (ratio/2)){
            positionX = w - ratio;
            velocityX *= -1;
        }
        if(positionY < ratio/2){
            positionY = ratio;
            velocityY *= -1;
        }
        if(positionY > h - (ratio/2)){
            positionY = h - ratio;
            velocityY *= -1;
        }
    }
    
    virtual void draw(){
        ofCircle(positionX,positionY,ratio*2);
    }
    
//    virtual void moveBall(ofVec2f position){
//        touchPosition.x = position.x;
//        touchPosition.y = position.y;
//    }
//    
//    virtual void touchDownBallPosition(ofVec2f position){
//        touchPosition.x = position.x;
//        touchPosition.y = position.y;
//    }
};


#endif
