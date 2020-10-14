//
//  user_mine.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "user_mine.h"

#import "Header.h"
#import "AppDelegate.h"
#import "NavgationVC.h"

#import "user_details.h"

@implementation user_mine
- (NSString *)url{
    return @"";
}


- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    user *us = [[user alloc]init];
    us.trueName = @"name";
    us.userName = @"name";
    us.companyName = @"name";
    us.mobile = @"name";
    us.email = @"name";
   
     
    
    [self.array addObject:[mine_two creat:@"name" title1:@"name"]];
    [self.array addObject:[mine_todo creat:@"header" imageName:@"mint_sf"]];
    [self.array addObject:[mine_todo creat:@"header" imageName:@"mine_kh"]];
    [self.array addObject:[mine_todo creat:@"header" imageName:@"mine_face"]];
    [self.array addObject:[mine_todo creat:@"header" imageName:@"mine_password"]];
    [self.array addObject:[mine_todo creat:@"退出登录" imageName:@"mint_loginout"]];

    
}
- (void)tableIndex:(NSInteger)index{
    if (index == 0) {
        
        user_details *server = [[user_details alloc]init];
        [goods_detail_controller push:server];
        
    }else if (index == 1){
           change_card_controller *vc = [[change_card_controller alloc]init];
           [self.navigationController pushViewController:vc animated:YES];
    }else if (index == 2){
        
        if ([Single getInstance].use.bookFile){
            NSString *url = [NSString stringWithFormat:@"%@%@",ImgeUrl,[Single getInstance].use.bookFile.fileUrl];
            url = [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

            [[UIApplication sharedApplication] openURL: [NSURL URLWithString:url] options: @{} completionHandler: nil];

        }else{
            
            [Alert showMessage:@"暂无开户申请书"];
            
        }

    }else if (index == 3){
        
    }else if (index == 4){
        change_password_controller *vc = [[change_password_controller alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (index == 5){
        
        loginOut *server = [[loginOut alloc]init];
        [server networkRequest];
        
        
        
    }
    
    
    
    
}


@end
