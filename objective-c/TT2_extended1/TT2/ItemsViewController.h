//
//  ItemsViewController.h
//  TT2
//
//  Created by Emmanuel Flores Elías on 11/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemsViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource>{
    int amount;
    NSMutableArray *array;
    IBOutlet UIView *headerView;
}

- (UIView *)headerView;
- (IBAction)addNewNumber:(id)sender;
- (IBAction)toggleEditingMode:(id)sender;
- (IBAction)sort:(id)sender;
- (void)createNumber;
- (void)deleteNumber:(int)index;

@end

