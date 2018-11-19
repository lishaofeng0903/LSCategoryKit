//
//  NSDate+LSDate.h
//  LSCategoryKit
//
//  Created by dev on 2018/11/19.
//  Copyright © 2018 dev. All rights reserved.
//
/**
 *  NSDate分类
 *
 *  @author lsf
 */
#import <Foundation/Foundation.h>

@interface NSDate (LSDate)

/**
 判断两个日期是否同一周
 */
- (BOOL)ls_isSameWeekWithDate:(NSDate *)date;

@end

