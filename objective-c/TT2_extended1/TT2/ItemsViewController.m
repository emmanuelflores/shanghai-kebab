//
//  ItemsViewController.m
//  TT2
//
//  Created by Emmanuel Flores Elías on 11/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ItemsViewController.h"

@implementation ItemsViewController

- (id)init
{
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStyleGrouped];
    
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (UIView *)headerView 
{
    // If we haven't loaded the headerView yet...
    if (!headerView) {
        // Load HeaderView.xib
        [[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:self options:nil];
    }
    
    return headerView;
}

- (UIView *)tableView:(UITableView *)tv viewForHeaderInSection:(NSInteger)sec
{
    return [self headerView];
}

- (CGFloat)tableView:(UITableView *)tv heightForHeaderInSection:(NSInteger)sec
{
    return [[self headerView] bounds].size.height;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    amount = 4;
    
    array = [[NSMutableArray array]retain];
    //*array = [NSMutableArray array];
    for(int i=0;i<amount;i++){
        int value= rand()%30;
        [array addObject:[NSNumber numberWithInt:value]];
        //NSLog(@"Array is %i long with last inserted object: %@", [array count], [(NSNumber *)[array objectAtIndex:i] description]);
    }
//    

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [array count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    
    if(!cell){
        //if the cell cannot be reused then create a new one
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"] autorelease];
    }
    
    NSString *string = [NSString stringWithFormat:@"%@",[array objectAtIndex:[indexPath row]]];
    [[cell textLabel] setText:string];
    
    return cell;
}

- (void)addNewNumber:(id)sender{
    //[self createNumber];
    NSNumber *number = [NSNumber numberWithInt:rand()%10];
    [array addObject:number];
    //NSLog(@"the array with an added value is %@", array);
    [[self tableView] reloadData];
    
}


//toggle to editing mode
- (void)toggleEditingMode:(id)sender{
    // If we are currently in editing mode...
    if ([self isEditing]) {
        // Change text of button to inform user of state
        [sender setTitle:@"Edit" forState:UIControlStateNormal];
        // Turn off editing mode
        [self setEditing:NO animated:YES];
    } else {
        // Change text of button to inform user of state
        [sender setTitle:@"Done" forState:UIControlStateNormal];
        // Enter editing mode
        [self setEditing:YES animated:YES];
    }
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(editingStyle == UITableViewCellEditingStyleDelete){
        [array removeObjectAtIndex:[indexPath row]];
        //remove that row from the table view with an animation
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
    }
    
    //[tableView reloadData];
}

- (void)createNumber{
    NSNumber *number = [NSNumber numberWithInt:rand()%30];
    [array addObject:number];
    //NSLog(@"the array with an added value is %@", array);
}

- (void)deleteNumber:(int)index{
    [array removeObjectAtIndex:index];
}

- (void)sort:(id)sender{
    
}

- (void)dealloc{
    [array release];
    [super dealloc];
}

@end
