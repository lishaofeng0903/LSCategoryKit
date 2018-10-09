//
//  UIView+LSReuseInfo.m
//  LSCategoryKit
//
//  Created by dev on 2018/10/9.
//  Copyright © 2018 dev. All rights reserved.
//

#import "UIView+LSReuseInfo.h"

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
