//
//  HomeController.m
//  kuai
//
//  Created by wangyongyue on 2020/7/8.
//  Copyright © 2020 sui. All rights reserved.
//

#import "HomeController.h"
#import "CameraVC.h"
#import "Router.h"
#import "Home.h"
@interface HomeController ()

@end
@implementation HomeController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.navigationItem.title = @"sdf";
    
    UIButton *right = [UIButton buttonWithType:UIButtonTypeSystem];
    [right setTitle:@"camera" forState:UIControlStateNormal];
    [right setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [right addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
    right.frame = CGRectMake(0, 0, 40, 40);
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:right];
    self.navigationItem.rightBarButtonItem  = item;
    
    
//    CGRect rect = CGRectMake(0, Top - 20, ScreenWidth, ScreenHeight - Top + 20);
    list_view *list = [[list_view alloc]init];
    [self.view addSubview:list];
    [list mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset( - 20);
        make.bottom.offset(-Top - 20);
        make.left.offset(0);
        make.right.offset(0);

    }];
    
    Server *server = [[Home alloc]init];
    list.server = server;
    [server networkRequest];
    
        
}

- (void)onClick{
    
    CameraVC *vc = [[CameraVC alloc]init];
    [Router push:vc];
    
}

@end
