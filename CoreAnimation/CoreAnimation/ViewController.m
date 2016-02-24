//
//  ViewController.m
//  CoreAnimation
//
//  Created by mac on 16/2/17.
//  Copyright © 2016年 liujian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIButton *_label;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//     对于简单的动画可以使用 UIKit 中的 API 来实现，但是如果做一些复杂的动画，就要用到 CoreAnimation
//    CoreAnimation中 CAAnimation 是所有动画的父类 ~ 抽象类
    
//    CoreAnimation是作用于 CALayer 的一个动画框架
//    CABasicAnimation 基础动画
//    CAKeyframeAnimation 关键帧动画
//    CAAnimationGroup 动画组
//    CATransaction 转场动画
//    其中 CABasicAnimation,CAKeyframeAnimation 继承于 CAPropertyAnimation
//    CAMediaTiming 协议，定义了一些动画执行的配置条件
    
    _label = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    _label.backgroundColor = [UIColor cyanColor];
    _label.layer.anchorPoint = CGPointMake(0.5, 0.5);
    _label.layer.position = CGPointMake(100, 100);
    [self.view addSubview:_label];
    
 
    
}
//基础动画
- (void)baseAnimation
{
//    创建动画对象
    CABasicAnimation *baseAnimation = [CABasicAnimation animation];
//    用法：通过修改 layer 的某个属性来执行动画，同时只能修改一个属性值
//设置修改的属性
//    baseAnimation.keyPath = @"position";
//    baseAnimation.keyPath = @"bounds";
//    baseAnimation.keyPath = @"frame";
    baseAnimation.keyPath = @"backgroundColor";
    
//    设置动画的位置变化
//    对属性的修改，从 fromValue 到 toValue，是 id 类型,遇到基本的数据类型需要转化成 NSnumber 结构体转化成 NSValue
    
//    动画开始时 - 属性的值
//    baseAnimation.fromValue = [NSValue valueWithCGPoint:CGPointMake(100, 50)];
    baseAnimation.fromValue = (id)[UIColor cyanColor].CGColor;
//    动画结束时 - 属性的值Ω
//    baseAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(300, 350)];
    baseAnimation.toValue = (id)[UIColor blackColor].CGColor;
    baseAnimation.duration = 2;
    baseAnimation.removedOnCompletion = NO;
    baseAnimation.fillMode = kCAFillModeBackwards;
    baseAnimation.beginTime = CACurrentMediaTime() + 1.0;
    
    baseAnimation.repeatCount = 3;
    baseAnimation.repeatDuration = 5.5;
    baseAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    baseAnimation.delegate = self;
//    将动画添加到 layer 上
    [_label.layer addAnimation:baseAnimation forKey:@"base"];
    
}
//动画代理
- (void)animationDidStart:(CAAnimation *)anim
{
    NSLog(@"开始");
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    if (flag)
    {
        NSLog(@"动画执行完毕");

    }
    else
    {
        NSLog(@"动画中断");

    }
    NSLog(@"结束");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self baseAnimation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
