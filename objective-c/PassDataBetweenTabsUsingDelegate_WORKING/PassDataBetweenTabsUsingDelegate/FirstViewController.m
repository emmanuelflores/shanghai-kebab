#import "FirstViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize myLabel;

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
	// Do any additional setup after loading the view.
   //SecondViewController *svc = [self.tabBarController.viewControllers objectAtIndex:1];
    
    //svc.delegate = self;
    
    
    
    
}

- (void)viewDidUnload
{
    [self setMyLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(void) sliderValueDidChanged: (SecondViewController *)controller data:(float) sliderValue{
    myLabel.text = [[NSString alloc]initWithFormat:@"%f",sliderValue];
    NSLog(@"delegate called");
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"PushSegue"]){
        SecondViewController *svc = [segue destinationViewController];
        svc.delegate = self;
    }
}

@end
