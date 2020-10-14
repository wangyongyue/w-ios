//
//  controller_search.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "controller_search.h"
#import "Header.h"
#import "field_search.h"

@interface controller_search ()
@end

@implementation controller_search

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[button_back alloc]init];
    [button addTarget:self action:@selector(backClick) forControlEvents: UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    
    
    
    UIButton *search = [[UIButton alloc]init];
    [search addTarget:self action:@selector(searchClick) forControlEvents: UIControlEventTouchUpInside];
    [search setTitle:@"搜索" forState:UIControlStateNormal];
    [search setTitleColor:white_color forState:UIControlStateNormal];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:search];
    
    self.field = [[field_search alloc]init];
    self.navigationItem.titleView = self.field;
 
    
}
- (void)backClick{
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)searchClick{
    
    if (self.field.text.length == 0) {
        return [Alert showMessage:@"请输入搜索内容"];
    }
    
}
@end
