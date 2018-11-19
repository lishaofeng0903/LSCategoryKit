//
//  NSString+LSString.m
//  LSCategoryKit
//
//  Created by dev on 2018/10/10.
//  Copyright © 2018 dev. All rights reserved.
//

#import "NSString+LSString.h"

@implementation NSString (LSString)

+ (NSString *)ls_makeString:(NSString *)argStr,...{
    // 定义va_list变量(指针)
    va_list arg_list;
    
    NSMutableString *mStr = [@"" mutableCopy];
    if (argStr) {
        [mStr appendFormat:@"%@",argStr];
        // 把arg_list指向name这个可变形参的第一个位置
        va_start(arg_list, argStr);
        
        // 提取一个参数, 返回一个NSString*, 并将指针后移
        NSString *temp_arg = va_arg(arg_list, id);
        while (temp_arg) {
            [mStr appendFormat:@"%@", temp_arg];
            // 继续后移, 遇到nil跳出循环
            temp_arg = va_arg(arg_list, id);
        }
        
        va_end(arg_list);
        
    }
    return [mStr copy];
}

+ (NSString *)ls_reverseWordsInString:(NSString *)str{
    NSMutableString *reverString = [NSMutableString stringWithCapacity:str.length];
    [str enumerateSubstringsInRange:NSMakeRange(0, str.length) options:NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences  usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        [reverString appendString:substring];
    }];
    return reverString;
}

+ (NSString *)ls_transformChinese2Pinyin:(NSString *)chinese{
    //将NSString装换成NSMutableString
    NSMutableString *pinyin = [chinese mutableCopy];
    //将汉字转换为拼音(带音标)
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformMandarinLatin, NO);
    //去掉拼音的音标
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformStripCombiningMarks, NO);
    //返回最近结果
    return pinyin;
}

+ (NSString *)ls_transformChinese2PinyinCamelCase:(NSString *)chinese{
    NSString *pinyin = [NSString ls_transformChinese2Pinyin:chinese];
    NSArray <NSString *> *pinYinArray = [pinyin componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSMutableString *mStr = [[NSMutableString alloc] init];
    for (NSString *py in pinYinArray) {
        [mStr appendString:[py capitalizedString]];
    }
    return [mStr copy];
}

+ (NSArray<NSString *> *)ls_getFirstPinyinArrayWithChineseArray:(NSArray<NSString *> *)chineseArray{
    NSMutableArray <NSString *> *strs = [[NSMutableArray alloc] init];
    for (NSString *str in chineseArray) {
        NSString *firstCharacter = [[NSString ls_transformChinese2PinyinCamelCase:str] substringToIndex:1];
        [strs addObject:firstCharacter];
    }
    return [strs copy];
}



@end
