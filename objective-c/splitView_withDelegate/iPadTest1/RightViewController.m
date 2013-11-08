//
//  RightViewController.m
//  iPadTest1
//
//  Created by efe on 10/18/12.
//  Copyright (c) 2012 efe. All rights reserved.
//

#import "RightViewController.h"
#import "Monster.h"
#import "AppDelegate.h"

@interface RightViewController ()

@end

@implementation RightViewController

@synthesize monster = _monster;
@synthesize nameLabel = _nameLabel;
@synthesize descrLabel = _descrLabel;
@synthesize iconView = _iconView;
@synthesize weaponView = _weaponView;
@synthesize popover = _popover;
@synthesize toolbar = _toolbar;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    _monster = [delegate.monsters objectAtIndex:0];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    self.nameLabel = nil;
    self.descrLabel = nil;
    self.iconView = nil;
    self.weaponView = nil;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self refresh];
}

-(void)refresh{
    _nameLabel.text = _monster.name;
    _iconView.image = [UIImage imageNamed:_monster.iconName];
    _descrLabel.text = _monster.descr;
    if (_monster.preferredWayToKill == Blowgun) {
        _weaponView.image = [UIImage imageNamed:@"blowgun.jpg"];
    } else if (_monster.preferredWayToKill == Fire) {
        _weaponView.image = [UIImage imageNamed:@"fire.jpg"];
    } else if (_monster.preferredWayToKill == NinjaStar) {
        _weaponView.image = [UIImage imageNamed:@"ninjastar.jpg"];
    } else if (_monster.preferredWayToKill == Smoke) {
        _weaponView.image = [UIImage imageNamed:@"smoke.jpg"];
    } else {
        _weaponView.image = [UIImage imageNamed:@"sword.jpg"];
    }
}

- (void)monsterSelectionChanged:(Monster *)curSelection {
    self.monster = curSelection;
    [self refresh];
    
    if (_popover != nil) {
        [_popover dismissPopoverAnimated:YES];
    }
}

#pragma mark - SplitView Methods
- (void)splitViewController: (UISplitViewController*)svc
     willHideViewController:(UIViewController *)aViewController
          withBarButtonItem:(UIBarButtonItem*)barButtonItem
       forPopoverController: (UIPopoverController*)pc {
    barButtonItem.title = @"Monsters";
    NSMutableArray *items = [[_toolbar items] mutableCopy];
    [items insertObject:barButtonItem atIndex:0];
    [_toolbar setItems:items animated:YES];
    self.popover = pc;
    
}

- (void)splitViewController: (UISplitViewController*)svc
     willShowViewController:(UIViewController *)aViewController
  invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem {
    NSMutableArray *items = [[_toolbar items] mutableCopy];
    [items removeObjectAtIndex:0];
    [_toolbar setItems:items animated:YES];
    self.popover = nil;
}

@end
