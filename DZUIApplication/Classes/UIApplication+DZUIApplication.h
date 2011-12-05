//
//  UIApplication+DZUIApplication.h
//  DZUIApplication
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

#ifndef __UIAPPLICATION_DZUIAPPLICATION__
#define __UIAPPLICATION_DZUIAPPLICATION__

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#else
#import <Cocoa/Cocoa.h>
#endif

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

#if PRAGMA_ONCE
#pragma once
#endif

/*!
 
 UIApplication category that provides information about your application,
 caching values using objc_setAssociatedObject.
 
 */
#if TARGET_OS_IPHONE
@interface UIApplication (DZUIApplication)
#else 
@interface NSApplication (DZUIApplication)
#endif

/*!
 
 Returns the CFBundleName of the application. 
 @result CFBundleName as an NSString
 
 */

+ (NSString *) applicationName;

/*!
 
 Returns the CFBundleName of the bundle.
 @param bundle The bundle to return a name for.
 @result Returns the CFBundleName of the bundle.
 
 */

+ (NSString *) nameForBundle:(NSBundle *)bundle;

/*!
 
 Returns the version string of the application, preferring the short version string.
 @result The version string.
 */

+ (NSString *) applicationVersion;

/*!
 
 Returns the version string of the bundle, preferring the short version string.
 @param bundle The bundle to return a name for.
 @result The version string (i.e. "1.1.2")
 
 */

+ (NSString *) versionForBundle:(NSBundle *)bundle;

/*!
 
 Returns the CFBundleIdentifer string of the application.
 @result The CFBundleIdentifer as an NSString
 
 */

+ (NSString *) applicationIdentifier;

/*!
 
 Returns the CFBundleIdentifer string of the bundle.
 @param bundle The bundle to return an identifer for. 
 @result The CFBundleIdentifier as an NSString
 
 */

+ (NSString *) identifierForBundle:(NSBundle *)bundle;

@end
#endif

