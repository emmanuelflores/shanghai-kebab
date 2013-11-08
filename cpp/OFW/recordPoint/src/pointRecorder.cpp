//MTM1

#include "pointRecorder.h"

pointRecorder::pointRecorder(){
	maxNumPts=800;
}

void pointRecorder::draw(){
	
	ofFill();
	for(int i=0;i<pts.size();i+=5){
		
		ofVertex(pts[i].x, pts[i].y);
		float pct=(float) i/(float) pts.size();
		ofCircle(pts[i].x, pts[i].y, 2*pct*2);
	}
}

void pointRecorder::addPoint(ofPoint pt){
	pts.push_back(pt);
	
	counter +=1;
	
	if(pts.size()>maxNumPts){
		pts.erase(pts.begin());
	}
}