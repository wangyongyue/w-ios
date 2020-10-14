//
//  conroller_back.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "controller_back.h"
#import "Header.h"
@interface controller_back ()

@end

@implementation controller_back
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.tabBarController.tabBar setHidden:YES];
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[button_back alloc]init];
    [button addTarget:self action:@selector(backClick) forControlEvents: UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    
}

- (void)backClick{
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
