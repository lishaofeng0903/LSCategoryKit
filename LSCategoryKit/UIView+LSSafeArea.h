//
//  UIView+LSSafeArea.h
//  LSCategoryKit
//
//  Created by dev on 2018/10/9.
//  Copyright © 2018 dev. All rights reserved.
//
/**
 *  UIView的safeArea扩展
 *
 *  @author lsf
 */
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

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

NS_ASSUME_NONNULL_END
