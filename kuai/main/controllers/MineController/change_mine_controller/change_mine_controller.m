//
//  chang_face_controller.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "change_mine_controller.h"
#import "Header.h"

@interface change_mine_controller ()

@end

@implementation change_mine_controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"编辑个人信息";
    
    list_view *list = [[list_view alloc]init];
    [self.view addSubview:list];
    [list mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(Top - 20);
        make.bottom.offset(-Top - 20);
        make.left.offset(0);
        make.right.offset(0);

    }];
    
    Server *server = [[change_mine alloc]init];
    list.server = server;
    [server networkRequest];
    
    
}


@end
