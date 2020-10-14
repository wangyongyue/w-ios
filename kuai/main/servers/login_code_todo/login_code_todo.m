//
//  login_code_todo.m
//  kuai
//
//  Created by apple on 2020/9/3.
//  Copyright © 2020 sui. All rights reserved.
//


#import "login_code_todo.h"
#import "Header.h"

@implementation login_code_todo
- (NSString *)url{
    
    return @"";
}
- (NSMutableDictionary *)body{
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[@"tel"] = self.tel;
    return dic;
}
- (void)loadTableData:(NSDictionary *)reponse{
           
    [Alert showMessage:@"短信发送成功"];

}
- (NSString *)parameterValidation{
   
    if (self.tel.length == 0) {
        return @"请输入账号";
    }
    
    return @"";
}



@end

