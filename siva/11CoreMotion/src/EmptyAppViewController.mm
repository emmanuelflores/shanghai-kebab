//
//  EmptyAppViewController.m
//  SIVABoilerplate
//
//  Created by efe on 07/12/13.
//
//

#import "EmptyAppViewController.h"
#import "ofxiOSExtras.h"

@interface EmptyAppViewController ()

@end

@implementation EmptyAppViewController

- (id) initWithFrame:(CGRect)frame app:(ofxiOSApp *)app {
    
    ofxiOSGetOFWindow()->setOrientation( OF_ORIENTATION_DEFAULT );   //-- default portait orientation.
    
    return self = [super initWithFrame:frame app:app];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *mSwipeUpRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(returnToRootViewController:)];
    
    [mSwipeUpRecognizer setDirection:(UISwipeGestureRecognizerDirectionUp | UISwipeGestureRecognizerDirectionDown | UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight)];
    
    [[self view] addGestureRecognizer:mSwipeUpRecognizer];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return NO;
}

-(void)returnToRootViewController:(UISwipeGestureRecognizer *)recognizer {
    [self.navigationController popToRootViewControllerAnimated:YES];
    
    
}

@end
