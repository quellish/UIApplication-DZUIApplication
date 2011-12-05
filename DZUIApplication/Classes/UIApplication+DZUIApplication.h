//
//  UIApplication+DZUIApplication.h
//  DZUIApplication
//
//  Created by Dan Zinngrabe on 12/5/11.
//  Copyright (c) 2011 quellish.org. All rights reserved.
//

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
 
 @category UIApplication (DZUIApplication)
 @discussion UIApplication category that provides information about your application,
 caching values using objc_setAssociatedObject.
 
 */
#if TARGET_OS_IPHONE
@interface UIApplication (DZUIApplication)
#else 
@interface NSApplication (DZUIApplication)
#endif

/*!
 
 @method applicationName:
 @abstract 
 @result Returns the CFBundleName of the application.
 
 */

+ (NSString *) applicationName;

/*!
 
 @method nameForBundle:bundle
 @abstract 
 @param bundle The bundle to return a name for.
 @result Returns the CFBundleName of the bundle.
 
 */

+ (NSString *) nameForBundle:(NSBundle *)bundle;

/*!
 
 @method applicationVersion
 @abstract 
 @result Returns the version string of the application, preferring the short version string.
 */

+ (NSString *) applicationVersion;

/*!
 
 @method versionForBundle:bundle
 @abstract 
 @param bundle The bundle to return a name for.
 @result Returns the version string of the bundle, preferring the short version string.
 
 */

+ (NSString *) versionForBundle:(NSBundle *)bundle;

/*!
 
 @method applicationIdentifier
 @abstract  
 @result Returns the CFBundleIdentifer string of the application.
 
 */

+ (NSString *) applicationIdentifier;

/*!
 
 @method identifierForBundle:bundle
 @abstract 
 @param bundle The bundle to return an identifer for. 
 @result Returns the CFBundleIdentifer string of the bundle.
 
 */

+ (NSString *) identifierForBundle:(NSBundle *)bundle;

@end
#endif

