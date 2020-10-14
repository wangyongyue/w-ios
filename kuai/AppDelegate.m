//
//  AppDelegate.m
//  kuai
//
//  Created by apple on 2020/6/9.
//  Copyright © 2020 sui. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "TabBarVC.h"
#import "Header.h"
#import "NavgationVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    TabBarVC *main = [[TabBarVC alloc]init];
    
    
    LoginConroller *login = [[LoginConroller alloc]init];
    NavgationVC *nav = [[NavgationVC alloc]initWithRootViewController:login];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
//    [Single getInstance].token
    
    
    return YES;
}


@end
