
#import "MyAppViewController.h"

#import "SquareAppViewController.h"
#import "SquareApp.h"

#import "CircleAppViewController.h"
#import "CircleApp.h"

#import "TriangleAppViewController.h"
#import "TriangleApp.h"

#import "CubesViewController.h"
#import "GLCubeViewController.h"

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
    [squareButton addTarget:self action:@selector(OFWSquareButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [squareButton setTitle:@"square" forState:UIControlStateNormal];
    [squareButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [squareButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [self.view addSubview:squareButton];
    
    UIButton *circleButton =[UIButton buttonWithType:UIButtonTypeCustom];
    circleButton.frame = CGRectMake(79,153,170,44);
    [circleButton addTarget:self action:@selector(OFWCircleButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [circleButton setTitle:@"circle" forState:UIControlStateNormal];
    [circleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [circleButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [self.view addSubview:circleButton];
    
    UIButton *triangleButton =[UIButton buttonWithType:UIButtonTypeCustom];
    triangleButton.frame = CGRectMake(79,213,170,44);
    [triangleButton addTarget:self action:@selector(OFWTriangleButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [triangleButton setTitle:@"triangle" forState:UIControlStateNormal];
    [triangleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [triangleButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [self.view addSubview:triangleButton];
    
    
    UIButton *cubesButton =[UIButton buttonWithType:UIButtonTypeCustom];
    cubesButton.frame = CGRectMake(79,273,170,44);
    [cubesButton addTarget:self action:@selector(cubesViewButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [cubesButton setTitle:@"cacube" forState:UIControlStateNormal];
    [cubesButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [cubesButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [self.view addSubview:cubesButton];
    
    UIButton *glcubeButton =[UIButton buttonWithType:UIButtonTypeCustom];
    glcubeButton.frame = CGRectMake(79,333,170,44);
    [glcubeButton addTarget:self action:@selector(glCubeButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [glcubeButton setTitle:@"glcube" forState:UIControlStateNormal];
    [glcubeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [glcubeButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [self.view addSubview:glcubeButton];
    
//    //mixed
//    UIButton *mixedButton =[UIButton buttonWithType:UIButtonTypeCustom];
//    mixedButton.frame = CGRectMake(79,393,170,44);
//    [mixedButton addTarget:self action:@selector(glCubeButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
//    [mixedButton setTitle:@"mixed" forState:UIControlStateNormal];
//    [mixedButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [mixedButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
//    [self.view addSubview:mixedButton];
}

- (void)OFWSquareButtonPressed:(id)sender {
    SquareAppViewController *viewController;
    viewController = [[SquareAppViewController alloc] initWithFrame:[[UIScreen mainScreen] bounds]
                                                                 app:new SquareApp()];
    
    [self.navigationController pushViewController:viewController animated:YES];
    self.navigationController.navigationBar.topItem.title = @"SquareApp";
}

- (void)OFWCircleButtonPressed:(id)sender {
    CircleAppViewController *viewController;
    viewController = [[CircleAppViewController alloc] initWithFrame:[[UIScreen mainScreen] bounds]
                                                                 app:new CircleApp()];
    
    [self.navigationController pushViewController:viewController animated:YES];
    self.navigationController.navigationBar.topItem.title = @"CircleApp";
}

- (void)OFWTriangleButtonPressed:(id)sender {
    TriangleAppViewController *viewController;
    viewController = [[TriangleAppViewController alloc] initWithFrame:[[UIScreen mainScreen] bounds]
                                                                   app:new TriangleApp()];
    
    [self.navigationController pushViewController:viewController animated:YES];
    self.navigationController.navigationBar.topItem.title = @"TriangleApp";
}

-(void)cubesViewButtonPressed:(id)sender{
    CubesViewController *cbc = [[CubesViewController alloc]init];
    [self.navigationController pushViewController:cbc animated:YES];
}

-(void)glCubeButtonPressed:(id)sender{
    GLCubeViewController *glc = [[GLCubeViewController alloc]init];
    [self.navigationController pushViewController:glc animated:YES];
}


- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    BOOL bRotate = NO;
    bRotate = bRotate || (toInterfaceOrientation == UIInterfaceOrientationPortrait);
    bRotate = bRotate || (toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown);
    return bRotate;
}

@end
