//
//  AppDelegate.m
//  Native Checkout Sample
//
//  Created by Anderson,Derek on 11/15/17.
//  Copyright © 2017 PayPal. All rights reserved.
//

#import "AppDelegate.h"
#import <NativeCheckout/PYPLCheckout.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  return YES;
}


// these hooks are required for PayPal Native Implimentation
// not needed for webBrowserOnly mode.
- (BOOL)application:(UIApplication *)application
continueUserActivity:(NSUserActivity *)userActivity
 restorationHandler:(void (^)(NSArray *restorableObjects))restorationHandler
{
  return [[PYPLCheckout sharedInstance] application:application continueUserActivity:userActivity restorationHandler:restorationHandler];
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
  return [[PYPLCheckout sharedInstance] handleReturnFromPaypal: url];
}

@end
