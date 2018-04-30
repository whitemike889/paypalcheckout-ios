//
//  AppDelegate.m
//  Native Checkout Sample
//
//  Created by Anderson,Derek on 11/15/17.
//  Copyright © 2017 PayPal. All rights reserved.
//

#import "AppDelegate.h"
#import <PayPalCheckout/PYPLCheckout.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  return YES;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
  return [[PYPLCheckout sharedInstance] handleReturnFromPaypal: url];
}

@end
