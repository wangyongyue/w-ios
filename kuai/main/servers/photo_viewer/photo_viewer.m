//
//  photo_viewer.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "photo_viewer.h"
#import "Header.h"

@implementation photo_viewer


- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    for (File *file in self.files) {
        
        photo_viewer_item *item = [[photo_viewer_item alloc]init];
        item.url = file.fileUrl;
        [self.array addObject:item];
    }

    
}
- (void)tableIndex:(NSInteger)index{
    
    
    [Router pop];
    
}


@end
