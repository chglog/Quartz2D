//
//  quartzViewController.m
//  Quartz2D
//
//  Created by 陈弘根 on 2018/5/30.
//  Copyright © 2018年 陈弘根. All rights reserved.
//

#import "quartzViewController.h"
#import "lineView.h"
#import "towLineView.h"
#import "QuadCurveView.h"
#import "PieView.h"
#import "SnowView.h"
#import "DrawView.h"
#import "DrawingBoard.h"

@interface quartzViewController ()

@end

@implementation quartzViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = self.type;
    if ([self.type isEqualToString:@"AddLine"]) {
        
        [self AddLine];
    }else if ([self.type isEqualToString:@"AddTowLine"]){
        
        [self AddTowLine];
    }else if ([self.type isEqualToString:@"AddQuadCurve"]){
        
        [self AddQuadCurve];
    }else if ([self.type isEqualToString:@"AddPieView"]){
        
        [self AddPieView];
    }else if ([self.type isEqualToString:@"AddSnowView"]){
        
        [self AddSnowView];
    }else if ([self.type isEqualToString:@"AddDrawView"]){
        
        [self AddDrawView];
    }else if ([self.type isEqualToString:@"AddDrawingBoard"]){
        
        [self AddDrawingBoard];
    }
    
}

- (void)AddLine{
    
    lineView *view = [[lineView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view];
}

- (void)AddTowLine{
    
    towLineView *view = [[towLineView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view];
    
}

- (void)AddQuadCurve{
    
    QuadCurveView *view = [[QuadCurveView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view];
}


- (void)AddPieView{
    
    PieView *snow = [[PieView alloc] initWithFrame:CGRectMake(50, 100, 250, 250)];
    [self.view addSubview:snow];
}

- (void)AddSnowView{
    
    self.view.backgroundColor = [UIColor blackColor];
    SnowView *snow = [[SnowView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:snow];
}

- (void)AddDrawView{
    DrawView *draw = [[DrawView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:draw];
}

- (void)AddDrawingBoard{
    DrawingBoard *draw = [[DrawingBoard alloc] initWithFrame:CGRectMake(20, 100, 300, 350)];
    [self.view addSubview:draw];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
