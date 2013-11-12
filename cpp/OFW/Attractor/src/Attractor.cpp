#include "Attractor.h"


Attractor::Attractor(){
    xm = 0;
    ym = 0;
}

Attractor::~Attractor(){
    
}

void Attractor::setPos(const float& _x, const float& _y){
    x = _x;
    y = _y;
}

void Attractor::setDir(const float& _dir){
    dir = _dir;
}

void Attractor::revDir(){
    dir = -dir;
}

void Attractor::setAll(const float& _x,const float& _y,const float& _dir){
    x = _x;
    y = _y;
    dir = _dir;
}