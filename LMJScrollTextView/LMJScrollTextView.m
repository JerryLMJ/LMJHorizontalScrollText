//
//  LMJScrollTextView.m
//  LMJScrollTextView
//
//  Version 1.0.0
//
//  Created by MajorLi on 14-12-4.
//  Copyright (c) 2014年 iOS开发者公会. All rights reserved.
//
//  iOS开发者公会-技术1群 QQ群号：87440292
//  iOS开发者公会-技术2群 QQ群号：232702419
//  iOS开发者公会-议事区  QQ群号：413102158
//

#import "LMJScrollTextView.h"

@implementation LMJScrollTextView
{
    UILabel * _contentLabel1;
    UILabel * _contentLabel2;
    
    NSTimer * _timer;
    
    NSString * _text;
    UIFont * _font;
    UIColor * _textColor;
    
    UITapGestureRecognizer * _tapGesture;
    
    
    CGFloat _textWidth;
    LMJTextScrollMode _currentScrollModel;
    LMJTextScrollMoveDirection _currentMoveDirection;
    
    int _wanderingOffset;
}

- (id)init{
    NSAssert(NO, @"禁止使用init函数进行控件初始化，请使用initWithFrame:textScrollModel:函数进行控件初始化！");
    return nil;
}
- (id)initWithFrame:(CGRect)frame{
    NSAssert(NO, @"禁止使用initWithFrame:函数进行控件初始化，请使用initWithFrame:textScrollModel:函数进行控件初始化！");
    return nil;
}

-(id)initWithFrame:(CGRect)frame textScrollModel:(LMJTextScrollMode)scrollModel direction:(LMJTextScrollMoveDirection)moveDirection{
    self = [super initWithFrame:frame];
    if (self) {
        self.clipsToBounds = YES;
        
        //默认初始化
        _text = @"";
        _textColor = [UIColor blackColor];
        _font = [UIFont systemFontOfSize:self.frame.size.height-4];
        _wanderingOffset = -1;

        //设置滚动模式和方向
        _currentScrollModel   = scrollModel;
        _currentMoveDirection = moveDirection;
    }
    return self;
}



#pragma mark - 开始滚动
-(void)startScrollWithText:(NSString * )text textColor:(UIColor *)color font:(UIFont *)font{
    //清空self上的子视图
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromSuperview];
        obj = nil;
    }];
    
    //赋新值
    _text = text;
    _textColor = color;
    _font = font;
    
    _textWidth = [text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName, nil]].width;
    
    //开始滚动
    [self startScroll];
}
#pragma mark - 创建滚动视图
-(void)startScroll{
    
    if (_text.length == 0) {//如果字符串长度为0，直接返回
        return;
    }
    
    
    //初始化滚动字符串label
    switch (_currentScrollModel) {
        
        case LMJTextScrollContinuous:
        {
            if (_currentMoveDirection == LMJTextScrollMoveLeft) {
                [self creatLabel1WithFrame1:CGRectMake(0, 0, _textWidth, self.frame.size.height) andLabel2WithFrame2:CGRectMake(_textWidth, 0, _textWidth, self.frame.size.height)];
            }else{
                [self creatLabel1WithFrame1:CGRectMake(self.frame.size.width -_textWidth, 0, _textWidth, self.frame.size.height) andLabel2WithFrame2:CGRectMake(self.frame.size.width -_textWidth -_textWidth, 0, _textWidth, self.frame.size.height)];
            }
 
        }break;
            
        case LMJTextScrollContinuousHalf:
        {
            if (_currentMoveDirection == LMJTextScrollMoveLeft) {
                [self creatLabel1WithFrame1:CGRectMake(0, 0, _textWidth, self.frame.size.height) andLabel2WithFrame2:CGRectMake(self.frame.size.width/2 + _textWidth, 0, _textWidth, self.frame.size.height)];
            }else{
                [self creatLabel1WithFrame1:CGRectMake(self.frame.size.width -_textWidth, 0, _textWidth, self.frame.size.height) andLabel2WithFrame2:CGRectMake(self.frame.size.width -_textWidth -_textWidth - self.frame.size.width/2, 0, _textWidth, self.frame.size.height)];
            }
            
        }break;
            
        case LMJTextScrollIntermittent:
        {
            if (_currentMoveDirection == LMJTextScrollMoveLeft) {
                [self creatLabel1WithFrame:CGRectMake(0, 0, _textWidth, self.frame.size.height)];
            }else{
                [self creatLabel1WithFrame:CGRectMake(self.frame.size.width -_textWidth, 0, _textWidth, self.frame.size.height)];
            }
        }break;
            
        case LMJTextScrollFromOutside:
        {
            if (_currentMoveDirection == LMJTextScrollMoveLeft) {
                [self creatLabel1WithFrame:CGRectMake(self.frame.size.width, 0, _textWidth, self.frame.size.height)];
            }else{
                [self creatLabel1WithFrame:CGRectMake(_textWidth, 0, _textWidth, self.frame.size.height)];
            }
        }break;
            
        case LMJTextScrollWandering:
        {
            [self creatLabel1WithFrame:CGRectMake(0, 0, _textWidth, self.frame.size.height)];
        }break;
            
        default:
            break;
    }

    
    //设置速度，开始滚动（默认为0.03）
    [self setMoveSpeed:0.03];;
}

