//
//  LSCategoryDemoTests.m
//  LSCategoryDemoTests
//
//  Created by dev on 2018/10/9.
//  Copyright © 2018 dev. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <LSCategoryKit/LSCategoryKit.h>

@interface LSCategoryDemoTests : XCTestCase

@end

@implementation LSCategoryDemoTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSString *str = [NSString ls_makeString:@"￥",@"100",@"/",nil?:[NSDecimalNumber one],@"件"];
    NSLog(@"str= %@",str);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
