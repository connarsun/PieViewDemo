//
//  PieViewAnimationLayer.h
//  PieViewDemo
//
//  Created by john on 2017/6/21.
//  Copyright © 2017年 john. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface PieViewAnimationLayer : CAShapeLayer
/**
 *  起始弧度
 **/
@property (nonatomic,assign) CGFloat startAngle;

/**
 *  结束弧度
 **/
@property (nonatomic,assign) CGFloat endAngle;

/**
 *  圆饼半径
 **/
@property (nonatomic,assign) CGFloat radius;

/**
 *  点击偏移量
 **/
@property (nonatomic,assign) CGFloat clickOffset;

/**
 *  是否点击
 **/
@property (nonatomic,assign) BOOL isSelected;
/**
 *  圆饼layer的圆心
 **/
@property (nonatomic,assign) CGPoint centerPoint;
@end
