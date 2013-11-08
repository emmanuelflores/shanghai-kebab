//
//  RightViewController.h
//  iPadTest1
//
//  Created by efe on 10/18/12.
//  Copyright (c) 2012 efe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MonsterSelectionDelegate.h"

@class Monster;

@interface RightViewController : UIViewController<MonsterSelectionDelegate, UISplitViewControllerDelegate>{
    Monster *_monster;
    UILabel *_nameLabel;
    UILabel *_descrLabel;
    UIImageView *_iconView;
    UIImageView *_weaponView;
    
    UIPopoverController *_popover;
    UIToolbar *_toolbar;
}

@property (nonatomic, retain) Monster *monster;
@property (nonatomic, retain) IBOutlet UILabel *nameLabel;
@property (nonatomic, retain) IBOutlet UILabel *descrLabel;
@property (nonatomic, retain) IBOutlet UIImageView *iconView;
@property (nonatomic, retain) IBOutlet UIImageView *weaponView;
@property (nonatomic, retain) UIPopoverController *popover;
@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;

@end
