//
//  DrawView.m
//  Quartz2D
//
//  Created by 陈弘根 on 2018/5/30.
//  Copyright © 2018年 陈弘根. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    // 矩阵操作:上下文可以做平移,旋转,缩放,开发中用的比较多是旋转.
    // 获取跟view相关联的上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 平移
    CGContextTranslateCTM(ctx, 150, 200);
    
    // 旋转
    CGContextRotateCTM(ctx, M_PI_4);
    
    // 缩放
    CGContextScaleCTM(ctx, 0.5, 0.5);
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(-50, -100, 100, 200)];
    
    [[UIColor redColor] set];
    
    [path fill];
    
}
@end
