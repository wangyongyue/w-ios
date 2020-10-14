//
//  Home.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Home.h"
#import "Header.h"

@implementation Home


- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    
//    [self.array addObject:[home_header creat:@""]];
    [self.array addObject:[home_content creat:@"header1" imageName:@"home_shou"]];
    [self.array addObject:[home_content creat:@"header2" imageName:@"home_cha"]];
    [self.array addObject:[home_content creat:@"header2" imageName:@"home_cha"]];
    [self.array addObject:[home_content creat:@"header2" imageName:@"home_cha"]];

}
- (void)tableIndex:(NSInteger)index{
    home_content *m = self.array[index];
    goods_project *server = [[goods_project alloc]init];
    [goods_project_controller push:server];
    
}


@end
