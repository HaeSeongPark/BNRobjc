//
//  _1iOSAppiTahDoodleTests.m
//  31iOSAppiTahDoodleTests
//
//  Created by rhino Q on 22/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ArrayDataSource.h"
#import <OCMock/OCMock.h>

@interface _1iOSAppiTahDoodleTests : XCTestCase

@end

@implementation _1iOSAppiTahDoodleTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testInittializaing {
    XCTAssertNil([[ArrayDataSource alloc] init], @"Should not be allowed.");
    TableViewCellConfigureBlock block = ^(UITableViewCell *a, id b){};
    id objc1 = [[ArrayDataSource alloc] initWithItems:@[]
                                       cellIdentifier:@"foo"
                                   configureCellBlock: block];
    XCTAssertNotNil(objc1, @"");
}

-(void)testCellConfiguration
{
    __block UITableViewCell *configuredCell = nil;
    __block id configuredObject = nil;
    TableViewCellConfigureBlock blcok = ^(UITableViewCell *a, id b)
    {
        configuredCell = a;
        configuredObject = b;
    };
    ArrayDataSource *dataSource = [[ArrayDataSource alloc] initWithItems:@[@"a", @"b"]
                                                          cellIdentifier:@"foo" configureCellBlock:blcok];
    
    id mockTableView = [OCMockObject mockForClass:[UITableView class]];
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [[[mockTableView expect] andReturn:cell] dequeueReusableCellWithIdentifier:@"foo" forIndexPath:indexPath];
    
    id result = [dataSource tableView:mockTableView cellForRowAtIndexPath:indexPath];
    
    XCTAssertEqual(result, cell, @"Should return the dummy cell.");
    XCTAssertEqual(configuredCell, cell, @"This should have been passed to the block.");
    XCTAssertEqualObjects(configuredObject, @"a", @"This should have been passed to the block.");
    [mockTableView verify];
}
@end
