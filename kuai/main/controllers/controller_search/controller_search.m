//
//  controller_search.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "controller_search.h"
#import "field_search.h"

@interface controller_search ()
@property(nonatomic,strong)UITextField *field;
@end

@implementation controller_search
+ (void)push:(Server<controller_search_protocol> *)server{
    
    controller_search *vc = [[controller_search alloc]init];
    vc.server = server;
    [Router push:vc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
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
