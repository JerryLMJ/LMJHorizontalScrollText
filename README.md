![(logo)](https://avatars2.githubusercontent.com/u/15794032?s=460&v=4)

简体中文 | [English](./README.en.md)

# LMJHorizontalScrollText

![podversion](https://img.shields.io/cocoapods/v/LMJHorizontalScrollText.svg?style=flat)
![](https://img.shields.io/cocoapods/p/LMJHorizontalScrollText.svg?style=flat)
![](https://img.shields.io/badge/language-oc-orange.svg)
![](https://img.shields.io/cocoapods/l/LMJHorizontalScrollText.svg?style=flat)

- 一个简单好用的字符串滚动控件

## 效果

![](https://github.com/JerryLMJ/LMJHorizontalScrollText/raw/master/demo.gif)

## 支持哪些场景

- UIView、UITableViewCell、Storyboard 等...

## 使用

- 使用 cocoapods 安装：  
  `pod 'LMJHorizontalScrollText'`
- 手动导入:  
  将 `LMJHorizontalScrollText` 文件拖拽到工程中  
  导入头文件`#import "LMJHorizontalScrollText.h"`

## 属性及方法

| 属性          | 描述                                                                                                                                                                                                                                                                                      |
| ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| text          | 滚动字符串内容                                                                                                                                                                                                                                                                            |
| textFont      | 字体                                                                                                                                                                                                                                                                                      |
| textColor     | 字体颜色                                                                                                                                                                                                                                                                                  |
| speed         | 滚动速度，取值范围 0.01~0.1，默认 0.03，值越小速度越快                                                                                                                                                                                                                                    |
| moveDirection | 滚动方向，默认 LMJTextScrollMoveLeft，枚举值如下：<br>- LMJTextScrollMoveLeft：向左滚动<br>- LMJTextScrollMoveRight：向右滚动                                                                                                                                                             |
| moveMode      | 滚动方式，默认 LMJTextScrollWandering，枚举值如下：<br>- LMJTextScrollContinuous: 从控件内开始连续滚动<br>- LMJTextScrollIntermittent：从控件内开始间断滚动<br>- LMJTextScrollFromOutside：从控件外开始滚动<br>- LMJTextScrollWandering： 在控件中往返滚动（不受 moveDirection 属性影响） |

| 方法 | 描述     |
| ---- | -------- |
| move | 开始滚动 |
| stop | 停止滚动 |

## 更新日志

- **2019.9.23（2.0.1）：**  
  修复了控件在屏幕旋转为横屏时，出现的显示错误。  
  增加了控件在 Storyboard 中使用的 demo，可模拟屏幕旋转时控件的变化。

- **2019.8.23（2.0.0）：**  
  全新的 2.0 版本来啦！🎉🎉🎉  
  为更贴合控件功能，项目名称将由 LMJScrollTextView 更换为 LMJHorizontalScrollText  
  本次更新重构控件的使用方式，移除了多个初始化方法，增加使用更加灵活的控件属性 ，提高控件性能  
  新增加了大家一直要求的 cocoapods 安装，并完善了 demo 模块的文件结构以及全新的中英文文档
- **2017.12.5（1.2.0）：**  
  1、修复字符串过短时产生的异常  
  2、修复一些 bug  
  3、完善测试 Demo
- **2015.11.23（1.0.0）：**  
  本 demo 主要实现字符串滚动效果  
  1、可以设置滚动方向（左、右、往返）  
  2、可以设置滚动起始位置（从控件外开始、从控件边缘开始）  
  3，可以设置滚动速度
