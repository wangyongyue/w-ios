//
//  forget_confi.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "forget_confi.h"
#import "Header.h"

@implementation forget_confi


- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    //    NSArray *array = (NSArray *)[[NSUserDefaults standardUserDefaults] objectForKey:VideoUrls];
    
    [self.array addObject:[forget_user creat:@"账   号:" placeholder:@"请输入账号"]];
    [self.array addObject:[forget_code creat:@"验证码:" placeholder:@"请输入验证码"]];
    [self.array addObject:[forget_password creat:@"新密码:" placeholder:@"6~20位，仅字母、数字、下划线（必填）"]];
    [self.array addObject:[forget_password creat:@"确   认:" placeholder:@"请再次输入新密码（必填）"]];
    [self.array addObject:[login_login creat:@"修改"]];

    
}
- (void)tableIndex:(NSInteger)index{

    if (index == 1){
        
        forget_code *code = self.array[index];
        forget_user *user = self.array[0];
        login_code_todo *todo = [[login_code_todo alloc]init];
        todo.tel = user.input;
        [todo networkRequest];
        
        __weak typeof(todo) weakVer = todo;
        [todo successData:^{
            
           code.isCode = YES;
           self.reload();
            
        }];
        
        
    }else if (index == 4){
        
        forget_user *tel = self.array[0];
        forget_code *iCode = self.array[1];
        forget_password *password = self.array[2];
        forget_password *passwordConfirm = self.array[3];

        forget_todo *server = [[forget_todo alloc]init];
        server.tel = tel.input;
        server.iCode = iCode.input;
        server.password = password.input;
        server.passwordConfirm = passwordConfirm.input;
        
        [server networkRequest];

    }
}


@end
