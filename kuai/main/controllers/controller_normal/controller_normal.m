//
//  controller_normal.m
//  kuai
//
//  Created by apple on 2020/10/15.
//  Copyright © 2020 sui. All rights reserved.
//


#import "controller_normal.h"
@interface controller_normal ()

@end

@implementation controller_normal
+ (void)push:(Server *)server{
    
    controller_normal *vc = [[controller_normal alloc]init];
    vc.server = server;
    [Router push:vc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = [self.server navigationTitle];
    
    list_pull_down_up_view *list = [[list_pull_down_up_view alloc]init];
    [self.view addSubview:list];
    [list mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.bottom.offset(0);
        make.left.offset(0);
        make.right.offset(0);

    }];
    
    list.server = self.server;
    [self.server networkRequest];
    
    NSMutableArray *items = [NSMutableArray array];
    for (UIView *view in [self.server navigationRightItems]) {
        [items addObject:[[UIBarButtonItem alloc]initWithCustomView:view]];
    }
    if (items.count > 0) {
        
        self.navigationItem.rightBarButtonItems = items;
    }

}


@end
