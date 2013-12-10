//
//  Shader.fsh
//  GL_chapter3
//
//  Created by efe on 12/4/12.
//  Copyright (c) 2012 efe. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
