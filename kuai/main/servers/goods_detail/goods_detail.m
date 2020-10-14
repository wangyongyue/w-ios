//
//  goods_detail.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "goods_detail.h"
#import "Header.h"

@implementation goods_detail
- (NSString *)url{

    return @"";
}
- (NSMutableDictionary *)body{
    
    NSMutableDictionary *dic = [super body];
    dic[@"id"] = [NSNumber numberWithInteger:self.id];
    return dic;
}
- (NSString *)navigationTitle{
    return @"详情";
}
- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    
    [self.array addObject:[goods_add_header creat:@"header"]];
    [self.array addObject:[goods_add_LR creat:@"header:" title1:@"test"]];
    [self.array addObject:[goods_add_LR creat:@"时间:" title1:@"test"]];
    [self.array addObject:[goods_add_header creat:@"照片"]];
    [self.array addObject:[goods_add_car creat:@"照片" right:@"照片" urlLeft:nil urlRight:nil isDetails:YES]];
    [self.array addObject:[goods_add_line creat]];
    [self.array addObject:[goods_add_header creat:@"照片"]];
    [self.array addObject:[goods_add_sign creat:@"照片" middle:@"照片" right:@"照片" urlLeft:nil urlMiddle:nil urlRight:nil isDetails:YES]];
    [self.array addObject:[goods_add_line creat]];
    
    [self.array addObject:[goods_add_header creat:@"header"]];
    [self.array addObject:[goods_add_collect creat:@"照片" urlLeft:nil isDetails:YES]];
    [self.array addObject:[goods_add_LR creat:@"header:" title1:@"test"]];

    [self.array addObject:[goods_add_seat creat]];
    [self.array addObject:[goods_add_LR creat:@"header:" title1:@"test"]];
    [self.array addObject:[goods_add_LR creat:@"时间:" title1:@"test"]];
    [self.array addObject:[goods_add_LR creat:@"日期:" title1:@"test"]];
    
    [self.array addObject:[goods_add_unit creat:@"header:" right:@"123" unit:@"元"]];

    [self.array addObject:[goods_add_line creat]];
    
    
    [self.array addObject:[goods_add_header creat:@"header"]];
    
    for (int i = 0; i < 2; i ++) {
        
        [self.array addObject:[goods_add_number creat:[NSString stringWithFormat:@"%d",i + 1] isDetails:YES]];
        [self.array addObject:[goods_add_LR creat:@"header:" title1:@"test"]];
        [self.array addObject:[goods_add_LR creat:@"header:" title1:@"test"]];
        [self.array addObject:[goods_add_LR creat:@"header:" title1:@"test"]];
        [self.array addObject:[goods_add_LR creat:@"header:" title1:@"test"]];
        [self.array addObject:[goods_add_LR creat:@"header:" title1:@"123"]];
        [self.array addObject:[goods_add_LR creat:@"header:" title1:@"123"]];
        

    }
    
  
    [self.array addObject:[goods_add_line creat]];


    
}
- (void)tableIndex:(NSInteger)index{
   
}


@end
