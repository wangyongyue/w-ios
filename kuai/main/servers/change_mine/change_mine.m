//
//  change_mine.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "change_mine.h"
#import "Header.h"

@implementation change_mine


- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];    
    [self.array addObject:[mine_input creat:@"手机号:" placeholder:@"请输入手机号" input:[Single getInstance].use.mobile re:[[regular_phone alloc]init]]];
    [self.array addObject:[mine_input creat:@"邮   箱:" placeholder:@"请输入邮箱" input:[Single getInstance].use.email re:[[regular_email alloc]init]]];
    [self.array addObject:[login_login creat:@"修改"]];
    
}
- (void)tableIndex:(NSInteger)index{
    if (index == 2) {
        
        mine_input *phone = self.array[0];
        mine_input *email = self.array[1];

        
        change_mine_todo *server = [[change_mine_todo alloc]init];
        server.email = email.input;
        server.mobile = phone.input;
        [server networkRequest];
        
    }
}

- (NSString *)navigationTitle{
   
    return  @"编辑";
}
@end
