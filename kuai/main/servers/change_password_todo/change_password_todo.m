//
//  change_password_todo.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "change_password_todo.h"
#import "Header.h"

@implementation change_password_todo

- (NSString *)url{
    
    return @"";
}
- (NSMutableDictionary *)body{
    NSMutableDictionary *dic = [super body];
    dic[@"oldPassword"] = self.oldPassword;
    dic[@"newPassword"] = self.nPwd;
    dic[@"confirmPassword"] = self.confirmPassword;

    return dic;
}

- (void)loadTableData:(NSDictionary *)reponse{
           
    [Alert showMessage:@"修改成功"];
    [self.navigationController popViewControllerAnimated:YES];
}
- (NSString *)parameterValidation{
    if (self.oldPassword.length == 0) {
        return @"请输入原密码";
    }else if (self.nPwd.length == 0) {
        return @"请输入新密码";
    }else if (self.confirmPassword.length == 0) {
        return @"请输入确认密码";
    }
    
    return @"";
}

@end

