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
+ (void)push:(Server *)server{
    
    controller_search *vc = [[controller_search alloc]init];
    vc.server = server;
    [Router push:vc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *search = [[UIButton alloc]init];
    [search addTarget:self action:@selector(searchClick) forControlEvents: UIControlEventTouchUpInside];
    [search setTitle:@"搜索" forState:UIControlStateNormal];
    [search setTitleColor:white_color forState:UIControlStateNormal];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:search];
    
    self.field = [[field_search alloc]init];
    self.navigationItem.titleView = self.field;
 
    
}

- (void)searchClick{
    
    if (self.field.text.length == 0) {
        return [Alert showMessage:@"请输入搜索内容"];
    }
    [self.server searchContent:self.field.text];
    
}
@end
