//
//  UIApplication+DZUIApplication.m
//  DZUIApplication
//
//  Created by Dan Zinngrabe on 12/5/11.
//  Copyright (c) 2011 quellish.org. All rights reserved.
//

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
