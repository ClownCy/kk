//
//  AppDelegate.m
//  MVC
//
//  Created by bridge on 16/9/3.
//  Copyright © 2016年 bridge. All rights reserved.
//

#import "AppDelegate.h"
#import "CYTableViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    CYTableViewController *tabVc = [[CYTableViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:tabVc];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
