![(logo)](https://avatars2.githubusercontent.com/u/15794032?s=460&v=4)

[简体中文](./README.md) | English

# LMJHorizontalScrollText

![podversion](https://img.shields.io/cocoapods/v/LMJHorizontalScrollText.svg?style=flat)
![](https://img.shields.io/cocoapods/p/LMJHorizontalScrollText.svg?style=flat)
![](https://img.shields.io/badge/language-oc-orange.svg)
![](https://img.shields.io/cocoapods/l/LMJHorizontalScrollText.svg?style=flat)

- A simple and easy to use string scroll control


## Effect          
![](https://github.com/JerryLMJ/LMJHorizontalScrollText/raw/master/demo.gif)



## Support what kinds of scenarios to use
- UIView、UITableViewCell、Storyboard etc.


## Usage
**A choice:**
 * Use cocoapods:          
`pod 'LMJHorizontalScrollText'`

* Manual import:         
    * Drag All files in the `LMJHorizontalScrollText` folder to project
    * Import the main file：`#import "LMJHorizontalScrollText.h"`


## Properties and methods
| Attribute | Description |
| --- | ---
| text | scroll string content
| textFont | font
| textColor | font color
| speed | rolling speed, value range 0.01~0.1, default 0.03, the smaller the value, the faster the speed
| moveDirection | Scroll mode, default LMJTextScrollWandering, enumeration values are as follows: <br>- LMJTextScrollMoveLeft: left<br>- LMJTextScrollMoveRight: right
| moveMode | scroll way, default LMJTextScrollWandering, enumeration values are as follows: <br>- LMJTextScrollContinuous: starting control in continuous rolling <br>- LMJTextScrollIntermittent: starting control in continuous rolling <br>- LMJTextScrollFromOutside: starting from the outside control rolling <br>- LMJTextScrollWandering: Scroll back and forth in the control (not affected by the moveDirection property)

| Method | Description |
| --- | ---
| move | to scroll
| stop | stop scrolling


## Update log
- **2019.12.23 (2.0.2) :**            
Fixed some errors using controls on UITableViewCell to enable the control to support the cell's reuse mechanism.                         
Optimize the stop method.                       
Added demo for controls used in UITableViewCell.                   
- **2019.9.23 (2.0.1) :**            
Fixed a display error when the control rotated to landscape.                
Added demo used by controls in Storyboard to simulate changes of controls when screen rotation.             
- **2019.8.23 (2.0.0) :**           
Here comes the new 2.0! 🎉 🎉 🎉                    
To better match the control functions, the project name will be changed from LMJScrollTextView to LMJHorizontalScrollText.                     
This update reconstructs the way the control is used, removing multiple initialization methods and adding more flexible control properties to improve control performance.                     
Newly added cocoapods installation which is always required by everyone, and improved the file structure of demo module and new Chinese and English documents.           
- **2017.12.5 (1.2.0) :**                
Fix exceptions caused by excessively short strings.            
Fix some bugs.                 
Improve the test Demo.             
- **2015.11.23 (1.0.0) :**             
This demo mainly realizes string scrolling effect              
Scroll direction can be set (left, right, round trip).             
you can set the starting position of scrolling (starting from outside the control, starting from the edge of the control).             
You can set the rolling speed.                               


      

                    
               
