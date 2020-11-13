//
//  goods_record.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "goods_record.h"

#import "Header.h"

@implementation goods_record
- (NSString *)url{

    return @"";
}
- (NSMutableDictionary *)body{
    
    NSMutableDictionary *dic = [super body];
   
    return dic;
}
- (NSString *)navigationTitle{
    
    return @"列表";
}
- (NSArray *)navigationRightItems{
    
    UIButton *button = [[button_add alloc]init];
    [button addTarget:self action:@selector(addItem) forControlEvents:UIControlEventTouchUpInside];
    return @[button];
}
- (void)addItem{
   
    goods_add *server = [[goods_add alloc]init];
    [controller_bottom push:server];
    [server popBack:^(id  _Nonnull obj) {
       
        [self networkRequest];
    }];
   
}
- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    
    
    [self.array addObject:[goods_state creat:@"header" title1:@"header"]];
    [self.array addObject:[goods_subTitle creat:@"header:" title1:@"sdfsdf"]];
    [self.array addObject:[goods_subTitle creat:@"header:" title1:@"sdfsdf"]];
    [self.array addObject:[goods_footer creat]];
    

}

- (void)tableIndex:(NSInteger)index{
    if (index <= 5) {
        return;
    }
    NSObject *obj = self.array[index];
   if ([obj isKindOfClass:[goods_state class]]) {
        
        goods_detail *server = [[goods_detail alloc]init];
        [controller_normal push:server];
        
    }else if ([obj isKindOfClass:[goods_button class]]){
        
        goods_add *server = [[goods_add alloc]init];
        [controller_bottom push:server];
        [server popBack:^(id  _Nonnull obj) {
           
            [self networkRequest];
            
        }];
    }
    
    
    
}


@end

