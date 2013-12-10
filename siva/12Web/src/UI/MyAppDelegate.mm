#import "MyAppDelegate.h"
#import "MyAppViewController.h"

@implementation MyAppDelegate

@synthesize navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [super applicationDidFinishLaunching:application];
    
    self.navigationController = [[UINavigationController alloc] init];
    [self.window setRootViewController:self.navigationController];
    
    [self.navigationController pushViewController:[[MyAppViewController alloc] init]
                                         animated:YES];
    
    //--- style the UINavigationController
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    self.navigationController.navigationBar.topItem.title = @"EmptyApp";
    
    return YES;
}


@end
