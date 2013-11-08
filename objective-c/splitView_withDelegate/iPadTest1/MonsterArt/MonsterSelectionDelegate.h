//
//  MonsterSelectionDelegate.h
//  iPadTest1
//
//  Created by efe on 10/18/12.
//  Copyright (c) 2012 efe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Monster;

@protocol MonsterSelectionDelegate

- (void)monsterSelectionChanged:(Monster *)curSelection;

@end
