//
//  list_view.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "list_view.h"
#import "FlowLayout.h"
#import "Color.h"

@interface list_view ()

@end
@implementation list_view
- (instancetype)initWithFrame:(CGRect)frame

{
    FlowLayout *flowLayout = [[FlowLayout alloc]initWithScrollDirection:UICollectionViewScrollDirectionVertical];
    self = [super initWithFrame:frame collectionViewLayout:flowLayout];
    if (self) {
        
        self.backgroundColor = bg_color;
                
    }
    return self;
}

- (void)setServer:(Server *)server{
    
    _server = server;
    
//    self.array = self.server.array;
    self.array = server.array;

    __weak typeof(self) weakSelf = self;
    [_server successData:^{
        [weakSelf reload];
          }];
    
    [self tableIndex:^(NSInteger index) {
        [weakSelf reloadIndex:index];
    }];
    
}
- (void)reload{
    [self reloadData];

}
- (void)reloadIndex:(NSInteger)index{
    [self.server tableIndex:index];

}

@end
