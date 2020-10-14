//
//  choice_server.m
//  kuai
//
//  Created by apple on 2020/9/2.
//  Copyright © 2020 sui. All rights reserved.
//

#import "choice_server.h"
#import "Header.h"

@interface choice_server()
@property(nonatomic,copy)ReloadBlock switchBlock;

@end
@implementation choice_server

- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    [self.array addObject:[login_face_title creat:@"本次登录将拍摄"]];
    [self.array addObject:[login_face_title creat:@"本次登录将拍摄"]];
    [self.array addObject:[login_face_title creat:@"本次登录将拍摄"]];
    [self.array addObject:[login_face_title creat:@"本次登录将拍摄"]];
    [self.array addObject:[login_face_title creat:@"本次登录将拍摄"]];
    [self.array addObject:[login_face_title creat:@"本次登录将拍摄"]];

    
}
- (void)tableIndex:(NSInteger)index{
    
    self.selObj = self.array[index];
    
}


@end
