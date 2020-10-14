//
//  list_horizontal_view.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//


#import "list_horizontal_view.h"
#import "FlowLayout.h"
#import "Color.h"

@interface list_horizontal_view ()

@end
@implementation list_horizontal_view
- (instancetype)initWithFrame:(CGRect)frame

{
    FlowLayout *flowLayout = [[FlowLayout alloc]initWithScrollDirection:UICollectionViewScrollDirectionHorizontal];
    self = [super initWithFrame:frame collectionViewLayout:flowLayout];
    if (self) {
        
        self.backgroundColor = [UIColor blackColor];
        self.bounces = NO;
                
    }
    return self;
}

- (void)setServer:(Server *)server{
    
    _server = server;
    
    __weak typeof(self) weakSelf = self;
    [_server successData:^{
        [weakSelf reload];
        
      
        
    }];
    
    [self tableIndex:^(NSInteger index) {
        [weakSelf reloadIndex:index];
    }];
    
}
- (void)reload{
    self.array = self.server.array;
    [self reloadData];
    

}
- (void)reloadIndex:(NSInteger)index{
    [self.server tableIndex:index];

}

@end
