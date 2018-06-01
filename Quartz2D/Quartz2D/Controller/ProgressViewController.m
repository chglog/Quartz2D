//
//  ProgressViewController.m
//  Quartz2D
//
//  Created by 陈弘根 on 2018/5/30.
//  Copyright © 2018年 陈弘根. All rights reserved.
//

#import "ProgressViewController.h"
#import "ProgressView.h"

@interface ProgressViewController ()

@property (weak, nonatomic) IBOutlet UILabel *labelView;
@property (weak, nonatomic) IBOutlet ProgressView *progressView;
@end

@implementation ProgressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)valueChange:(UISlider *)sender {
    
    // %在stringWithFormat里面有特殊含义,需要转义 %% 相当于一个%
    _labelView.text = [NSString stringWithFormat:@"%.2f%%",sender.value*100];
    _progressView.progress = sender.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
