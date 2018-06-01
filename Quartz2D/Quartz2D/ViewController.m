//
//  ViewController.m
//  Quartz2D
//
//  Created by 陈弘根 on 2018/5/30.
//  Copyright © 2018年 陈弘根. All rights reserved.
//

#import "ViewController.h"
#import "quartzViewController.h"
#import "ProgressViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *lineBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 150, 30)];
    lineBtn.backgroundColor = [UIColor greenColor];
    [lineBtn setTitle:@"lineBtn" forState:UIControlStateNormal];
    [lineBtn addTarget:self action:@selector(AddLine) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:lineBtn];
    
    
    UIButton *TowLineBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 150, 150, 30)];
    TowLineBtn.backgroundColor = [UIColor greenColor];
    [TowLineBtn setTitle:@"TowLineBtn" forState:UIControlStateNormal];
    [TowLineBtn addTarget:self action:@selector(AddTowLine) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:TowLineBtn];
    
    
    UIButton *QuadCurveBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 150, 30)];
    QuadCurveBtn.backgroundColor = [UIColor greenColor];
    [QuadCurveBtn setTitle:@"QuadCurveBtn" forState:UIControlStateNormal];
    [QuadCurveBtn addTarget:self action:@selector(AddQuadCurve) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:QuadCurveBtn];
    
    
    UIButton *ProgressView = [[UIButton alloc] initWithFrame:CGRectMake(100, 250, 150, 30)];
    ProgressView.backgroundColor = [UIColor greenColor];
    [ProgressView setTitle:@"ProgressView" forState:UIControlStateNormal];
    [ProgressView addTarget:self action:@selector(ProgressView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:ProgressView];
    
    
    UIButton *PieView = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 150, 30)];
    PieView.backgroundColor = [UIColor greenColor];
    [PieView setTitle:@"AddPieView" forState:UIControlStateNormal];
    [PieView addTarget:self action:@selector(AddPieView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:PieView];
    
    UIButton *SnowView = [[UIButton alloc] initWithFrame:CGRectMake(100, 350, 150, 30)];
    SnowView.backgroundColor = [UIColor greenColor];
    [SnowView setTitle:@"AddSnowView" forState:UIControlStateNormal];
    [SnowView addTarget:self action:@selector(AddSnowView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:SnowView];
    
    UIButton *DrawView = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 150, 30)];
    DrawView.backgroundColor = [UIColor greenColor];
    [DrawView setTitle:@"AddDrawView" forState:UIControlStateNormal];
    [DrawView addTarget:self action:@selector(AddDrawView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:DrawView];
    
    
    UIButton *DrawingBoard = [[UIButton alloc] initWithFrame:CGRectMake(100, 450, 150, 30)];
    DrawingBoard.backgroundColor = [UIColor greenColor];
    [DrawingBoard setTitle:@"AddDrawingBoard" forState:UIControlStateNormal];
    [DrawingBoard addTarget:self action:@selector(AddDrawingBoard) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:DrawingBoard];
}

- (void)AddLine{
    quartzViewController *VC = [[quartzViewController alloc] init];
    VC.type = @"AddLine";
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)AddTowLine{
    quartzViewController *VC = [[quartzViewController alloc] init];
    VC.type = @"AddTowLine";
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)AddQuadCurve{
    quartzViewController *VC = [[quartzViewController alloc] init];
    VC.type = @"AddQuadCurve";
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)AddPieView{
    quartzViewController *VC = [[quartzViewController alloc] init];
    VC.type = @"AddPieView";
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)AddSnowView{
    quartzViewController *VC = [[quartzViewController alloc] init];
    VC.type = @"AddSnowView";
    [self.navigationController pushViewController:VC animated:YES];
}


- (void)AddDrawView{
    quartzViewController *VC = [[quartzViewController alloc] init];
    VC.type = @"AddDrawView";
    [self.navigationController pushViewController:VC animated:YES];
}


- (void)AddDrawingBoard{
    
    quartzViewController *VC = [[quartzViewController alloc] init];
    VC.type = @"AddDrawingBoard";
    [self.navigationController pushViewController:VC animated:YES];
    
}


- (void)ProgressView{
    ProgressViewController *VC = [[ProgressViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
