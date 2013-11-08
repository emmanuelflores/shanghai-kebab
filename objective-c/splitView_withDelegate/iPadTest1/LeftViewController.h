//
//  LeftViewController.h
//  iPadTest1
//
//  Created by efe on 10/18/12.
//  Copyright (c) 2012 efe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MonsterSelectionDelegate.h"

@interface LeftViewController : UITableViewController<MonsterSelectionDelegate,UISplitViewControllerDelegate>{
    NSMutableArray *_monsters;
    __weak id<MonsterSelectionDelegate> _delegate;
}

@property(nonatomic,strong)NSMutableArray *monsters;
@property(nonatomic,weak)id<MonsterSelectionDelegate>delegate;

@end
