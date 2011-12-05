//
//  DZUIApplicationTests.m
//  DZUIApplicationTests
//
//  Created by Dan Zinngrabe on 12/5/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "DZUIApplicationTests.h"

@implementation DZUIApplicationTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testApplicationIdentifer
{
    STFail(@"Unit tests are not implemented yet in DZUIApplicationTests");
}

- (void)testApplicationName
{
    //STFail(@"Unit tests are not implemented yet in DZUIApplicationTests");
    NSLog(@" %@", [UIApplication applicationName]);
}

- (void)testApplicationVersion
{
    //STFail(@"Unit tests are not implemented yet in DZUIApplicationTests");
}

- (void)testIdentiferForBundle
{
    //STFail(@"Unit tests are not implemented yet in DZUIApplicationTests");
    NSBundle *unitTestBundle = [NSBundle bundleForClass:[self class]];
    NSLog(@" %@", [UIApplication identifierForBundle:unitTestBundle]);
}

- (void)testNameForBundle
{
    //STFail(@"Unit tests are not implemented yet in DZUIApplicationTests");
}

- (void)testVersionForBundle
{
    //STFail(@"Unit tests are not implemented yet in DZUIApplicationTests");
}

@end
