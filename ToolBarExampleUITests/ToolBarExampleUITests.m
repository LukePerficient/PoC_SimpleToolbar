//
//  ToolBarExampleUITests.m
//  ToolBarExampleUITests
//
//  Created by DDC.Mac2 on 10/5/17.
//  Copyright © 2017 DDC.Mac2. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface ToolBarExampleUITests : XCTestCase

@end

@implementation ToolBarExampleUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSelectingItemsOnTabBar {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElementQuery *toolbarsQuery = app.toolbars;

    XCUIElement *label = app.staticTexts[@"Creating object to add to Persistence Layer"];
    NSPredicate *exists = [NSPredicate predicateWithFormat:@"exists == 1"];
    [toolbarsQuery.buttons[@"Create"] tap];
    [self expectationForPredicate:exists evaluatedWithObject:label handler:nil];
    [self waitForExpectationsWithTimeout:5 handler:nil];
    
    [toolbarsQuery.buttons[@"Read"] tap];
    label = app.staticTexts[@"Reading object from Persistence Layer"];
    [self expectationForPredicate:exists evaluatedWithObject:label handler:nil];
    [self waitForExpectationsWithTimeout:5 handler:nil];
    
    [toolbarsQuery.buttons[@"Update"] tap];
    label = app.staticTexts[@"Updating object to Persistence Layer"];
    [self expectationForPredicate:exists evaluatedWithObject:label handler:nil];
    [self waitForExpectationsWithTimeout:5 handler:nil];
    
    [toolbarsQuery.buttons[@"Delete"] tap];
    label = app.staticTexts[@"Deleteing object from Persistence Layer"];
    [self expectationForPredicate:exists evaluatedWithObject:label handler:nil];
    [self waitForExpectationsWithTimeout:5 handler:nil];
}

@end
