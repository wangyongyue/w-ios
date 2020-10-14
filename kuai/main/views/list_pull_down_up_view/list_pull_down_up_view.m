//
//  list_pull_down_up_view.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "list_pull_down_up_view.h"
#import <MJRefresh/MJRefresh.h>
#import "Color.h"
#import "Alert.h"

@interface list_pull_down_up_view()

@property(nonatomic,strong)MJRefreshHeader *header;
@property(nonatomic,strong)MJRefreshFooter *footer;

@end
@implementation list_pull_down_up_view
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = mine_bg_color;
        self.alwaysBounceVertical = YES;

        self.header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refresh)];
        self.mj_header = self.header;
        
        self.footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(refreshFoot)];
        self.mj_footer = self.footer;
        [self.footer setHidden:YES];

          
    }
    return self;
}

- (void)reload{
    
    [super reload];
    [self.header endRefreshing];
    [self.footer endRefreshing];
    
    
    
    
    
    if (self.server.total == 0){
        
        [self.footer setHidden:YES];
    }else if (self.server.total <= [self.server limit]){
        [self.footer setHidden:YES];
        
    }else if (self.server.total == self.server.array.count){
        [self.footer setState:MJRefreshStateNoMoreData];
        
    }else if (self.server.array.count < self.server.total) {
        
        [self.footer setHidden:NO];

    }
    
}
- (void)refresh{
    
    self.server.isRefresh = YES;
    self.server.current = 1;
    [self.server networkRequest];    
   
}
- (void)refreshFoot{
    
    self.server.isRefresh = YES;
    self.server.current += 1;
    [self.server networkRequest];

}
@end
