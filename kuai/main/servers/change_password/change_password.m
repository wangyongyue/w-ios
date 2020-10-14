//
//  change_password.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "change_password.h"

#import "Header.h"

@implementation change_password


- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    //    NSArray *array = (NSArray *)[[NSUserDefaults standardUserDefaults] objectForKey:VideoUrls];
    
    [self.array addObject:[forget_password creat:@"原密码:" placeholder:@"请输入原密码（必填）"]];
    [self.array addObject:[forget_password creat:@"新密码:" placeholder:@"6~20位，仅字母、数字、下划线（必填）"]];
    [self.array addObject:[forget_password creat:@"确   认:" placeholder:@"请输入新密码（必填）"]];
    [self.array addObject:[login_login creat:@"修改"]];

    
}
- (void)tableIndex:(NSInteger)index{
    
    if (index == 3){
        forget_password *old = self.array[0];
        forget_password *new = self.array[1];
        forget_password *corn = self.array[2];
        
        change_password_todo *server = [[change_password_todo alloc]init];
        server.oldPassword = old.input;
        server.nPwd = new.input;
        server.confirmPassword = corn.input;
        [server networkRequest];
    }
    
    
}

@end

