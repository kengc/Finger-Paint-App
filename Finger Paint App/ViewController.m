//
//  ViewController.m
//  Finger Paint App
//
//  Created by Kevin Cleathero on 2017-06-09.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "ViewController.h"
#import "DrawUserInput.h"


@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *panVar;
@property (weak, nonatomic) IBOutlet DrawUserInput *drawInput;

//if using CLLayer here make it strong

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)panMoveHandler:(UIPanGestureRecognizer *)sender {
    
    if(sender.state == UIGestureRecognizerStateBegan)
    {
        CGPoint point  = [sender locationInView:self.view];
        NSLog(@"Start points: %@",  NSStringFromCGPoint(point));
        self.drawInput.cgStartPoint = point;
        [self.drawInput setNeedsDisplay];
    }
    if(sender.state == UIGestureRecognizerStateChanged)
    {
        CGPoint point  = [sender locationInView:self.view];
        NSLog(@"Changed points: %@",  NSStringFromCGPoint(point));
        [self.drawInput setNeedsDisplay];
    }
    if(sender.state == UIGestureRecognizerStateEnded)
    {
        CGPoint point  = [sender locationInView:self.view];
        NSLog(@"Ended points: %@",  NSStringFromCGPoint(point));
        self.drawInput.cgEndPoint = point;
        [self.drawInput setNeedsDisplay];
    
    }
}


@end
