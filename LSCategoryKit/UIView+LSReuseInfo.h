//
//  UIView+LSReuseInfo.h
//  LSCategoryKit
//
//  Created by dev on 2018/10/9.
//  Copyright © 2018 dev. All rights reserved.
//
/**
 *  快速生成重用信息
 *
 *  @author lsf
 */
#import <UIKit/UIKit.h>

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
 子类重写该方法，可以快速生成《固定》Cell高度（默认44）
 */
+ (CGFloat)ls_reuseHeight;


@end
