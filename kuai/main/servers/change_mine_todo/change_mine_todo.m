//
//  change_mine_todo.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "change_mine_todo.h"
#import "Header.h"

@implementation change_mine_todo
- (NSString *)url{
    
    return @"";
}
- (NSMutableDictionary *)body{
    NSMutableDictionary *dic = [super body];
    dic[@"email"] = self.email;
    dic[@"mobile"] = self.mobile;    
    return dic;
}

- (void)loadTableData:(NSDictionary *)reponse{
           
    [Alert showMessage:@"修改成功"];
    [self.navigationController popViewControllerAnimated:YES];
}
- (NSString *)parameterValidation{
    if (self.mobile.length == 0) {
        return @"手机号不能空";
    }
    
    return @"";
}



@end
