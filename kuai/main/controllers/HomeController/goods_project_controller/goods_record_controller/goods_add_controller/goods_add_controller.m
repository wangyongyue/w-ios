//
//  goods_add_controller.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "goods_add_controller.h"

@interface goods_add_controller ()
@end

@implementation goods_add_controller
+ (void)push:(Server *)server{
    
    goods_add_controller *vc = [[goods_add_controller alloc]init];
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
    
     UIButton *button = [[button_blue_white alloc]init];
    [button setTitle:@"提交" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(Bottom);
        make.bottom.offset(0);
        make.left.offset(0);
        make.right.offset(0);
        
    }];
    [button addTarget:self action:@selector(commit) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)commit{
    
    [Alert showTitle:@"确定提交当前操作内容吗？" block:^{
        [self.server commit];

    }];
    
}

@end
