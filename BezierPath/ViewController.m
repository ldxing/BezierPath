//
//  ViewController.m
//  BezierPath
//
//  Created by mac on 16/6/30.
//  Copyright © 2016年 ldxi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *Btn = [UIButton buttonWithType:(UIButtonTypeSystem)];
    Btn.frame = CGRectMake(0, 20, 100, 30);
    [Btn setTitle:@"1111" forState:(UIControlStateNormal)];
    [Btn addTarget:self action:@selector(BtnAction) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:Btn];
    
    
    
    
    
}

- (void)BtnAction{
//    UIBezierPath *path =
////    [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 50)];
//    [UIBezierPath bezierPath];
//    [path moveToPoint:CGPointMake(100, 200)];
//    [path addLineToPoint:CGPointMake(200, 200)];
//    [path addLineToPoint:CGPointMake(150, 200 - 50 * sqrt(3))];
//    [path addLineToPoint:CGPointMake(100, 200)];
//    
//    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
////    layer.frame = CGRectMake(9, 9, 200, 100);
//    layer.fillColor = [UIColor greenColor].CGColor;
//    layer.path = path.CGPath;
//    layer.backgroundColor = [UIColor greenColor].CGColor;
    
//    layer.strokeColor = [UIColor purpleColor].CGColor;
    
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.frame = CGRectMake(0, 0, 200, 200);
//    shapeLayer.strokeEnd = 0.75f;
    shapeLayer.strokeStart = 0.0f;
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 200, 200)];
    shapeLayer.path = path.CGPath;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.lineWidth = 2.0f;
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
//    [_demoView.layer addSublayer:shapeLayer];
    
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0, 302, self.view.frame.size.width, 500)];
    aView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:aView];
    
    [aView.layer addSublayer:shapeLayer];
    
    
    
    CABasicAnimation *pathAnima = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    pathAnima.duration = 2.0f;
//    pathAnima.repeatCount = 100;
//    pathAnima.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    pathAnima.fromValue = [NSNumber numberWithFloat:0.0f];
    pathAnima.toValue = [NSNumber numberWithFloat:1.0f];
//    pathAnima.fillMode = kCAFillModeForwards;
    pathAnima.removedOnCompletion = NO;
    [shapeLayer addAnimation:pathAnima forKey:@"strokeEndAnimation"];

    
    
    
    
//    UIView *ane =[[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 200)];
//    ane.backgroundColor= [UIColor greenColor];
    
//    [aView addSubview:ane];
//    //设置填充颜色
//    UIColor *fillColor = [UIColor greenColor];
//    [fillColor set];
//    [path fill];
//    
//    // 设置画笔颜色
//    UIColor *strokeColor = [UIColor blueColor];
//    [strokeColor set];
//    
//    // 根据我们设置的各个点连线
//    [path stroke];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
