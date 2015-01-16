//
//  AppDelegate.m
//  AutoLayoutDemo
//
//  Created by jiangxingshang on 15/1/16.
//  Copyright (c) 2015年 jxs. All rights reserved.
//

#import "AppDelegate.h"
#import "AutoLayoutTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    
    
    AutoLayoutTableViewController *root = [[AutoLayoutTableViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:root];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
