//
//  list_pull_down_view.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "list_pull_down_view.h"
#import <MJRefresh/MJRefresh.h>
#import "Alert.h"
@interface list_pull_down_view()

@property(nonatomic,strong)MJRefreshHeader *header;

@end
@implementation list_pull_down_view
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = mine_bg_color;
        self.alwaysBounceVertical = YES;

        self.header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refresh)];
        self.mj_header = self.header;
        
    }
    return self;
}
- (void)reload{
    
    [super reload];
    [self.header endRefreshing];
    
}
- (void)refresh{
    
    self.server.isRefresh = YES;
    [self.server networkRequest];

}
@end
