//
//  NSDate+LSDate.m
//  LSCategoryKit
//
//  Created by dev on 2018/11/19.
//  Copyright © 2018 dev. All rights reserved.
//

#import "NSDate+LSDate.h"

@implementation NSDate (LSDate)

/**
 判断两个日期是否同一周
 */
- (BOOL)ls_isSameWeekWithDate:(NSDate *)date{
    //日期间隔大于七天之间返回NO
    if (fabs([self timeIntervalSinceDate:date]) >= 7 * 24 *3600){
        return NO;
    }
    
    NSCalendar *calender = [NSCalendar currentCalendar];
    calender.firstWeekday = 2;//设置每周第一天从周一开始
    //计算两个日期分别为这年第几周
    NSUInteger countSelf = [calender ordinalityOfUnit:NSCalendarUnitWeekday inUnit:NSCalendarUnitYear forDate:self];
    NSUInteger countDate = [calender ordinalityOfUnit:NSCalendarUnitWeekday inUnit:NSCalendarUnitYear forDate:date];
    
    //相等就在同一周，不相等就不在同一周
    return countSelf == countDate;
}

@end
