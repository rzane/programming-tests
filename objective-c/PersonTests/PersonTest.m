//
//  PersonTest.m
//  Person
//
//  Created by Ray Zane on 8/7/15.
//  Copyright (c) 2015 Ray Zane. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Person.h"

@interface PersonTest : XCTestCase {
    Person *jeff;
    Person *susy;
}

@end

@implementation PersonTest

- (void)setUp {
    [super setUp];

    jeff = [[Person alloc] initWithName:@"Jeff"];
    susy = [[Person alloc] initWithName:@"Susy"];

}

- (void)testName {
    XCTAssert([jeff.name isEqualToString:@"Jeff"]);
}

- (void)testGreetHelloJeff {
    NSString *greeting = [jeff greet:@"Hello"];
    XCTAssert([greeting isEqualToString:@"Hi, I'm Jeff"]);
}

- (void)testGreetHelloSusy {
    NSString *greeting = [susy greet:@"Hello"];
    XCTAssert([greeting isEqualToString:@"Hi, I'm Susy"]);
}

- (void)testGreetGoodbye {
    NSString *greeting = [jeff greet:@"Goodbye"];
    XCTAssert([greeting isEqualToString:@"Bye"]);
}

- (void)testGreetOther {
    NSString *greeting = [jeff greet:@"Yo"];
    XCTAssert([greeting isEqualToString:@"Yo"]);
}

@end
