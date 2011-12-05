//
//  DZUIApplicationTests.m
//  DZUIApplicationTests
//
//  Created by Dan Zinngrabe on 1/5/08.
//  Copyright (c) 2008 quellish.org. All rights reserved.
//
// --
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so, subject to
// the following conditions:
// 
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
// --

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
