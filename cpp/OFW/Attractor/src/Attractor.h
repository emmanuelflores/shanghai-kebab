#ifndef ATTRACTOR_H

#include "ofMain.h"

class Attractor{
public:
    Attractor();
    ~Attractor();
    virtual void setPos(const float& _x,const float& _y);
    virtual void setDir(const float& _dir);
    virtual void revDir();
    virtual void setAll(const float& _x,const float& _y,const float& _dir);
    
    float x,y;
    float xm,ym;
    float dir;
};



#endif