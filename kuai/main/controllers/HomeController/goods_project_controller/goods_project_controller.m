//
//  goods_project_controller.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "goods_project_controller.h"
@interface goods_project_controller ()

@end

@implementation goods_project_controller
+ (void)push:(Server *)server{
    
    goods_project_controller *vc = [[goods_project_controller alloc]init];
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
    
    
    UIButton *button = [[button_search alloc]init];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    [button addTarget:self action:@selector(rightClick) forControlEvents:UIControlEventTouchUpInside];
    

}

- (void)rightClick{
    
    
    [self.server searchItem];
}

@end
