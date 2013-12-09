
#import "MyAppViewController.h"

#import "EmptyAppViewController.h"
#import "EmptyApp.h"

@implementation MyAppViewController

- (UIButton*) makeButtonWithFrame:(CGRect)frame 
                          andText:(NSString*)text {
    UIFont *font;
    font = [UIFont fontWithName:@"Georgia" size:30];
    
    UILabel *label;
    label = [[ UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    label.backgroundColor = [UIColor colorWithWhite:1 alpha:0.95];
    label.textColor = [UIColor colorWithWhite:0 alpha:1];
    label.text = [text uppercaseString];
//    label.textAlignment = UITextAlignmentCenter;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = font;
    label.userInteractionEnabled = NO;
    label.exclusiveTouch = NO;
    
    UIButton* button = [[UIButton alloc] initWithFrame:frame];
    [button setBackgroundColor:[UIColor clearColor]];
    [button addSubview:label];
    
    return button;
}

- (void)loadView {
    [super loadView];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //buttons to access the ofw views
    UIButton *squareButton = [UIButton buttonWithType:UIButtonTypeCustom];//UIButtonTypeCustom UIButtonTypeRoundedRect
    squareButton.frame = CGRectMake(79,94,170,44);
    [squareButton addTarget:self action:@selector(OFWEmptyAppButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [squareButton setTitle:@"iOS OFW" forState:UIControlStateNormal];
    [squareButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [squareButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [self.view addSubview:squareButton];
    
}

- (void)OFWEmptyAppButtonPressed:(id)sender {
    EmptyAppViewController *viewController;
    viewController = [[EmptyAppViewController alloc] initWithFrame:[[UIScreen mainScreen] bounds]
                                                                 app:new EmptyApp()];
    
    [self.navigationController pushViewController:viewController animated:YES];
    self.navigationController.navigationBar.topItem.title = @"EmptyApp";
}



- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    BOOL bRotate = NO;
    bRotate = bRotate || (toInterfaceOrientation == UIInterfaceOrientationPortrait);
    bRotate = bRotate || (toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown);
    return bRotate;
}

@end
