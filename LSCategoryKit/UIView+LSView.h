//
//  UIView+LSView.h
//  LSCategoryKit
//
//  Created by dev on 2018/11/19.
//  Copyright © 2018 dev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LSView)

/**
 添加蒙版圆角
 */
- (void)ls_addMaskLayerCorner:(UIRectCorner)corner radius:(CGFloat)radius;

/**
 移除蒙版圆角
 */
- (void)ls_removeMaskLayerCorner;

@end

@interface UIView (LSSafeArea)

/**
 获取safeArea底部距离
 */
- (CGFloat)ls_safeAreaInsetsBottom;

/**
 获取四周safeArea距离
 */
- (UIEdgeInsets)ls_safeAreaInsets;

@end

@interface UIView (LSReuseInfo)

/**
 快速根据类名生成UINib mainBundle获取Nib
 */
+ (UINib *)ls_reuseNib;

/**
 快速根据类名生成UINib(用于资源不在MainBundle的情况)
 */
+ (UINib *)ls_reuseNibInBundle:(NSBundle *)bundle;

/**
 快速根据类名生成重用字符串
 */
+ (NSString *)ls_reuseID;

/**
 子类重写该方法，可以快速生成"固定"Cell高度（默认44）
 */
+ (CGFloat)ls_reuseHeight;


@end
