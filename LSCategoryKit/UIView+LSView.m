//
//  UIView+LSView.m
//  LSCategoryKit
//
//  Created by dev on 2018/11/19.
//  Copyright © 2018 dev. All rights reserved.
//

#import "UIView+LSView.h"

@implementation UIView (LSView)

/**
 添加蒙版圆角
 */
- (void)ls_addMaskLayerCorner:(UIRectCorner)corner radius:(CGFloat)radius{
    CGRect rect = self.bounds;
    CGSize radio = CGSizeMake(radius, radius);//圆角尺寸
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corner cornerRadii:radio];
    CAShapeLayer *masklayer = [[CAShapeLayer alloc]init];//创建shapelayer
    masklayer.frame = self.bounds;
    masklayer.path = path.CGPath;//设置路径
    self.layer.mask = masklayer;
}

/**
 移除蒙版圆角
 */
- (void)ls_removeMaskLayerCorner{
    self.layer.mask = nil;
}

@end

@implementation UIView (LSSafeArea)

/**
 获取safeArea底部距离
 */
- (CGFloat)ls_safeAreaInsetsBottom{
    CGFloat insetBottom = 0;
    if(@available(iOS 11.0, *)) {
        UIEdgeInsets insets = self.safeAreaInsets;
        insetBottom = insets.bottom;
    }
    return insetBottom;
}

/**
 获取四周safeArea距离
 */
- (UIEdgeInsets)ls_safeAreaInsets{
    UIEdgeInsets insets = UIEdgeInsetsZero;
    if(@available(iOS 11.0, *)) {
        insets = self.safeAreaInsets;
    }
    return insets;
}

@end

@implementation UIView (LSReuseInfo)

+ (UINib *)ls_reuseNib{
    return [self ls_reuseNibInBundle:nil];
}

+ (UINib *)ls_reuseNibInBundle:(NSBundle *)bundle{
    UINib *nib = [UINib nibWithNibName:[self ls_reuseID] bundle:bundle];
    return nib;
}

+ (NSString *)ls_reuseID{
    return NSStringFromClass([self class]);
}

+ (CGFloat)ls_reuseHeight{
    return 44;
}

@end
