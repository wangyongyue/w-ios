//
//  login_confi.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "login_confi.h"
#import "Header.h"
#import "TabBarVC.h"
#import "AppDelegate.h"


@interface login_confi()
@property(nonatomic,copy)ReloadBlock switchBlock;

@end
@implementation login_confi
- (void)swith:(ReloadBlock)block{
    self.switchBlock = block;
}

- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    //    NSArray *array = (NSArray *)[[NSUserDefaults standardUserDefaults] objectForKey:VideoUrls];
    
    [self.array addObject:[login_user creat:@"账号" placeholder:@"请输入账号"]];
    [self.array addObject:[login_password creat:@"密码" placeholder:@"请输入密码"]];
    [self.array addObject:[login_code creat:@"验证码" placeholder:@"请输入验证码"]];
    [self.array addObject:[login_forget creat:@"忘记密码？"]];
    [self.array addObject:[login_login creat:@"登录"]];

    
}
- (void)tableIndex:(NSInteger)index{

   
  
    if (index == 4) {
        
        login_user *user = self.array[0];
        login_password *password = self.array[1];
        login_code *code = self.array[2];
        
        login_todo *todo = [[login_todo alloc]init];
        todo.username = user.input;
        todo.password = password.input;
        todo.code = code.input;
        [todo networkRequest];

        
            
        
                
    }else if (index == 3){
        
        forget_controller *vc = [[forget_controller alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (index == 2){
        login_code *code = self.array[index];
        login_user *user = self.array[0];
        login_code_todo *todo = [[login_code_todo alloc]init];
        todo.tel = user.input;
        [todo networkRequest];
        [todo successData:^{
           code.isCode = YES;
           self.reload();
            
        }];
        
        
    }else if (index == 5){
        
          self.switchBlock();

    }

}


@end
