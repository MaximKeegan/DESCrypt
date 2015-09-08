//
//  DESCrypt_Tests.m
//  DESCrypt_Tests
//
//  Created by Maxim Keegan on 08.09.15.
//  Copyright (c) 2015 East Media. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "DESCrypt.h"

@interface DESCrypt_Tests : XCTestCase

@end

@implementation DESCrypt_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    NSString *table = @"abcdefghijklmnopqrstuvwzyx0123456789";
    
    
    NSString *string = [DESCrypt crypt:@"79902062978" withCode:@"1298" baseTable:table];
    
    if ([string isEqualToString:@"ingafjiconkdmeneokhjoo"]) {
        XCTAssert(YES, @"Pass");
    }
    
    XCTAssertEqualObjects([DESCrypt crypt:@"79902062978" withCode:@"1298" baseTable:table], @"ingafjiconkdmeneokhjoo");
    XCTAssertEqualObjects([DESCrypt decrypt:@"ingafjiconkdmeneokhjoo" withCode:@"1298" baseTable:table], @"79902062978");

    XCTAssertEqualObjects([DESCrypt crypt:@"79902062978" withCode:@"1298" baseTable:table], @"ingafjiconkdmeneokhjoo");
    XCTAssertEqualObjects([DESCrypt decrypt:@"ingafjiconkdmeneokhjoo" withCode:@"1298" baseTable:table], @"79902062978");
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
