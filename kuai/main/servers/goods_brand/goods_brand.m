//
//  goods_brand.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "goods_brand.h"

#import "Header.h"

@implementation goods_brand
- (NSString *)url{

    return @"";
}
- (NSMutableDictionary *)body{
    
    NSMutableDictionary *dic = [super body];

    return dic;
}

- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    
    NSArray *array = @[@"test",@"test",@"test",@"test",@"test"];
    for (NSString *str in array) {
       goods_brand_item *item = [[goods_brand_item alloc]init];
        item.header = @"header:";
        item.headerTitle = str;
        item.middle = @"header:";
        item.middleTitle = str;
        item.footer = @"header:";
        item.footerTitle = str;

        [self.array addObject:item];


    }
   
    


    
}
- (void)tableIndex:(NSInteger)index{
    
    goods_brand_item *item = self.array[index];
      
    [self pop:item];

}
- (NSString *)searchPlaceholder{
    
    return @"请输入";
}
 
- (void)searchContent:(NSString *)string{
    
    NSMutableArray *array = [NSMutableArray array];
    for (goods_brand_item *item in self.array) {
        
        if ([item.headerTitle containsString:string]){
            [array addObject:item];
        }
    }
    [self.array removeAllObjects];
    [self.array addObjectsFromArray:array];
    self.reload();
    
}

@end

