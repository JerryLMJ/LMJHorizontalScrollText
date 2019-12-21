//
//  ViewController.m
//  LMJHorizontalScrollTextExample
//
//  Created by LiMingjie on 2019/8/22.
//  Copyright © 2019 LMJ. All rights reserved.
//

#import "ViewController.h"
#import "Demo-StoryboardVC.h"
#import "Demo-TableViewCellVC.h"
#import "LMJHorizontalScrollText.h"


@interface ViewController ()

@property (nonatomic, strong) LMJHorizontalScrollText * scrollText1_1;
@property (nonatomic, strong) LMJHorizontalScrollText * scrollText1_2;

@property (nonatomic, strong) LMJHorizontalScrollText * scrollText2_1;
@property (nonatomic, strong) LMJHorizontalScrollText * scrollText2_2;

@property (nonatomic, strong) LMJHorizontalScrollText * scrollText3_1;
@property (nonatomic, strong) LMJHorizontalScrollText * scrollText3_2;

@property (nonatomic, strong) LMJHorizontalScrollText * scrollText4_1;
@property (nonatomic, strong) LMJHorizontalScrollText * scrollText4_2;


@property (nonatomic, strong) UILabel * speedValueLabel;
@end

@implementation ViewController
{
    CGFloat _screenWidth;
    UIColor * _bgColor;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _screenWidth = self.view.frame.size.width;
    _bgColor = [UIColor colorWithRed:64/255.f green:151/255.f blue:255/255.f alpha:0.5];
    
    [self buildHorizontalScrollTexts_Wandering];
    [self buildHorizontalScrollTexts_Continuous];
    [self buildHorizontalScrollTexts_Intermittent];
    [self buildHorizontalScrollTexts_FromOutside];

    [self buildSpeedControl];
    
    [self buildGotoStoryboardPageBtn];
    [self buildGotoTableViewCellPageBtn];
}

- (void)buildHorizontalScrollTexts_Wandering {
    _scrollText1_1 = [[LMJHorizontalScrollText alloc] initWithFrame: CGRectMake(15, 50, _screenWidth -30, 20)];
    _scrollText1_1.layer.cornerRadius = 3;
    _scrollText1_1.backgroundColor    = _bgColor;
    _scrollText1_1.text               = @"<<<=往返滚动(back and forth)=>>>";
    _scrollText1_1.textColor          = [UIColor whiteColor];
    _scrollText1_1.textFont           = [UIFont systemFontOfSize:14];
    _scrollText1_1.speed              = 0.03;
    _scrollText1_1.moveMode           = LMJTextScrollWandering;
    [self.view addSubview:_scrollText1_1];
    
    _scrollText1_2 = [[LMJHorizontalScrollText alloc] initWithFrame: CGRectMake(15, 80, _screenWidth -30, 20)];
    _scrollText1_2.layer.cornerRadius = 3;
    _scrollText1_2.backgroundColor    = _bgColor;
    _scrollText1_2.text               = @"<<<=往返滚动(back and forth)|往返滚动(back and forth)=>>>";
    _scrollText1_2.textColor          = [UIColor whiteColor];
    _scrollText1_2.textFont           = [UIFont systemFontOfSize:14];
    _scrollText1_2.speed              = 0.03;
    _scrollText1_2.moveMode           = LMJTextScrollWandering;
    [self.view addSubview:_scrollText1_2];
    
    [_scrollText1_1 move];
    [_scrollText1_2 move];
}

