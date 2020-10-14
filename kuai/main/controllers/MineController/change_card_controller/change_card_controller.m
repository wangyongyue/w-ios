//
//  change_card_controller.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "change_card_controller.h"
#import "Header.h"

@interface change_card_controller ()
@property(nonatomic,strong)change_card *changeCard;
@end

@implementation change_card_controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"身份证";
    
    list_view *list = [[list_view alloc]init];
    [self.view addSubview:list];
    [list mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.bottom.offset(- 49);
        make.left.offset(0);
        make.right.offset(0);

    }];
    
    Server *server = [[change_card alloc]init];
    list.server = server;
    [server networkRequest];
    
    self.changeCard = server;
    
    UIButton *button = [[button_blue_white alloc]init];
    [button setTitle:@"提交" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(49);
        make.bottom.offset(0);
        make.left.offset(0);
        make.right.offset(0);

    }];
    [button addTarget:self action:@selector(commit) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)commit{
    
    [self.changeCard commit];
}

@end
