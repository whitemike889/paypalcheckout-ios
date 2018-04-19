//
//  ViewController.m
//  Native Checkout Sample
//
//  Created by Anderson,Derek on 11/15/17.
//  Copyright © 2017 PayPal. All rights reserved.
//
#import "NativeCheckout/PYPLCheckout.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

	// setting up the view to show our store
  UIWebView *webview=[[UIWebView alloc]initWithFrame:[UIScreen mainScreen].bounds];
  NSString *url=@"https://paypalmerchant.herokuapp.com/cart";
  NSURL *nsurl=[NSURL URLWithString:url];
  NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
  [webview loadRequest:nsrequest];
  [self.view addSubview:webview];
  
  // get an instance of native checkout
  PYPLCheckout* checkout = [PYPLCheckout sharedInstance];
  
  // set the environment for paypal
  checkout.serviceEnvironment = kPYPLEnvironment_SandBox;
  
  // turn off the native implimentation, and just use a secure browser (no universal url needed)
  checkout.webBrowserOnlyMode = YES;
  [checkout interceptWebView:webview];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
