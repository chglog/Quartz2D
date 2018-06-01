//
//  PieView.m
//  Quartz2D
//
//  Created by 陈弘根 on 2018/5/30.
//  Copyright © 2018年 陈弘根. All rights reserved.
//

#import "PieView.h"

@implementation PieView


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    
    NSArray *data = @[@25,@25,@20,@30];
    
    
    CGPoint center = CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.height * 0.5);
    CGFloat radius = self.bounds.size.width * 0.5;
    CGFloat startA = 0;
    CGFloat endA = 0;
    CGFloat angle = 0;
    
    for (NSNumber *num in data) {
        // 画一个扇形
        startA = endA;
        angle = [num intValue] / 100.0 * M_PI * 2;
        endA = startA + angle;
        
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
        
        [path addLineToPoint:center];
        
        // set:同时设置描边和填充颜色
        [[self randomColor] set];
        
        [path fill];
    }
}

// 随机颜色
- (UIColor *)randomColor
{
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}


@end
