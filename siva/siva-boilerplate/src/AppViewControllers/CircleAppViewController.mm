#import "CircleAppViewController.h"
#import "ofxiOSExtras.h"

@implementation CircleAppViewController

@synthesize slider;

- (id) initWithFrame:(CGRect)frame app:(ofxiOSApp *)app {

    ofxiOSGetOFWindow()->setOrientation( OF_ORIENTATION_DEFAULT );   //-- default portait orientation.    
    
    return self = [super initWithFrame:frame app:app];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
//    //make use of the UIKit elements
//    slider = [[UISlider alloc]initWithFrame:CGRectMake(100, 100, 150, 30)];
//    [slider setMinimumValue:0.0f];
//    [slider setMaximumValue:90.0f];
//    [slider addTarget:self action:@selector(changeSlideValue:) forControlEvents:UIControlEventValueChanged];
//    [self.view addSubview:slider];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return NO;
}

-(void)changeSlideValue:(id)sender{
    NSLog(@"%f", [(UISlider *)sender value]);
}

@end
