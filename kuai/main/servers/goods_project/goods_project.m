//
//  goods_project.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "goods_project.h"
#import "Header.h"

@interface goods_project ()<server_navigation_protocol,controller_search_protocol>
@property(nonatomic,copy)NSString *search;

@end
@implementation goods_project
- (NSString *)url{

    return @"";
}
- (NSMutableDictionary *)body{
    
    NSMutableDictionary *dic = [super body];
    dic[@"current"] = [NSNumber numberWithInteger:self.current];
    dic[@"search"] = self.search;
    dic[@"limit"] = [NSNumber numberWithInteger:[self limit]];

    return dic;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.current = 1;
    }
    return self;
}
- (void)loadTableData:(NSDictionary *)reponse{
           
    if (self.current == 1) {
        [self.array removeAllObjects];
    }
    NSArray *array = @[@"test",@"test",@"test",@"test",@"test"];
    for (NSString *str in array) {
        goods_project_item *item = [[goods_project_item alloc]init];
        
        item.title = [Attributed transBoldStr:@"header1:" currentStr:str];
        item.title1 = [Attributed transBoldStr:@"header1:" currentStr:str];

        [self.array addObject:item];

    }
 
    
}
- (void)tableIndex:(NSInteger)index{
    goods_project_item *item = self.array[index];
    goods_record *server = [[goods_record alloc]init];
    [controller_normal push:server];
}


- (void)searchItem{
    
    goods_project *server = [[goods_project alloc]init];
    [controller_search push:server];
}
- (NSArray *)navigationRightItems{
    
    UIButton *button = [[button_search alloc]init];
    [button addTarget:self action:@selector(searchItem) forControlEvents:UIControlEventTouchUpInside];
    return @[button];
}


- (NSString *)navigationTitle{
    return @"列表";
}
- (NSString *)searchPlaceholder{
    
    return @"请输入内容";

}
- (void)searchContent:(NSString *)string{
    
    self.search  = string;
}
@end
