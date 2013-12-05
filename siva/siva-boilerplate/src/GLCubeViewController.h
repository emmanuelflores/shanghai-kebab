//
//  GLCubeViewController.h
//  SIVABoilerplate
//
//  Created by efe on 04/12/13.
//
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>

@interface GLCubeViewController : GLKViewController{
    IBOutlet UISlider *theSlider;
    float fieldOfView;
}

//-(IBAction)slideFOV:(id)sender;

@end
