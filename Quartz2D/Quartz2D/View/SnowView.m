//
//  SnowView.m
//  Quartz2D
//
//  Created by 陈弘根 on 2018/5/30.
//  Copyright © 2018年 陈弘根. All rights reserved.
//

#import "SnowView.h"

@implementation SnowView
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor blackColor];
        [self addRunLoop];
    }
    return self;
}

- (void)addRunLoop
{
    // 设置定时器
    //    [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(setNeedsDisplay) userInfo:nil repeats:YES];
    
    // 0.1 setNeedsDisplay 绑定一个标识,等待下次刷新的时候才会调用drawRect方法
    // 0.15 屏幕的刷新时间
    
    // 定时器
    // 每次屏幕刷新的时候就会调用,屏幕一秒刷新60次
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
    
    // 只要把定时器添加到主运行循环就能自动执行
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    
    // setNeedsDisplay:底层并不会马上调用drawRect,只会给当前的控件绑定一个刷新的标识,每次屏幕刷新的时候,就会把绑定了刷新(重绘)标识的控件重新刷新(绘制)一次,就会调用drawRect去重绘
    
    // 如果以后每隔一段时间需要重绘,一般不使用NSTimer,使用CADisplayLink,不会刷新的时候有延迟
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    static CGFloat snowY = 0;
    
    UIImage *image = [UIImage imageNamed:@"雪花"];
    
    [image drawAtPoint:CGPointMake(0, snowY)];
    
    snowY += 10;
    
    if (snowY > rect.size.height) {
        snowY = 0;
    }
    
    NSLog(@"%f",snowY);
}
@end
