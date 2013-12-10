//
//  EmptyApp.cpp
//  SIVABoilerplate
//
//  Created by efe on 07/12/13.
//
//

#include "EmptyApp.h"


//--------------------------------------------------------------
EmptyApp :: EmptyApp () {
    
}

//--------------------------------------------------------------
EmptyApp :: ~EmptyApp () {
    
}

//--------------------------------------------------------------
void EmptyApp::setup() {
	// initialize the accelerometer
	ofxAccelerometer.setup();
	//If you want a landscape oreintation
	//iPhoneSetOrientation(OFXIPHONE_ORIENTATION_LANDSCAPE_LEFT);
    ofSetOrientation(OF_ORIENTATION_DEFAULT);
	
	ofBackground(0);
    
    inlineWebViewController.showView(ofGetWindowWidth()*2, ofGetWindowHeight()&2, YES, NO, YES, NO);//pay attention here because of the Retina Display!
    inlineWebViewController.setOrientation(OF_ORIENTATION_DEFAULT);
    inlineWebViewController.setAutoRotation(false);
    
    ofAddListener(inlineWebViewController.event, this, &EmptyApp::webViewEvent);
    
    string fileToLoad = "demo";
    inlineWebViewController.loadLocalFile(fileToLoad);
    
}


void EmptyApp::webViewEvent(ofxiPhoneWebViewControllerEventArgs &args) {
    if(args.state == ofxiPhoneWebViewStateDidStartLoading){
        NSLog(@"Webview did start loading URL %@.", args.url);
    }
    else if(args.state == ofxiPhoneWebViewStateDidFinishLoading){
        NSLog(@"Webview did finish loading URL %@.", args.url);
    }
    else if(args.state == ofxiPhoneWebViewStateDidFailLoading){
        NSLog(@"Webview did fail to load the URL %@. Error: %@", args.url, args.error);
    }
}

//--------------------------------------------------------------
void EmptyApp::update(){
    
}

//--------------------------------------------------------------
void EmptyApp::draw() {
    ofSetColor(255);
    //ofCircle(0,0,1500);
    ofSetColor(0);
	
    
}

//--------------------------------------------------------------
void EmptyApp::exit() {
    //
}

//--------------------------------------------------------------
void EmptyApp::touchDown(ofTouchEventArgs &touch){
    
}

//--------------------------------------------------------------
void EmptyApp::touchMoved(ofTouchEventArgs &touch){
    
}

//--------------------------------------------------------------
void EmptyApp::touchUp(ofTouchEventArgs &touch){
    
}

//--------------------------------------------------------------
void EmptyApp::touchDoubleTap(ofTouchEventArgs &touch){
    
}

//--------------------------------------------------------------
void EmptyApp::lostFocus(){
    
}

//--------------------------------------------------------------
void EmptyApp::gotFocus(){
    
}

//--------------------------------------------------------------
void EmptyApp::gotMemoryWarning(){
    
}

//--------------------------------------------------------------
void EmptyApp::deviceOrientationChanged(int newOrientation){

}


//--------------------------------------------------------------
void EmptyApp::touchCancelled(ofTouchEventArgs& args){
    
}