#pragma mark - 创建label
-(void)creatLabel1WithFrame:(CGRect)frame{
    _contentLabel1 = [[UILabel alloc] initWithFrame:frame];
    _contentLabel1.text            = _text;
    _contentLabel1.font            = _font;
    _contentLabel1.textColor       = _textColor;
    _contentLabel1.backgroundColor = [UIColor clearColor];
    [self addSubview:_contentLabel1];
}
-(void)creatLabel1WithFrame1:(CGRect)frame1 andLabel2WithFrame2:(CGRect)frame2{
    
    [self creatLabel1WithFrame:frame1];
    
    _contentLabel2 = [[UILabel alloc] initWithFrame:frame2];
    _contentLabel2.text            = _text;
    _contentLabel2.font            = _font;
    _contentLabel2.textColor       = _textColor;
    _contentLabel2.backgroundColor = [UIColor clearColor];
    [self addSubview:_contentLabel2];
}

#pragma mark - 设置速度
-(void)setMoveSpeed:(CGFloat)speed{
    CGFloat timeInterval = speed;
    if (speed > 0.1) {
        timeInterval = 0.1;
    }
    if (speed < 0.01) {
        timeInterval = 0.01;
    }
    
    [_timer invalidate];
    _timer = nil;
    _timer = [NSTimer scheduledTimerWithTimeInterval:timeInterval target:self selector:@selector(contentMove) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
}

#pragma mark - 内容移动
- (void)contentMove {
    
    switch (_currentScrollModel) {
            
        case LMJTextScrollContinuous:
        {
            [self moveContinuous];
        }
            break;
        case LMJTextScrollContinuousHalf:
        {
            [self moveContinuousHalf];
        }
            break;
        case LMJTextScrollIntermittent:
        {
            [self moveIntermittent];
        }
            break;
        case LMJTextScrollFromOutside:
        {
            [self moveFromOutside];
        }
            break;
        case LMJTextScrollWandering:
        {
            [self moveWandering];
        }
            break;
        default:
            break;
    }
}
//连续滚动
-(void)moveContinuous{
    if (_currentMoveDirection == LMJTextScrollMoveLeft) {
        _contentLabel1.frame = CGRectMake(_contentLabel1.frame.origin.x -1, 0, _textWidth, self.frame.size.height);
        _contentLabel2.frame = CGRectMake(_contentLabel2.frame.origin.x -1, 0, _textWidth, self.frame.size.height);
        if (_contentLabel1.frame.origin.x < -_textWidth) {
            _contentLabel1.frame = CGRectMake(_contentLabel2.frame.origin.x + _textWidth, 0, _textWidth, self.frame.size.height);
        }
        if (_contentLabel2.frame.origin.x < -_textWidth) {
            _contentLabel2.frame = CGRectMake(_contentLabel1.frame.origin.x + _textWidth, 0, _textWidth, self.frame.size.height);
        }
    }else{
        _contentLabel1.frame = CGRectMake(_contentLabel1.frame.origin.x +1, 0, _textWidth, self.frame.size.height);
        _contentLabel2.frame = CGRectMake(_contentLabel2.frame.origin.x +1, 0, _textWidth, self.frame.size.height);
        if (_contentLabel1.frame.origin.x > self.frame.size.width) {
            _contentLabel1.frame = CGRectMake(_contentLabel2.frame.origin.x - _textWidth, 0, _textWidth, self.frame.size.height);
        }
        if (_contentLabel2.frame.origin.x > self.frame.size.width) {
            _contentLabel2.frame = CGRectMake(_contentLabel1.frame.origin.x - _textWidth, 0, _textWidth, self.frame.size.height);
        }
    }
}

//连续滚动中间过半就出现
-(void)moveContinuousHalf{
    if (_currentMoveDirection == LMJTextScrollMoveLeft) {
        _contentLabel1.frame = CGRectMake(_contentLabel1.frame.origin.x -1, 0, _textWidth, self.frame.size.height);
        _contentLabel2.frame = CGRectMake(_contentLabel2.frame.origin.x -1, 0, _textWidth, self.frame.size.height);
        if (_contentLabel1.frame.origin.x < -_textWidth) {
            _contentLabel1.frame = CGRectMake(_contentLabel2.frame.origin.x + _textWidth + self.frame.size.width/2, 0, _textWidth, self.frame.size.height);
        }
        if (_contentLabel2.frame.origin.x < -_textWidth) {
            _contentLabel2.frame = CGRectMake(_contentLabel1.frame.origin.x + _textWidth + self.frame.size.width/2, 0, _textWidth, self.frame.size.height);
        }
    }else{
        _contentLabel1.frame = CGRectMake(_contentLabel1.frame.origin.x +1, 0, _textWidth, self.frame.size.height);
        _contentLabel2.frame = CGRectMake(_contentLabel2.frame.origin.x +1, 0, _textWidth, self.frame.size.height);
        if (_contentLabel1.frame.origin.x > self.frame.size.width) {
            _contentLabel1.frame = CGRectMake(_contentLabel2.frame.origin.x - _textWidth - self.frame.size.width/2, 0, _textWidth, self.frame.size.height);
        }
        if (_contentLabel2.frame.origin.x > self.frame.size.width) {
            _contentLabel2.frame = CGRectMake(_contentLabel1.frame.origin.x - _textWidth- self.frame.size.width/2, 0, _textWidth, self.frame.size.height);
        }
    }
}
//间断滚动
-(void)moveIntermittent{
    if (_currentMoveDirection == LMJTextScrollMoveLeft) {
        _contentLabel1.frame = CGRectMake(_contentLabel1.frame.origin.x -1, 0, _textWidth, self.frame.size.height);
        if (_contentLabel1.frame.origin.x < -_textWidth) {
            _contentLabel1.frame = CGRectMake(0, 0, _textWidth, self.frame.size.height);
        }
    }else{
        _contentLabel1.frame = CGRectMake(_contentLabel1.frame.origin.x +1, 0, _textWidth, self.frame.size.height);
        if (_contentLabel1.frame.origin.x > self.frame.size.width) {
            _contentLabel1.frame = CGRectMake(self.frame.size.width -_textWidth, 0, _textWidth, self.frame.size.height);
        }
    }
}
//控件外开始滚动
-(void)moveFromOutside{
    if (_currentMoveDirection == LMJTextScrollMoveLeft) {
        _contentLabel1.frame = CGRectMake(_contentLabel1.frame.origin.x -1, 0, _textWidth, self.frame.size.height);
        if (_contentLabel1.frame.origin.x < -_textWidth) {
            _contentLabel1.frame = CGRectMake(self.frame.size.width, 0, _textWidth, self.frame.size.height);
        }
    }else{
        _contentLabel1.frame = CGRectMake(_contentLabel1.frame.origin.x +1, 0, _textWidth, self.frame.size.height);
        if (_contentLabel1.frame.origin.x > self.frame.size.width) {
            _contentLabel1.frame = CGRectMake(-_textWidth, 0, _textWidth, self.frame.size.height);
        }
    }
}
//往返滚动
-(void)moveWandering{
    CGFloat selfWidth = self.frame.size.width;
    if (_textWidth > selfWidth) {
        _contentLabel1.frame = CGRectMake(_contentLabel1.frame.origin.x + _wanderingOffset, 0, _textWidth, self.frame.size.height);
        if (_contentLabel1.frame.origin.x < -(_textWidth -selfWidth)) {
            _wanderingOffset = 1;
        }
        if (_contentLabel1.frame.origin.x > 0) {
            _wanderingOffset = -1;
        }
    }else if (_textWidth < selfWidth){
        _contentLabel1.frame = CGRectMake(_contentLabel1.frame.origin.x + _wanderingOffset, 0, _textWidth, self.frame.size.height);
        if (_contentLabel1.frame.origin.x < 0) {
            _wanderingOffset = 1;
        }
        if (_contentLabel1.frame.origin.x > selfWidth - _textWidth) {
            _wanderingOffset = -1;
        }
    }
}

- (void)dealloc{
    [_timer invalidate];
    _timer = nil;
}

@end
