//
//  UIImage+LSImage.m
//  LSCategoryKit
//
//  Created by dev on 2018/10/9.
//  Copyright © 2018 dev. All rights reserved.
//

#import "UIImage+LSImage.h"

@implementation UIImage (LSImage)

+ (UIImage *)ls_imageWithColor:(UIColor *)color{
    return [self ls_imageWithColor:color size:CGSizeMake(1, 1)];
}

+ (UIImage *)ls_imageWithColor:(UIColor *)color size:(CGSize)size{
    
    UIGraphicsBeginImageContext(size);
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}

@end
