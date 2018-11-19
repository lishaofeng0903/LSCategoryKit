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

/**
 获取某个像素点的颜色

 @param point point坐标
 @return UIColor对象,不在Image坐标系中返回nil
 */
- (UIColor *)ls_colorAtPixel:(CGPoint)point;

/**
 获取占用内存大小(n/1024 = xk,n/(1024*1024) = xm)
 */
- (NSUInteger)ls_getMemorySize;

/**
 获取ImageData的ContentType

 @return "jpeg","png","gif","tiff","webp",nil
 */
+ (NSString *)ls_getContentTypeImageData:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