- (void)buildHorizontalScrollTexts_Continuous {
    _scrollText2_1 = [[LMJHorizontalScrollText alloc] initWithFrame: CGRectMake(15, 140, _screenWidth -30, 20)];
    _scrollText2_1.layer.cornerRadius = 3;
    _scrollText2_1.backgroundColor    = _bgColor;
    _scrollText2_1.text               = @"<<<=向左，连续滚动(left，continuous)向左，连续滚动(left，continuous)";
    _scrollText2_1.textColor          = [UIColor whiteColor];
    _scrollText2_1.textFont           = [UIFont systemFontOfSize:14];
    _scrollText2_1.speed              = 0.03;
    _scrollText2_1.moveDirection      = LMJTextScrollMoveLeft;
    _scrollText2_1.moveMode           = LMJTextScrollContinuous;
    [self.view addSubview:_scrollText2_1];
    
    
    _scrollText2_2 = [[LMJHorizontalScrollText alloc] initWithFrame: CGRectMake(15, 170, _screenWidth -30, 20)];
    _scrollText2_2.layer.cornerRadius = 3;
    _scrollText2_2.backgroundColor    = _bgColor;
    _scrollText2_2.text               = @"(right，continuous)向右，连续滚动(right，continuous)向右，连续滚动=>>>";
    _scrollText2_2.textColor          = [UIColor whiteColor];
    _scrollText2_2.textFont           = [UIFont systemFontOfSize:14];
    _scrollText2_2.speed              = 0.03;
    _scrollText2_2.moveDirection      = LMJTextScrollMoveRight;
    _scrollText2_2.moveMode           = LMJTextScrollContinuous;
    [self.view addSubview:_scrollText2_2];
    
    [_scrollText2_1 move];
    [_scrollText2_2 move];
}

- (void)buildHorizontalScrollTexts_Intermittent {
    _scrollText3_1 = [[LMJHorizontalScrollText alloc] initWithFrame: CGRectMake(15, 230, _screenWidth -30, 20)];
    _scrollText3_1.layer.cornerRadius = 3;
    _scrollText3_1.backgroundColor    = _bgColor;
    _scrollText3_1.text               = @"<<<=向左，间断滚动(left，intermittent)";
    _scrollText3_1.textColor          = [UIColor whiteColor];
    _scrollText3_1.textFont           = [UIFont systemFontOfSize:14];
    _scrollText3_1.speed              = 0.03;
    _scrollText3_1.moveDirection      = LMJTextScrollMoveLeft;
    _scrollText3_1.moveMode           = LMJTextScrollIntermittent;
    [self.view addSubview:_scrollText3_1];
    
    
    _scrollText3_2 = [[LMJHorizontalScrollText alloc] initWithFrame: CGRectMake(15, 260, _screenWidth -30, 20)];
    _scrollText3_2.layer.cornerRadius = 3;
    _scrollText3_2.backgroundColor    = _bgColor;
    _scrollText3_2.text               = @"(right，intermittent)向右，间断滚动=>>>";
    _scrollText3_2.textColor          = [UIColor whiteColor];
    _scrollText3_2.textFont           = [UIFont systemFontOfSize:14];
    _scrollText3_2.speed              = 0.03;
    _scrollText3_2.moveDirection      = LMJTextScrollMoveRight;
    _scrollText3_2.moveMode           = LMJTextScrollIntermittent;
    [self.view addSubview:_scrollText3_2];
    
    [_scrollText3_1 move];
    [_scrollText3_2 move];
}

- (void)buildHorizontalScrollTexts_FromOutside {
    _scrollText4_1 = [[LMJHorizontalScrollText alloc] initWithFrame: CGRectMake(15, 320, _screenWidth -30, 20)];
    _scrollText4_1.layer.cornerRadius = 3;
    _scrollText4_1.backgroundColor    = _bgColor;
    _scrollText4_1.text               = @"<<<=向左，控件外开始滚动(left，outside start)";
    _scrollText4_1.textColor          = [UIColor whiteColor];
    _scrollText4_1.textFont           = [UIFont systemFontOfSize:14];
    _scrollText4_1.speed              = 0.03;
    _scrollText4_1.moveDirection      = LMJTextScrollMoveLeft;
    _scrollText4_1.moveMode           = LMJTextScrollFromOutside;
    [self.view addSubview:_scrollText4_1];
    
    
    _scrollText4_2 = [[LMJHorizontalScrollText alloc] initWithFrame: CGRectMake(15, 350, _screenWidth -30, 20)];
    _scrollText4_2.layer.cornerRadius = 3;
    _scrollText4_2.backgroundColor    = _bgColor;
    _scrollText4_2.text               = @"(right，outside start)向右，控件外开始滚动=>>>";
    _scrollText4_2.textColor          = [UIColor whiteColor];
    _scrollText4_2.textFont           = [UIFont systemFontOfSize:14];
    _scrollText4_2.speed              = 0.03;
    _scrollText4_2.moveDirection      = LMJTextScrollMoveRight;
    _scrollText4_2.moveMode           = LMJTextScrollFromOutside;
    [self.view addSubview:_scrollText4_2];
    
    [_scrollText4_1 move];
    [_scrollText4_2 move];
}

