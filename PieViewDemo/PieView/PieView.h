//
//  PieView.h
//  PieViewDemo
//
//  Created by john on 2017/6/21.
//  Copyright © 2017年 john. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ClickCallBack)(NSInteger index);
@interface PieView : UIView
/**
 扇形个数数组
 */
@property (nonatomic, strong) NSArray *sectionCount;
/**
 扇形颜色
 */
@property (nonatomic, strong) NSArray<UIColor *> *sectionColors;
/**
 折线文字
 */
@property (nonatomic, strong) NSArray *lineTexts;
/**
 扇形半径, 默认‘100.0’
 */
@property (nonatomic, assign) CGFloat radius;
/**
 点击扇形后的偏移量, 默认‘15.0’
 */
@property (nonatomic, assign) CGFloat offset;
/**
 折线和扇形的距离, 默认‘0.0’
 */
@property (nonatomic, assign) CGFloat offsetSpace;
/**
 折线起始位置到折点的长度, 默认‘20.0’
 */
@property (nonatomic, assign) CGFloat startLineLength;
/**
 折线终点位置到折点的长度, 默认‘15.0’
 */
@property (nonatomic, assign) CGFloat endLineLength;
/**
 折线上字体, 默认‘[UIFont systemFontOfSize:14]’
 */
@property (nonatomic, strong) UIFont *font;
/**
 是否显示旋转动画, 默认‘YES’
 */
@property (nonatomic, assign) BOOL needAnimation;
/**
 更新视图
 */
- (void)updatePieView;

- (void)showWithBlock:(ClickCallBack)callBack ;
@end
