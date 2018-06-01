//
//  ProgressView.m
//  Quartz2D
//
//  Created by 陈弘根 on 2018/5/30.
//  Copyright © 2018年 陈弘根. All rights reserved.
//

#import "ProgressView.h"

@implementation ProgressView

- (void)setProgress:(CGFloat)progress
{
    _progress = progress;
    
    // drawRect不能手动调用
    //    [self drawRect:self.bounds];
    // 重绘
    [self setNeedsDisplay];
}

// drawRect只会调用一次
// drawRect只能系统调用,而且每次调用之前系统都会创建一个跟View相关联的上下文传递给你
- (void)drawRect:(CGRect)rect {
    
    // 画圆弧
    CGPoint center = CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.width * 0.5);
    CGFloat radius = self.bounds.size.width * 0.5 - 2;
    CGFloat startA = -M_PI_2;
    CGFloat endA = -M_PI_2 + _progress * M_PI * 2;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
    
    [path stroke];
    
}


@end

