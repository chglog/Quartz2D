//
//  QuadCurveView.m
//  Quartz2D
//
//  Created by 陈弘根 on 2018/5/30.
//  Copyright © 2018年 陈弘根. All rights reserved.
//

#import "QuadCurveView.h"

@implementation QuadCurveView

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
    
    // 2.拼接路径 二次曲线
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(10, 125)];
    [path addQuadCurveToPoint:CGPointMake(240, 125) controlPoint:CGPointMake(0, 50)];
    [path addLineToPoint:CGPointMake(100, 150)]; // 再链接一根线
    [path addQuadCurveToPoint:CGPointMake(280, 150) controlPoint:CGPointMake(124, 300)];// 再链接一根二次曲线
    
    UIBezierPath *path1 = [UIBezierPath bezierPath];
    [path1 moveToPoint:CGPointMake(10, 225)];
    [path1 addQuadCurveToPoint:CGPointMake(240, 300) controlPoint:CGPointMake(124, 400)];
    [path1 addLineToPoint:CGPointMake(240, 380)]; // 再链接一根线
    [path1 addLineToPoint:CGPointMake(280, 380)]; // 再链接一根线
    
    // 三次曲线
    UIBezierPath *threePath = [UIBezierPath bezierPath];
    [threePath moveToPoint:CGPointMake(30,450)];
    [threePath addCurveToPoint:CGPointMake(260,430) controlPoint1:CGPointMake(120,280) controlPoint2:CGPointMake(150,560)];
    
    // 画扇形
    CGPoint center = CGPointMake(self.bounds.size.width * 0.7, self.bounds.size.height * 0.7);
    UIBezierPath *path3 = [UIBezierPath bezierPathWithArcCenter:center radius:100 startAngle:0 endAngle:M_PI_2 clockwise:YES];
    [path3 addLineToPoint:center];
    [path3 closePath];
    
    // 3.添加路径到上下文
    CGContextAddPath(ctx, path.CGPath);
    CGContextAddPath(ctx, path1.CGPath);
    CGContextAddPath(ctx, threePath.CGPath);
    CGContextAddPath(ctx, path3.CGPath);

    
    // 设置绘图状态,一定要再渲染之前
    // 设置颜色
    [[UIColor redColor] setStroke];
    
    // 设置线段的宽度
    CGContextSetLineWidth(ctx, 5);
    // 设置线段的顶角样式
    CGContextSetLineCap(ctx, kCGLineCapRound);
    
    // 设置连接样式
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    
    // 4.渲染上下文
    CGContextStrokePath(ctx);
}

@end
