//
//  Monster.h
//  iPadTest1
//
//  Created by efe on 10/18/12.
//  Copyright (c) 2012 efe. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Blowgun = 0,
    NinjaStar,
    Fire,
    Sword,
    Smoke,
} Weapon;

@interface Monster : NSObject{
    NSString *_name;
    NSString *_descr;
    NSString *_iconName;
    Weapon _preferredWayToKill;
}


@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *descr;
@property (nonatomic, copy) NSString *iconName;
@property (nonatomic, assign) Weapon preferredWayToKill;

- (Monster *)initWithName:(NSString *)name descr:(NSString *)descr
                 iconName:(NSString *)iconName preferredWayToKill:(Weapon)preferredWayToKill;

@end
