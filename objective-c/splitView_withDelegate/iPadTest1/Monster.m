//
//  Monster.m
//  iPadTest1
//
//  Created by efe on 10/18/12.
//  Copyright (c) 2012 efe. All rights reserved.
//

#import "Monster.h"

@implementation Monster

@synthesize name = _name;
@synthesize descr = _descr;
@synthesize iconName = _iconName;
@synthesize preferredWayToKill = _preferredWayToKill;

- (Monster *)initWithName:(NSString *)name descr:(NSString *)descr
                 iconName:(NSString *)iconName preferredWayToKill:(Weapon)preferredWayToKill {
    if ((self = [super init])) {
        self.name = name;
        self.descr = descr;
        self.iconName = iconName;
        self.preferredWayToKill = preferredWayToKill;
    }
    return self;
}

@end
