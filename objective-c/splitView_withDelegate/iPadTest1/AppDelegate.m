//
//  AppDelegate.m
//  iPadTest1
//
//  Created by efe on 10/18/12.
//  Copyright (c) 2012 efe. All rights reserved.
//

//http://www.raywenderlich.com/1040/ipad-for-iphone-developers-101-uisplitview-tutorial

#import "AppDelegate.h"
#import "Monster.h"
#import "LeftViewController.h"
#import "RightViewController.h"

@implementation AppDelegate

@synthesize monsters;
@synthesize leftViewController = _leftViewController;
@synthesize rightViewController = _rightViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    monsters = [NSMutableArray array];
    [monsters addObject:[[Monster alloc] initWithName:@"Cat-Bot"
                                                 descr:@"MEE-OW" iconName:@"meetcatbot.jpg"
                                    preferredWayToKill:Sword] ];
    [monsters addObject:[[Monster alloc] initWithName:@"Dog-Bot"
                                                 descr:@"BOW-WOW" iconName:@"meetdogbot.jpg"
                                    preferredWayToKill:Blowgun] ];
    [monsters addObject:[[Monster alloc] initWithName:@"Explode-Bot"
                                                 descr:@"Tick, tick, BOOM!" iconName:@"meetexplodebot.jpg"
                                    preferredWayToKill:Smoke] ];
    [monsters addObject:[[Monster alloc] initWithName:@"Fire-Bot"
                                                 descr:@"Will Make You Steamed" iconName:@"meetfirebot.jpg"
                                    preferredWayToKill:NinjaStar] ];
    [monsters addObject:[[Monster alloc] initWithName:@"Ice-Bot"
                                                 descr:@"Has A Chilling Effect" iconName:@"meeticebot.jpg"
                                    preferredWayToKill:Fire] ];
    [monsters addObject:[[Monster alloc] initWithName:@"Mini-Tomato-Bot" 
                                                 descr:@"Extremely Handsome" iconName:@"meetminitomatobot.jpg" 
                                    preferredWayToKill:NinjaStar] ];
    ////////////original
    //_leftViewController.monsters = monsters;
    //_leftViewController.delegate = _rightViewController;
    
    UISplitViewController *splitViewController = (UISplitViewController *) self.window.rootViewController;
    splitViewController.delegate = [splitViewController.viewControllers lastObject];
    
    
    
    //UINavigationController *navigationController = [splitViewController.viewControllers lastObject];
    // splitViewController.delegate = (id)navigationController.topViewController;
    
    
    
    
    RightViewController *detail =(RightViewController *) [splitViewController.viewControllers lastObject];
    
    UINavigationController *masterNavigationController = [splitViewController.viewControllers objectAtIndex:0];
    
    LeftViewController *master = (LeftViewController *)masterNavigationController.topViewController;
    
    master.delegate = detail;
    //splitViewController.delegate = (id)controller;
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
