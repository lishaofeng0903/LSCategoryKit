//
//  NSString+LSString.h
//  LSCategoryKit
//
//  Created by dev on 2018/10/10.
//  Copyright © 2018 dev. All rights reserved.
//
/**
 *  NSString分类
 *
 *  @author lsf
 */
#import <Foundation/Foundation.h>

@interface NSString (LSString)

/**
 快速构造简单字符串
 */
+ (NSString *)ls_makeString:(NSString *)strList,...;

/**
 反转字符串
 */
+ (NSString *)ls_reverseWordsInString:(NSString *)str;

/**
 将中文转换为拼音
 */
+ (NSString *)ls_transformChinese2Pinyin:(NSString *)chinese;

/**
 将中文转换为拼音(拼音无间隔,首拼音大写)
 */
+ (NSString *)ls_transformChinese2PinyinCamelCase:(NSString *)chinese;

/**
 获取中文或英文数组的拼音首字母

 @param chineseArray 中文数组
 @return 拼音首字母数组
 */
+ (NSArray<NSString *> *)ls_getFirstPinyinArrayWithChineseArray:(NSArray<NSString *> *)chineseArray;

@end
