//
//  UIView+LSSafeArea.m
//  LSCategoryKit
//
//  Created by dev on 2018/10/9.
//  Copyright © 2018 dev. All rights reserved.
//

#import "UIView+LSSafeArea.h"

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
