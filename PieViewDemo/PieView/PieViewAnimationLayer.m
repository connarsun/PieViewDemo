//
//  PieViewAnimationLayer.m
//  PieViewDemo
//
//  Created by john on 2017/6/21.
//  Copyright © 2017年 john. All rights reserved.
//

#import "PieViewAnimationLayer.h"
#import <UIKit/UIKit.h>

@implementation PieViewAnimationLayer

- (void)setIsSelected:(BOOL)isSelected {
    _isSelected = isSelected;
    
    CGFloat centerX = self.centerPoint.x + cosf((self.startAngle + self.endAngle) * 0.5) * self.clickOffset;
    CGFloat centerY = self.centerPoint.y + sinf((self.startAngle + self.endAngle) * 0.5) * self.clickOffset;
    CGPoint newCenter = self.centerPoint;
    
    
    if (isSelected) {
        newCenter = CGPointMake(centerX, centerY);
    }
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:newCenter radius:self.radius startAngle:self.startAngle endAngle:self.endAngle clockwise:YES];
    [path addLineToPoint:newCenter];
    [path closePath];
    self.path = path.CGPath;
    
    // 添加动画
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"path";
    animation.toValue = path;
    animation.duration = 0.35;
    [self addAnimation:animation forKey:nil];
}

@end
