//
//  towLineView.m
//  Quartz2D
//
//  Created by 陈弘根 on 2018/5/30.
//  Copyright © 2018年 陈弘根. All rights reserved.
//

#import "towLineView.h"

@implementation towLineView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    // 1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 2.拼接路径,一个路径中可以保存多条线段
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(150, 250)];
    
    [path addLineToPoint:CGPointMake(250, 300)];
    
    
    // 3.把路径添加到上下文
    CGContextAddPath(ctx, path.CGPath);
    
    // 一根线对应一个路径,只要绘制的线不连接,最好使用一根线对应一个路径的方法
    path = [UIBezierPath bezierPath];
    // 拼接另一根直线
    // 默认下一根线的起点就是上一根线的终点
    // 设置第二根线的起点
    //    [path moveToPoint:CGPointMake(20, 20)];
    // 如果想要绘制不连接的线,重新设置起点
    [path moveToPoint:CGPointMake(100, 150)];
    
    [path addLineToPoint:CGPointMake(200, 250)];
    
    // 3.把路径添加到上下文
    CGContextAddPath(ctx, path.CGPath);
    
    // 4.渲染上下文
    CGContextStrokePath(ctx);
}

@end
