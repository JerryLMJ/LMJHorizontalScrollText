//
//  TestViewController.m
//  滚动字条
//
//  Created by apple on 14-12-4.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import "TestViewController.h"
#import "LMJScrollTextView.h"

@interface TestViewController ()
{
    LMJScrollTextView * _scrollTextView1;
    LMJScrollTextView * _scrollTextView2;
    LMJScrollTextView * _scrollTextView3;
    LMJScrollTextView * _scrollTextView4;
    LMJScrollTextView * _scrollTextView5;
    LMJScrollTextView * _scrollTextView6;
    LMJScrollTextView * _scrollTextView7;
}
@end

@implementation TestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    
    
    //往返滚动
    [self addLabelWithFrame:CGRectMake(10, 20, 400, 20) text:@"往返滚动（Back and forth）"];
    
    _scrollTextView1 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 40, 300, 30) textScrollModel:LMJTextScrollWandering direction:LMJTextScrollMoveLeft];
    _scrollTextView1.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView1];
    
    [_scrollTextView1 startScrollWithText:@"#没搜阿德福建扫地机发送批斗士是电风扇的大夫撒！" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    
    
    
    //向左，连续滚动
    [self addLabelWithFrame:CGRectMake(10, 70, 400, 20) text:@"向左，连续滚动（left，continuous）"];
    
    _scrollTextView2 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 90, 300, 30) textScrollModel:LMJTextScrollContinuous direction:LMJTextScrollMoveLeft];
    _scrollTextView2.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView2];
    
    [_scrollTextView2 startScrollWithText:@"#没搜阿德福建扫地机发送批斗士是电风扇的大夫撒！" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    
    
    
    //向右，连续滚动
    [self addLabelWithFrame:CGRectMake(10, 120, 400, 20) text:@"向右，连续滚动（right，continuous）"];
    
    _scrollTextView3 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 140, 300, 30) textScrollModel:LMJTextScrollContinuous direction:LMJTextScrollMoveRight];
    _scrollTextView3.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView3];
    
    [_scrollTextView3 startScrollWithText:@"#没搜阿德福建扫地机发送批斗士是电风扇的大夫撒！" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    
    
    
    
    //向左，间断滚动
    [self addLabelWithFrame:CGRectMake(10, 170, 400, 20) text:@"向左，间断滚动（left，intermittent）"];
    
    _scrollTextView4 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 190, 300, 30) textScrollModel:LMJTextScrollIntermittent direction:LMJTextScrollMoveLeft];
    _scrollTextView4.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView4];
    
    [_scrollTextView4 startScrollWithText:@"#没搜阿德福建扫地机发送批斗士是电风扇的大夫撒！" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    
    
    
    //向右，间断滚动
    [self addLabelWithFrame:CGRectMake(10, 220, 400, 20) text:@"向右，间断滚动（right，intermittent）"];
    
    _scrollTextView5 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 240, 300, 30) textScrollModel:LMJTextScrollIntermittent direction:LMJTextScrollMoveRight];
    _scrollTextView5.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView5];
    
    [_scrollTextView5 startScrollWithText:@"#没搜阿德福建扫地机发送批斗士是电风扇的大夫撒！" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    
    
    
    
    //向左，控件外开始滚动
    [self addLabelWithFrame:CGRectMake(10, 270, 400, 20) text:@"向左，控件外开始滚动（left，outside start）"];
    
    _scrollTextView6 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 290, 300, 30) textScrollModel:LMJTextScrollFromOutside direction:LMJTextScrollMoveLeft];
    _scrollTextView6.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView6];
    
    [_scrollTextView6 startScrollWithText:@"#没搜阿德福建扫地机发送批斗士是电风扇的大夫撒！" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    
    
    
    
    //向右，控件外开始滚动
    [self addLabelWithFrame:CGRectMake(10, 320, 400, 20) text:@"向右，控件外开始滚动（right，outside start）"];
    
    _scrollTextView7 = [[LMJScrollTextView alloc] initWithFrame:CGRectMake(10, 340, 300, 30) textScrollModel:LMJTextScrollFromOutside direction:LMJTextScrollMoveRight];
    _scrollTextView7.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_scrollTextView7];
    
    [_scrollTextView7 startScrollWithText:@"#没搜阿德福建扫地机发送批斗士是电风扇的大夫撒！" textColor:[UIColor blackColor] font:[UIFont systemFontOfSize:16]];
    
    
    
    
    
    
    
    
    
    
    UIButton * changeSpeedBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [changeSpeedBtn setFrame:CGRectMake(100, 400, 120, 30)];
    [changeSpeedBtn setTitle:@"Change Speed" forState:UIControlStateNormal];
    [changeSpeedBtn setBackgroundColor:[UIColor darkGrayColor]];
    [changeSpeedBtn addTarget:self action:@selector(changeSpeed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeSpeedBtn];
    
}

-(void)changeSpeed{
    [_scrollTextView1 setMoveSpeed:0.005];
    [_scrollTextView2 setMoveSpeed:0.005];
    [_scrollTextView3 setMoveSpeed:0.005];
    [_scrollTextView4 setMoveSpeed:0.005];
    [_scrollTextView5 setMoveSpeed:0.005];
    [_scrollTextView6 setMoveSpeed:0.005];
    [_scrollTextView7 setMoveSpeed:0.005];
}

-(void)addLabelWithFrame:(CGRect)frame text:(NSString *)text{
    UILabel * label = [[UILabel alloc] initWithFrame:frame];
    label.text      = text;
    label.textColor = [UIColor greenColor];
    label.font      = [UIFont boldSystemFontOfSize:15];
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