- (void)buildSpeedControl {
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(15, 450, 60, 20)];
    label.text = @"speed:";
    label.font = [UIFont boldSystemFontOfSize:14];
    [self.view addSubview:label];
    
    UISlider * slider = [[UISlider alloc] initWithFrame:CGRectMake(80, 450, _screenWidth -80 -60, 20)];
    slider.minimumValue = 0.01;
    slider.maximumValue = 0.1;
    slider.value        = 0.03;
    slider.continuous   = NO;
    [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
    
    _speedValueLabel = [[UILabel alloc] initWithFrame:CGRectMake(_screenWidth -60, 450, 60, 20)];
    _speedValueLabel.text = @"0.03";
    _speedValueLabel.font = [UIFont boldSystemFontOfSize:14];
    [self.view addSubview:_speedValueLabel];
}
- (void)buildGotoStoryboardPageBtn{
    UIButton * demoAddToXibPageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [demoAddToXibPageBtn setTitle:@"DemoAddToXibPage >>>" forState:UIControlStateNormal];
    [demoAddToXibPageBtn setBackgroundColor:[UIColor grayColor]];
    [demoAddToXibPageBtn setFrame:CGRectMake(20, 550, 300, 30)];
    [demoAddToXibPageBtn addTarget:self action:@selector(clickDemoAddToXibPageBtn) forControlEvents:UIControlEventTouchUpInside];
    demoAddToXibPageBtn.layer.cornerRadius = 3;
    [self.view addSubview:demoAddToXibPageBtn];
}
- (void)buildGotoTableViewCellPageBtn{
    UIButton * demoAddToTableViewCellPageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [demoAddToTableViewCellPageBtn setTitle:@"DemoAddToTableViewCellPage >>>" forState:UIControlStateNormal];
    [demoAddToTableViewCellPageBtn setBackgroundColor:[UIColor grayColor]];
    [demoAddToTableViewCellPageBtn setFrame:CGRectMake(20, 600, 300, 30)];
    [demoAddToTableViewCellPageBtn addTarget:self action:@selector(clickDemoAddToTableViewCellPageBtn) forControlEvents:UIControlEventTouchUpInside];
    demoAddToTableViewCellPageBtn.layer.cornerRadius = 3;
    [self.view addSubview:demoAddToTableViewCellPageBtn];
}

#pragma mark - action
- (void)sliderValueChanged:(UISlider *)slider {
    CGFloat value = slider.value;
    _speedValueLabel.text = [NSString stringWithFormat:@"%0.2f", value];
    
    _scrollText1_1.speed = value;
    _scrollText1_2.speed = value;
    _scrollText2_1.speed = value;
    _scrollText2_2.speed = value;
    _scrollText3_1.speed = value;
    _scrollText3_2.speed = value;
    _scrollText4_1.speed = value;
    _scrollText4_2.speed = value;
}

- (void)clickDemoAddToXibPageBtn {
    Demo_StoryboardVC * vc = [[UIStoryboard storyboardWithName:@"Demo" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"Demo_StoryboardVC"];
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)clickDemoAddToTableViewCellPageBtn {
    Demo_TableViewCellVC * vc = [[Demo_TableViewCellVC alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
