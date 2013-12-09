//
//  Particle.h
//  SIVATemplate
//
//  Created by efe on 07/12/13.
//
//

#ifndef SIVATemplate_Particle_h
#define SIVATemplate_Particle_h

#import "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class Particle{
public:
    float	x,y,vx,vy,k;
	float	dx,dy,dist;
	bool	lines;
	ofVec3f	mMouse;
	float	w,h;
	int	h2,s,v;
	float	offset;
    
    
    Particle(){
        
    }
    
    ~Particle(){
        
    }
    
    void setup(){
        w = ofGetWidth();
        h = ofGetHeight();
        x = ofRandom(w);
        y = ofRandom(h);
        vx=vy=0.0f;
        k=0.01f;
        lines=false;
        h2=178;s=204;v=122;
        offset=5.0f;
    }
    
    void update(){
        dx = mMouse.x - x;
        dy = mMouse.y - y;
        dist = sqrt(dx*dx + dy*dy);
        if(dist < 100.0f){
            float tx = (float)mMouse.x - dx / dist * 20.0f;
            float ty = (float)mMouse.y - dy / dist * 100.0f;
            vx += (tx - x) * k;
            vy += (ty - y) * k;
        }
        
        vx += ofRandom(-1.0f,1.0f);
        vy += ofRandom(-1.0f,1.0f);
        vy += 0.1f;
        vx *= 0.95f;
        vy *= 0.95f;
        x += vx;
        y += vy;
        if(x > w)
        {
            x = w;
            vx *= -1.0f;
        }
        if(x<0.0f)
        {
            x = 0.0f;
            vx *= -1.0f;
        }
        if(y > h)
        {
            y = h;
            vy *= -1.0f;
        }
        if(y < 0.0f)
        {
            y = 0.0f;
            vy *= -1.0f;
        }
    }
    
    void draw(){
        if(lines){
            ofSetColor(h2, s, v,255);
            ofFill();
            //ofLine(x, y, x-vx, y-vy);
            ofSetColor(0,0,0);
            ofNoFill();
            ofCircle(x, y, 2);
        }
        else
        {
            //ofSetColor(h2, s, v,255);
            //ofFill();
            //ofLine(x, y, x+2.0f, y+2.0f);
            ofSetColor(0,0,0);
            ofNoFill();
            ofCircle(x, y, 2);
        }
    }
    
    void touchMoved(ofTouchEventArgs &touch){
        mMouse.x = touch.x;
        mMouse.y = touch.y;
    }
};


#endif
