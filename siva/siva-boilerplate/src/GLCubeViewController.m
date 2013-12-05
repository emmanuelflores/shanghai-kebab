//
//  GLCubeViewController.m
//  SIVABoilerplate
//
//  Created by efe on 04/12/13.
//
//

#import "GLCubeViewController.h"

@interface GLCubeViewController (){
    
}

-(void)setClipping;

@property (strong, nonatomic) EAGLContext *context;
@property (strong, nonatomic) GLKBaseEffect *effect;

@end

@implementation GLCubeViewController

@synthesize context = _context;//context
@synthesize effect = _effect;//base effect

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES1];//openGLES1
    
    if (!self.context)
    {
        NSLog(@"Failed to create ES context");
    }
    
    GLKView *view = (GLKView *)self.view;//view
    view.context = self.context;//it is own context
    view.drawableDepthFormat = GLKViewDrawableDepthFormat24;//depth format
    
    fieldOfView = 60.0f;
    
    [EAGLContext setCurrentContext:self.context];
    
    [self setClipping];//set frustrum
}

#pragma mark - GLKView and GLKViewController delegate methods

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    static int counter=0;
    
    //vertex array
    static const GLfloat cubeVertices[] = 					//1
    {
        -0.5f, 0.5f, 0.5f,						//vertex 0
        0.5f, 0.5f, 0.5f, 						// v1
        0.5f,-0.5f, 0.5f,						// v2
        -0.5f,-0.5f, 0.5f, 						// v3
		
        -0.5f, 0.5f,-0.5f,						// v4
        0.5f, 0.5f,-0.5f,						// v5
        0.5f,-0.5f,-0.5f,						// v6
        -0.5f,-0.5f,-0.5f,						// v7
    };
	
    //color arrat
    static const GLubyte cubeColors[] = {					//2
        255, 255,   0, 255,
        0,   255, 255, 255,
        0,     0,   0,   0,
        255,   0, 255, 255,
		
        255, 255,   0, 255,
        0,   255, 255, 255,
        0,     0,   0,   0,
        255,   0, 255, 255,
    };
	
    static const GLubyte tfan1[6 * 3] =					//3
    {
        1,0,3,
        1,3,2,
        1,2,6,
        1,6,5,
        1,5,4,
        1,4,0
    };
    
    static const GLubyte tfan2[6 * 3] =					//4
    {
        7,4,5,
        7,5,6,
        7,6,2,
        7,2,3,
        7,3,0,
        7,0,4
    };
    
    static GLfloat transY = 0.0f;
    static GLfloat z=-2.0f;						//1
    static GLfloat spinX=0;
    static GLfloat spinY=0;
    
    glClearColor(0.5f, 0.5f, 0.5f, 1.0f); //clear color
    glClear(GL_COLOR_BUFFER_BIT);
    
    glEnable(GL_CULL_FACE);	//cull face the cube
    glCullFace(GL_FRONT);//use the front face
	
    //	glMatrixMode(GL_PROJECTION);				//projection will be set on the frustrum
    //	glLoadIdentity();
	
    glMatrixMode(GL_MODELVIEW);					//modelview matrix
    glLoadIdentity();//load identity modelview matrix
	
    //glTranslatef(0.0f, (GLfloat)(sinf(transY)/2.0f), 0.0f);
    
    
    
    glTranslatef(0.0f, (GLfloat)(sinf(transY)/2.0f), z); 	     	                 //6
    glRotatef(spinY, 0.0, 1.0, 0.0);
    glRotatef(spinX, 1.0, 0.0, 0.0);
    
    
    
    transY += 0.075f;
	
    //glVertexPointer(2, GL_FLOAT, 0, squareVertices);
    
    glVertexPointer(3, GL_FLOAT, 0, cubeVertices);//vertex array pointer
    glEnableClientState(GL_VERTEX_ARRAY);
    glColorPointer(4, GL_UNSIGNED_BYTE, 0, cubeColors);	//color array pointer
    glEnableClientState(GL_COLOR_ARRAY);
    
    // glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    //primitive, fist(offset) and amount
    glDrawElements( GL_TRIANGLE_FAN, 6 * 3, GL_UNSIGNED_BYTE, tfan1);	//TRI_FAN with
    glDrawElements( GL_TRIANGLE_FAN, 6 * 3, GL_UNSIGNED_BYTE, tfan2);
	
    if(!(counter%100))
        NSLog(@"FPS: %d\n",self.framesPerSecond);
    
    counter++;
    spinY+=.25;
	spinX+=.25;
    
}

//specify details of how the vertices are mapped to our screen
//something like camera lens!
-(void)setClipping
{
    //http://www.eng.utah.edu/~cs6360/Lectures/frustum.pdf
	float aspectRatio;
	const float zNear = 1.5;					//near clipping plane
	const float zFar = 1000.0f;					//far clipping plane
    //http://stackoverflow.com/questions/4427479/anyone-can-explain-the-field-of-view
	//const float fieldOfView = 60.0;				//field of view
	GLfloat	size;
	
	CGRect frame = [[UIScreen mainScreen] bounds];		//4
	
    //height and width values clamp the fov to the height; flipping it would make it relative to the width. So if we
    //want the field-of-view to be 60 degrees, similar to that of a wide angle lens, it will be
    //based on the height of our window and not the width, Important to know when rendering to a
    //non-square screen.
    
	aspectRatio=(float)frame.size.width/(float)frame.size.height;	//relationship amount of pixels width and height
    //Set the OpenGL projection matrix
	
	glMatrixMode(GL_PROJECTION);				//Projection matrix
	glLoadIdentity();//load identity projection matrix
    
	size = zNear * tanf(GLKMathDegreesToRadians (fieldOfView) / 2.0);	//calculate the size value needed to specify the left/right and top/bottom limits
    
	glFrustumf(-size, size, -size /aspectRatio, size /aspectRatio, zNear, zFar);//create the frustum
	glViewport(0, 0, frame.size.width, frame.size.height);		//view port of the frustum
	
	//Make the OpenGL ModelView matrix the default.
	
	glMatrixMode(GL_MODELVIEW);				//reset to modelview matrix
}

//-(void)slideFOV:(id)sender{
//    NSLog(@"%f",[theSlider value]);
//    [NSString stringWithFormat:@"%.0f", [theSlider value]];
//    float temporalValueFOV = [theSlider value];
//    fieldOfView = temporalValueFOV * 120;
//    
//    [self setClipping];
//}

@end
