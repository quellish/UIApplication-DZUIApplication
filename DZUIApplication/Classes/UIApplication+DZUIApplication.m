//
//  UIApplication+DZUIApplication.m
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

#import "UIApplication+DZUIApplication.h"

@implementation UIApplication (DZUIApplication)

+ (NSString *) applicationName {
    NSString *result = nil;
    
    result = [UIApplication nameForBundle:[NSBundle mainBundle] ];
    return result;
}

+ (NSString *) nameForBundle:(NSBundle *)bundle {
    NSString *result = nil;
    if (bundle != nil){
        UIApplication *application = [UIApplication sharedApplication];

        // Use the bundle path as the key for associated storage
        NSString *bundleKey         = [bundle bundlePath];
        result = objc_getAssociatedObject(application, bundleKey);
        if (result == nil){
            NSDictionary *bundleInfo = [bundle infoDictionary];
            result = [bundleInfo objectForKey:@"CFBundleName"];
            objc_setAssociatedObject(application, bundleKey, result, OBJC_ASSOCIATION_RETAIN);
        }
    }
    return result; 
}

+ (NSString *) applicationVersion {
    NSString *result = nil;
    
    result = [UIApplication versionForBundle:[NSBundle mainBundle]];
    return result;
}

+ (NSString *) versionForBundle:(NSBundle *)bundle {
    NSString *result                = nil;

    if (bundle != nil){
#if TARGET_OS_IPHONE
        UIApplication *application = [UIApplication sharedApplication];
#else
        NSApplication *application = [NSApplication sharedApplication];
#endif
        
        // Use the bundle path as the key for associated storage
        NSString *bundleKey         = [bundle bundlePath];
        result = objc_getAssociatedObject(application, bundleKey);
        
        if (result == nil){
            // We don't have the value, look it up from the bundle info dictionary.
            NSDictionary *bundleInfo    = nil;
            NSString *appVersion        = nil;
            
            bundleInfo = [bundle infoDictionary];
            appVersion = [bundleInfo objectForKey:@"CFBundleShortVersionString"];
            if (appVersion != nil) {
                appVersion = [bundleInfo objectForKey:@"CFBundleVersion"];
            }
            result = appVersion;
            objc_setAssociatedObject(application, bundleKey, result, OBJC_ASSOCIATION_RETAIN);
        }
    }
        
    return result; 
}

+ (NSString *) applicationIdentifier {
    NSString *result = nil;
    
    result = [UIApplication identifierForBundle:[NSBundle mainBundle] ];
    return result;
}

+ (NSString *) identifierForBundle:(NSBundle *)bundle {
    NSString *result = nil;
    
    if (bundle != nil){
        UIApplication *application = [UIApplication sharedApplication];
        
        // Use the bundle path as the key for associated storage
        NSString *bundleKey         = [bundle bundlePath];
        result = objc_getAssociatedObject(application, bundleKey);
        if (result == nil){
            result = [bundle bundleIdentifier];
            objc_setAssociatedObject(application, bundleKey, result, OBJC_ASSOCIATION_RETAIN);
        }
    }
    return result;
}

@end
