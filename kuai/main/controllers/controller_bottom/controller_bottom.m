//
//  controller_bottom.m
//  kuai
//
//  Created by apple on 2020/10/15.
//  Copyright © 2020 sui. All rights reserved.
//


#import "controller_bottom.h"

@interface controller_bottom ()
@end

@implementation controller_bottom
+ (void)push:(Server<server_navigation_protocol,controller_bottom_protocol> *)server{
    
    controller_bottom *vc = [[controller_bottom alloc]init];
    vc.server = server;
    [Router push:vc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.navigationItem.title = [self.server navigationTitle];
    
    list_view *list = [[list_view alloc]init];
    [self.view addSubview:list];
    [list mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.bottom.offset(-Bottom);
        make.left.offset(0);
        make.right.offset(0);
        
    }];

    list.server = self.server;
    [self.server networkRequest];
    
    UIView *bottom = [self.server bottomItems];
    [self.view addSubview:bottom];
    [bottom mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(Bottom);
        make.bottom.offset(0);
        make.left.offset(0);
        make.right.offset(0);
        
    }];
   
    
}

@end
