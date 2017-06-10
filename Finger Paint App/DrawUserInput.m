//
//  DrawUserInput.m
//  Finger Paint App
//
//  Created by Kevin Cleathero on 2017-06-09.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "DrawUserInput.h"
#import <QuartzCore/QuartzCore.h>


@implementation DrawUserInput

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/

//view gets updated gets called
- (void)drawRect:(CGRect)rect{
    // Drawing code
    UIBezierPath *linePath=[UIBezierPath bezierPath];
    
    addCurveToPoint:controlPoint1:controlPoint2:
    
    [linePath moveToPoint:CGPointMake(self.cgStartPoint.x, self.cgStartPoint.y)];

    [linePath addLineToPoint:CGPointMake(self.cgEndPoint.x, self.cgEndPoint.y)];
    linePath.lineWidth = 5.0;
    
    //every point stroke
    //colors array of paths
    
    //core animation self.layer // to access layer.  layer can have sublayer
    //CAShapeLayer extend this class
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = [linePath CGPath];
    shapeLayer.strokeColor = [[UIColor blueColor] CGColor];
    shapeLayer.lineWidth = 5.0;
    shapeLayer.fillColor = [[UIColor clearColor] CGColor];
    //self.layer.frame = CGRectMAke[];
    [self.layer addSublayer:shapeLayer];

    ///////////////////////////////////////
    
    
//    starlayer .h .m  from CSShapeLayer
//    
//    -(void)drawstar{
//    
//         UIBezierPath *linePath=[UIBezierPath bezierPath];
//        
//        //  movepoint
//        //
//        self.path = starPath.CGPath;
//        self.fillcolor = {[uicolor .CGColorRefself.strol]
//        self.strokecolor =
//    }
    
}
//    UIColor *linecolor = [UIColor blueColor];
//    [linecolor setStroke];
//    [linePath stroke];

/////////////

//    CAShapeLayer *line = [CAShapeLayer layer];
//    UIBezierPath *linePath=[UIBezierPath bezierPath];
//    [linePath moveToPoint:CGPointMake(startx, starty)];
//    [linePath addLineToPoint:CGPointMake(endx, endy)];
//    line.lineWidth = 10.0;
//    line.path=linePath.CGPath;
//    line.fillColor = shapecolor.CGColor;
//    line.strokeColor = shapecolor.CGColor;
//    [[self.view layer] addSublayer:line];
//
//    view.layer.addSublayer(shapeLayer);



@end
