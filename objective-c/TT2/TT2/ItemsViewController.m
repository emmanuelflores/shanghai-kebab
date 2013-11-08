//
//  ItemsViewController.m
//  TT2
//
//  Created by Emmanuel Flores Elías on 11/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ItemsViewController.h"

@implementation ItemsViewController

- (id)init{
    self = [super initWithStyle:UITableViewStyleGrouped];
    
//    if(self){
//        for(int i=0;i<amount;i++){
//            [array insertObject:[NSNumber numberWithInt:i] atIndex:i];
//        }
//        
//    }
    
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style{
    return [self init];
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
    
    amount = 10;
    
    array = [[NSMutableArray array]retain];
    //*array = [NSMutableArray array];
    for(int i=0;i<amount;i++){
        [array addObject:[NSNumber numberWithInt:i]];
        NSLog(@"Array is %i long with last inserted object: %@", [array count], [(NSNumber *)[array objectAtIndex:i] description]);
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
    return amount;
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

- (void)dealloc{
    [array release];
    [super dealloc];
}

@end
