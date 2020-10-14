//
//  forget_todo.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "forget_todo.h"
#import "Header.h"

@implementation forget_todo

- (NSString *)url{
    
    return @"";
}
- (NSMutableDictionary *)body{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[@"tel"] = self.tel;
    dic[@"iCode"] = self.iCode;
    dic[@"password"] = self.password;
    dic[@"passwordConfirm"] = self.passwordConfirm;

    return dic;
}

- (void)loadTableData:(NSDictionary *)reponse{
           
    [Alert showMessage:@"修改成功"];
    [self.navigationController popViewControllerAnimated:YES];
}
- (NSString *)parameterValidation{
    if (self.tel.length == 0) {
        return @"请输入手机号";
    }else if (self.iCode.length == 0) {
        return @"请输入验证码";
    }else if (self.password.length == 0) {
        return @"请输入密码";
    }else if (self.passwordConfirm.length == 0) {
        return @"请输入确认密码";
    }
    
    return @"";
}

@end



