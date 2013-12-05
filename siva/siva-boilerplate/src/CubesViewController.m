#import "CubesViewController.h"

@interface CubesViewController ()

@end

@implementation CubesViewController

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
    
    CALayer *sublayer = [CALayer layer];
    sublayer.backgroundColor = [UIColor blueColor].CGColor;
    sublayer.shadowOffset = CGSizeMake(0, 3);
    sublayer.shadowRadius = 5.0;
    sublayer.shadowColor = [UIColor blackColor].CGColor;
    sublayer.shadowOpacity = 0.8f;
    sublayer.frame = CGRectMake(130, 130, 128, 192);
    sublayer.borderColor = [UIColor blackColor].CGColor;
    sublayer.borderWidth = 2.0;
    sublayer.cornerRadius = 10.0f;
    sublayer.opaque = YES;
    sublayer.opacity = 0.6;
    [self.view.layer addSublayer:sublayer];
    
    CALayer *sublayer2 = [CALayer layer];
    sublayer2.backgroundColor = [UIColor redColor].CGColor;
    sublayer2.shadowOffset = CGSizeMake(0, 3);
    sublayer2.shadowRadius = 5.0;
    sublayer2.shadowColor = [UIColor blackColor].CGColor;
    sublayer2.shadowOpacity = 0.8f;
    sublayer2.frame = CGRectMake(40, 70, 140, 100);
    sublayer2.borderColor = [UIColor blackColor].CGColor;
    sublayer2.borderWidth = 1.0f;
    sublayer2.cornerRadius = 10.0f;
    sublayer2.opaque = YES;
    sublayer2.opacity = 0.4;
    [self.view.layer addSublayer:sublayer2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
