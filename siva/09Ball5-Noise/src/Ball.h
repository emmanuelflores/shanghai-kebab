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
#include "ofNoise.h"

class Ball{
public:
    float	positionX, positionY;
	float	velocityX, velocityY;
    float   accX, accY;
    float   resistence;
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
        accX = 1;
        accY = 1;
        resistence = 0.99f;
        
        velocityX = 5;
        velocityY = 3;
        ratio=10;
    }
    
    virtual void update(){
        float step = 5;
        float resolution = 1000;
        
//        float counter = getElapsedFrames() / 100;
        float counter = ofGetFrameNum() /100;
        
        float noiseX = ofNoise(positionX / resolution, positionY / resolution, counter);
        float noiseY = ofNoise(positionX / resolution + 10000,
                               positionY / resolution + 10000, counter + 10000);
        
        
        accX = ofMap(noiseX, (float)0, (float)1, -step, step);
        accY = ofMap(noiseY, (float)0, (float)1, -step, step);
        
        
        
        float centerX = w*0.5f;
        float centerY = h*0.5f;
        
        
//        accX = (touchPosition.x - positionX)/100;
//        accY = (touchPosition.y - positionY)/100;
        accX += (centerX - positionX) / 100;
        accY += (centerY - positionY) / 100;
        velocityX +=accX;
        velocityY +=accY;
        velocityX *= resistence;
        velocityY *= resistence;
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
    
    virtual void moveBall(ofVec2f position){
        touchPosition.x = position.x;
        touchPosition.y = position.y;
    }
    
    virtual void touchDownBallPosition(ofVec2f position){
        touchPosition.x = position.x;
        touchPosition.y = position.y;
    }
    
    float ofNoise(float x){
        return _slang_library_noise1(x)*0.5f + 0.5f;
    }
    
    float ofNoise(float x, float y){
        return _slang_library_noise2(x,y)*0.5f + 0.5f;
    }
    
    float ofNoise(float x, float y, float z){
        return _slang_library_noise3(x,y,z)*0.5f + 0.5f;
    }
    
    float ofNoise(float x, float y, float z, float w){
        return _slang_library_noise4(x,y,z,w)*0.5f + 0.5f;
    }
};


#endif
