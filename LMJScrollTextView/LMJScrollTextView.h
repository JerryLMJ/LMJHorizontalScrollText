//
//  LMJScrollTextView.h
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

#import <UIKit/UIKit.h>

/**
 描述字符串滚动前端起始位置：
 */
typedef enum {
    LMJTextScrollContinuous,     // 从控件内开始连续滚动
    LMJTextScrollIntermittent,   // 从控件内开始间断滚动
    LMJTextScrollFromOutside,    // 从控件外开始滚动
    LMJTextScrollWandering       // 在控件中往返滚动（不受设置方向影响）
}LMJTextScrollMode;

/**
 描述字符串移动的方向
 */
typedef enum {
    LMJTextScrollMoveLeft,
    LMJTextScrollMoveRight
}LMJTextScrollMoveDirection;

@interface LMJScrollTextView : UIView

/**
 *  请用该函数进行控件的初始化
 *
 *  @param frame         控件的frame
 *  @param scrollModel   字符串的滚动模式
 *  @param moveDirection 滚动方向
 *
 *  @return 控件实例
 */
-(id)initWithFrame:(CGRect)frame textScrollModel:(LMJTextScrollMode)scrollModel direction:(LMJTextScrollMoveDirection)moveDirection;



/**
 *  更改滚动的字符串
 *
 *  @param text  字符串内容
 *  @param color 字符串颜色
 *  @param font  字符串字体
 */
-(void)startScrollWithText:(NSString * )text textColor:(UIColor *)color font:(UIFont *)font;



/**
 *  设置字符串移动的速度
 *
 *  @param speed         移动速度 取值越小速度越快 取值范围：0.001~0.1
 */
-(void)setMoveSpeed:(CGFloat)speed;

@end
