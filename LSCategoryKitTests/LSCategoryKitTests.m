//
//  LSCategoryKitTests.m
//  LSCategoryKitTests
//
//  Created by dev on 2018/10/9.
//  Copyright © 2018 dev. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <LSCategoryKit/LSCategoryKit.h>

@interface LSCategoryKitTests : XCTestCase

@end

@implementation LSCategoryKitTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    NSString *str = [NSString ls_reverseWordsInString:@"我是中文woshizhongwen"];
    NSLog(@"%@",str);
    
    NSString *str1 = [NSString ls_transformChinese2Pinyin:@"我是中文woshizhongwen"];
    NSLog(@"%@",str1);
    
    NSString *str2 = [NSString ls_transformChinese2PinyinCamelCase:@"我是中文woshizhongwen"];
    NSLog(@"%@",str2);
    
    NSArray *array = @[@"我是",@"黎少",@"锋",@"中文",@"啊啊",@"#",@"30"];
    NSArray <NSString *> *strArray = [NSString ls_getFirstPinyinArrayWithChineseArray:array];
    NSLog(@"%@",strArray);
    
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
