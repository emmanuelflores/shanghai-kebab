//MTM1
#ifndef POINT_RECORDER_H
#define POINT_RECORDER_H

#include "ofMain.h"

class pointRecorder{
	
public:
	pointRecorder();
	
	virtual void addPoint(ofPoint pt);
	virtual void draw();
	
	int maxNumPts;
	vector <ofPoint> pts;
	int counter;
};

#endif