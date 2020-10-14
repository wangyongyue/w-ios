//
//  MainViewController.m
//  kuai
//
//  Created by apple on 2020/6/22.
//  Copyright © 2020 sui. All rights reserved.
//

#import "MainController.h"

@interface MainController ()

@end

@implementation MainController

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self.tabBarController.tabBar setHidden:NO];

}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.tabBarController.tabBar setHidden:YES];

}


- (void)viewDidLoad {
    [super viewDidLoad];
        
    CGRect rect = CGRectMake(0, Top - 20, ScreenWidth, ScreenHeight - Top + 20);
    list_view *list = [[list_view alloc]init];
    list.frame = rect;
    [self.view addSubview:list];
    
    Server *server = [[Server alloc]init];
    list.server = server;
    [server networkRequest];
    
}


@end
