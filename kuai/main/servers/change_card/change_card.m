//
//  change_card.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "change_card.h"
#import "Header.h"

@implementation change_card


- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    [self.array addObject:[mine_card creat:[Single getInstance].use.frontFile imageName:@"card_front"]];
    [self.array addObject:[mine_card creat:[Single getInstance].use.backFile  imageName:@"card_back"]];

    
}
- (void)tableIndex:(NSInteger)index{

}
- (void)commit{
    NSMutableArray *array = [NSMutableArray array];
    mine_card *file1 = self.array[0];
    mine_card *file2 = self.array[1];
    file1.frontFile.fileType = 2;
    file2.frontFile.fileType = 3;
    [array addObject:file1.frontFile];
    [array addObject:file2.frontFile];
    
    if (file1.frontFile == nil) {
        return [Alert showMessage:@"请上传身份证正面"];
    }
    if (file2.frontFile == nil) {
        return [Alert showMessage:@"请上传身份证反面"];
    }
   

}

@end

