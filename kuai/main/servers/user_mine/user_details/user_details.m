//
//  user_details.m
//  kuai
//
//  Created by apple on 2020/9/17.
//  Copyright © 2020 sui. All rights reserved.
//


#import "user_details.h"

#import "Header.h"


@implementation user_details
- (NSString *)url{
    return @"";
}


- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    
    [self.array addObject:[goods_add_LR creat:@"姓 名:" title1:@"name"]];
    [self.array addObject:[goods_add_LR creat:@"账 号:" title1:@"name"]];
    [self.array addObject:[goods_add_LR creat:@"单 位:" title1:@"name"]];
    [self.array addObject:[goods_add_LR creat:@"手机号:" title1:@"name"]];
    [self.array addObject:[goods_add_LR creat:@"邮 箱:" title1:@"name"]];

    
}
- (void)tableIndex:(NSInteger)index{
   
    
}
- (NSString *)navigationTitle{
    return @"个人信息";
}

@end
