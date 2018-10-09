//
//  UIImage+LSImage.h
//  LSCategoryKit
//
//  Created by dev on 2018/10/9.
//  Copyright © 2018 dev. All rights reserved.
//
/**
 *  扩展UIImage
 *
 *  @author lsf
 */
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (LSImage)

/**
 根据UIColor获取UIImage,size为（1,1）
 
 @param color 颜色
 @return UIImage
 */
+ (UIImage *)ls_imageWithColor:(UIColor *)color;


/**
 根据UIColor 和 size获取UIImage

 @param color 颜色
 @param size 尺寸
 @return UIImage
 */
+ (UIImage *)ls_imageWithColor:(UIColor *)color size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
