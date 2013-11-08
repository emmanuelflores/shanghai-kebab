#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface FirstViewController : UIViewController<SecondViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end
