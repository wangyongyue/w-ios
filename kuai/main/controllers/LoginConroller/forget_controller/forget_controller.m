//
//  forget_controller.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "forget_controller.h"
#import "Header.h"

@interface forget_controller ()

@end

@implementation forget_controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"忘记密码";
       
       list_view *list = [[list_view alloc]init];
       [self.view addSubview:list];
       [list mas_makeConstraints:^(MASConstraintMaker *make) {
           make.top.offset(Top - 20);
           make.bottom.offset(-Top - 20);
           make.left.offset(0);
           make.right.offset(0);

       }];
       
       Server *server = [[forget_confi alloc]init];
       list.server = server;
       [server networkRequest];
}


@end
