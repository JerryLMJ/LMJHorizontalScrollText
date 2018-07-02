//
//  ViewController.m
//  LMJScrollText
//
//  Created by LiMingjie on 2017/12/5.
//  Copyright © 2017年 iOS开发者公会. All rights reserved.
//

#import "ViewController.h"

#import "LMJScrollTextView.h"

@interface ViewController ()
{
    LMJScrollTextView * _scrollTextView1_1;
    LMJScrollTextView * _scrollTextView1_2;
    
    LMJScrollTextView * _scrollTextView2;
    LMJScrollTextView * _scrollTextView21;
    LMJScrollTextView * _scrollTextView3;
    LMJScrollTextView * _scrollTextView31;
    LMJScrollTextView * _scrollTextView4;
    LMJScrollTextView * _scrollTextView5;
    LMJScrollTextView * _scrollTextView6;
    LMJScrollTextView * _scrollTextView7;
    
    UITextField * _speedTF;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    
    
    //往返滚动
    [self addLabelWithFrame:CGRectMake(10, 30, 400, 20) text:@"往返滚动（Back and forth）"];
    
    _scrollTextView1_1 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 50, 300, 30) textScrollModel:LMJTextScrollWandering direction:LMJTextScrollMoveLeft];
    _scrollTextView1_1.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView1_1];
    
    [_scrollTextView1_1 startScrollWithText:@"<<<往返滚动的字符串>>>" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    _scrollTextView1_2 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 85, 300, 30) textScrollModel:LMJTextScrollWandering direction:LMJTextScrollMoveLeft];
    _scrollTextView1_2.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView1_2];
    
    [_scrollTextView1_2 startScrollWithText:@"<<<往返滚动的字符串|往返滚动的字符串|往返滚动的字符串>>>" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    
    
    
    
    
    //向左，连续滚动
    [self addLabelWithFrame:CGRectMake(10, 135, 400, 20) text:@"向左，连续滚动（left，continuous）"];
    
    _scrollTextView2 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 155, 300, 30) textScrollModel:LMJTextScrollContinuous direction:LMJTextScrollMoveLeft];
    _scrollTextView2.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView2];
    
    [_scrollTextView2 startScrollWithText:@"<<<向左连续滚动字符串|向左连续滚动字符串|向左连续滚动字符串" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    //向右，连续滚动
    [self addLabelWithFrame:CGRectMake(10, 185, 400, 20) text:@"向右，连续滚动（right，continuous）"];
    
    _scrollTextView3 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 205, 300, 30) textScrollModel:LMJTextScrollContinuous direction:LMJTextScrollMoveRight];
    _scrollTextView3.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView3];
    
    [_scrollTextView3 startScrollWithText:@"向右连续滚动字符串>>>" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    
    
    
    
    //向左，间断滚动
    [self addLabelWithFrame:CGRectMake(10, 255, 400, 20) text:@"向左，间断滚动（left，intermittent）"];
    
    _scrollTextView4 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 275, 300, 30) textScrollModel:LMJTextScrollIntermittent direction:LMJTextScrollMoveLeft];
    _scrollTextView4.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView4];
    
    [_scrollTextView4 startScrollWithText:@"<<<向左间断滚动字符串|向左间断滚动字符串|向左间断滚动字符串" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    //向右，间断滚动
    [self addLabelWithFrame:CGRectMake(10, 305, 400, 20) text:@"向右，间断滚动（right，intermittent）"];
    
    _scrollTextView5 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 325, 300, 30) textScrollModel:LMJTextScrollIntermittent direction:LMJTextScrollMoveRight];
    _scrollTextView5.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView5];
    
    [_scrollTextView5 startScrollWithText:@"向右间断滚动字符串>>>" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    
    
    
    
    //向左，控件外开始滚动
    [self addLabelWithFrame:CGRectMake(10, 375, 400, 20) text:@"向左，控件外开始滚动（left，outside start）"];
    
    _scrollTextView6 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10,395, 300, 30) textScrollModel:LMJTextScrollFromOutside direction:LMJTextScrollMoveLeft];
    _scrollTextView6.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView6];
    
    [_scrollTextView6 startScrollWithText:@"<<<控件外向左滚动字符串|控件外向左滚动字符串|控件外向左滚动字符串" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    //向右，控件外开始滚动
    [self addLabelWithFrame:CGRectMake(10, 425, 400, 20) text:@"向右，控件外开始滚动（right，outside start）"];
    
    _scrollTextView7 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 445, 300, 30) textScrollModel:LMJTextScrollFromOutside direction:LMJTextScrollMoveRight];
    _scrollTextView7.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView7];
    
    [_scrollTextView7 startScrollWithText:@"控件外向右滚动字符串>>>" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    //向左，连续滚动,超过一半，就开始新的
    [self addLabelWithFrame:CGRectMake(10, 475, 400, 20) text:@"向左，连续滚动（left，continuousHalf）"];
    
    _scrollTextView21 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 495, 300, 30) textScrollModel:LMJTextScrollContinuousHalf direction:LMJTextScrollMoveLeft];
    _scrollTextView21.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView21];
    
    [_scrollTextView21 startScrollWithText:@"<<<向左连续滚动字符串|向左连续滚动字符串|向左连续滚动字符串" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    //向右，连续滚动 滚到一半重新出现
    [self addLabelWithFrame:CGRectMake(10, 525, 400, 20) text:@"向右，连续滚动（right，continuousHalf）"];
    
    _scrollTextView31 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 545, 300, 30) textScrollModel:LMJTextScrollContinuousHalf direction:LMJTextScrollMoveRight];
    _scrollTextView31.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView31];
    
    [_scrollTextView31 startScrollWithText:@"向右连续滚动字符串>>>" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    
    _speedTF = [[UITextField alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height -100, 350, 30)];
    [_speedTF setPlaceholder:@"速度（取值越小速度越快 0.01~0.1 默认0.03）"];
    [_speedTF setFont:[UIFont systemFontOfSize:16]];
    [_speedTF setTextAlignment:NSTextAlignmentCenter];
    [_speedTF setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:_speedTF];
    
    UIButton * changeSpeedBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [changeSpeedBtn setFrame:CGRectMake(100, self.view.frame.size.height -50, 150, 30)];
    [changeSpeedBtn setTitle:@"Change Speed" forState:UIControlStateNormal];
    [changeSpeedBtn setBackgroundColor:[UIColor blackColor]];
    [changeSpeedBtn addTarget:self action:@selector(changeSpeed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeSpeedBtn];
    
}

-(void)changeSpeed{
    if([_speedTF.text floatValue]) {
        CGFloat speed = [_speedTF.text floatValue];
        
        [_scrollTextView1_1 setMoveSpeed:speed];
        [_scrollTextView1_2 setMoveSpeed:speed];
        [_scrollTextView2 setMoveSpeed:speed];
        [_scrollTextView3 setMoveSpeed:speed];
        [_scrollTextView4 setMoveSpeed:speed];
        [_scrollTextView5 setMoveSpeed:speed];
        [_scrollTextView6 setMoveSpeed:speed];
        [_scrollTextView7 setMoveSpeed:speed];
        [_scrollTextView21 setMoveSpeed:speed];
        [_scrollTextView31 setMoveSpeed:speed];
    }
}

-(void)addLabelWithFrame:(CGRect)frame text:(NSString *)text{
    UILabel * label = [[UILabel alloc] initWithFrame:frame];
    label.text      = text;
    label.textColor = [UIColor greenColor];
    label.font      = [UIFont boldSystemFontOfSize:12];
    [self.view addSubview:label];
}
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
