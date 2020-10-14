//
//  loginOut.m
//  kuai
//
//  Created by apple on 2020/9/3.
//  Copyright © 2020 sui. All rights reserved.
//

#import "loginOut.h"
#import "AppDelegate.h"
#import "NavgationVC.h"
#import "LoginConroller.h"

@implementation loginOut
- (NSString *)url{
    
    return @"";
}
- (NSMutableDictionary *)body{
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    return dic;
}
- (void)loadTableData:(NSDictionary *)reponse{
           
    AppDelegate *app = (AppDelegate *) [UIApplication sharedApplication].delegate;
    LoginConroller *login = [[LoginConroller alloc]init];
    NavgationVC *nav = [[NavgationVC alloc]initWithRootViewController:login];
    app.window.rootViewController = nav;
    [app.window makeKeyAndVisible];

}

@end
