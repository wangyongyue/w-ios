//
//  photo_viewer_controller.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "photo_viewer_controller.h"
#import "Header.h"

@interface photo_viewer_controller ()

@end

@implementation photo_viewer_controller

+ (void)push:(Server *)server{
    
    photo_viewer_controller *vc = [[photo_viewer_controller alloc]init];
    vc.server = server;
    [Router pushNotAnimated:vc];
    
    
    
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar setHidden:YES];

}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [self.navigationController.navigationBar setHidden:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    list_horizontal_view *list = [[list_horizontal_view alloc]init];
    [self.view addSubview:list];
    [list mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(-20);
        make.bottom.offset(0);
        make.left.offset(0);
        make.right.offset(0);

    }];
    
    list.pagingEnabled = YES;
    
//    Server *server = [[photo_viewer alloc]init];
    list.server = self.server;
    [self.server networkRequest];
    
    
    UIButton *button = [[button_back alloc]init];
    [button addTarget:self action:@selector(backClick) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(22);
        make.left.offset(22);
    }];
    
}

- (void)backClick{
    
    [self.navigationController popViewControllerAnimated:YES];
}


@end
