//
//  AppDelegate.h
//  iPadTest1
//
//  Created by efe on 10/18/12.
//  Copyright (c) 2012 efe. All rights reserved.
//

//http://www.raywenderlich.com/1040/ipad-for-iphone-developers-101-uisplitview-tutorial

#import <UIKit/UIKit.h>

@class LeftViewController;
@class RightViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    NSMutableArray *monsters;
    LeftViewController *_leftViewController;
    RightViewController *_rightViewController;
}

@property (strong, nonatomic) UIWindow *window;
@property(nonatomic,strong)NSMutableArray *monsters;
@property (nonatomic, retain) IBOutlet LeftViewController *leftViewController;
@property (nonatomic, retain) IBOutlet RightViewController *rightViewController;

@end
