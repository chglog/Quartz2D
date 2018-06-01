//
//  lineView.m
//  Quartz2D
//
//  Created by 陈弘根 on 2018/5/30.
//  Copyright © 2018年 陈弘根. All rights reserved.
//

#import "lineView.h"

@implementation lineView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // 1.获取跟当前View相关联的layer上下文(画板)
    // 总结:目前获取的所有上下文都是以UIGraphics开头
    // CGContextRef:上下文类型
    // CG:CoreGraphics Ref:引用
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 2.绘制内容,拼接路径
    // 创建贝瑟尔路径,因为里面已经封装好了很多路径
    UIBezierPath *path = [UIBezierPath bezierPath];
    // 绘制一条直线
    // 设置起点
    [path moveToPoint:CGPointMake(100, 100)];
    // 添加一根线到某个点
    [path addLineToPoint:CGPointMake(300, 300)];
    
    // 3.把拼接好的路径添加到上下文(画板)
    // UIBezierPath -> CGPath,直接.CGPath
    CGContextAddPath(ctx, path.CGPath);
    
    // 4.渲染上下文,就把内容显示到view
    // 只要跟上下文有关系的东西,都以CGContext开头
    CGContextStrokePath(ctx);
}

@end
