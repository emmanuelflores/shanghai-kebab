#import <UIKit/UIKit.h>

@class SecondViewController;
@protocol SecondViewControllerDelegate <NSObject>

-(void) sliderValueDidChanged: (SecondViewController *)controller data:(float) sliderValue;

@end

@interface SecondViewController : UIViewController{
    __weak id<SecondViewControllerDelegate> delegate;   
}
- (IBAction)sliderPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property(weak,nonatomic) id<SecondViewControllerDelegate> delegate;

@end
