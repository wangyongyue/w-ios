//
//  login_todo.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "login_todo.h"
#import "AppDelegate.h"
#import "TabBarVC.h"
#import "Header.h"

@implementation login_todo
- (NSString *)url{
    
    return @"";

}
- (NSMutableDictionary *)body{
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[@"userName"] = self.username;
    dic[@"pwd"] = self.password;
    dic[@"icode"] = self.code;
    dic[@"deviceId"] = [Single getInstance].deviceId;

    return dic;
    
}
- (void)loadTableData:(NSDictionary *)reponse{
           
    [Single getInstance].userId = @"123";

    AppDelegate *app = (AppDelegate *) [UIApplication sharedApplication].delegate;
    TabBarVC *main = [[TabBarVC alloc]init];
    app.window.rootViewController = main;
    [app.window makeKeyAndVisible];
    
    
}
- (NSString *)parameterValidation{
    
    
    return @"";
}



@end

