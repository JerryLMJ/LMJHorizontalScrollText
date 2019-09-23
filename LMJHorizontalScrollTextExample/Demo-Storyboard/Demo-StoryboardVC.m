//
//  Demo-StoryboardVC.m
//  LMJHorizontalScrollTextExample
//
//  Created by LiMingjie on 2019/9/23.
//  Copyright © 2019 LMJ. All rights reserved.
//

#import "Demo-StoryboardVC.h"
#import "LMJHorizontalScrollText.h"

@interface Demo_StoryboardVC ()

@property (weak, nonatomic) IBOutlet LMJHorizontalScrollText *scrollText1;
@property (weak, nonatomic) IBOutlet LMJHorizontalScrollText *scrollText2;
@property (weak, nonatomic) IBOutlet LMJHorizontalScrollText *scrollText3;
@property (weak, nonatomic) IBOutlet LMJHorizontalScrollText *scrollText4;

@end

@implementation Demo_StoryboardVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setTitle:@"back" forState:UIControlStateNormal];
    [backBtn setBackgroundColor:[UIColor lightGrayColor]];
    [backBtn setFrame:CGRectMake(20, 400, 90, 30)];
    [backBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    
    
    
    
    _scrollText1.text               = @"<<<=往返滚动(back and forth)|往返滚动(back and forth)=>>>";
    _scrollText1.textColor          = [UIColor whiteColor];
    _scrollText1.textFont           = [UIFont systemFontOfSize:14];
    _scrollText1.speed              = 0.03;
    _scrollText1.moveMode           = LMJTextScrollWandering;
    

    _scrollText2.text               = @"<<<=向左，连续滚动(left，continuous)向左，连续滚动(left，continuous)";
    _scrollText2.textColor          = [UIColor whiteColor];
    _scrollText2.textFont           = [UIFont systemFontOfSize:14];
    _scrollText2.speed              = 0.03;
    _scrollText2.moveDirection      = LMJTextScrollMoveLeft;
    _scrollText2.moveMode           = LMJTextScrollContinuous;
    
    
    _scrollText3.text               = @"(right，intermittent)向右，间断滚动=>>>";
    _scrollText3.textColor          = [UIColor whiteColor];
    _scrollText3.textFont           = [UIFont systemFontOfSize:14];
    _scrollText3.speed              = 0.03;
    _scrollText3.moveDirection      = LMJTextScrollMoveRight;
    _scrollText3.moveMode           = LMJTextScrollIntermittent;
    
    
    _scrollText4.text               = @"<<<=向左，控件外开始滚动(left，outside start)";
    _scrollText4.textColor          = [UIColor whiteColor];
    _scrollText4.textFont           = [UIFont systemFontOfSize:14];
    _scrollText4.speed              = 0.03;
    _scrollText4.moveDirection      = LMJTextScrollMoveLeft;
    _scrollText4.moveMode           = LMJTextScrollFromOutside;
    
}


- (void)backAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
