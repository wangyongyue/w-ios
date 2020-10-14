//
//  goods_project_search_controller.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "goods_project_search_controller.h"

@interface goods_project_search_controller ()

@end

@implementation goods_project_search_controller
+ (void)push:(Server *)server{
    
    goods_project_search_controller *vc = [[goods_project_search_controller alloc]init];
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
    
    self.field.placeholder = [self.server searchPlaceholder];
}
- (void)searchClick{
    
    if (self.field.text.length == 0) {
        return [Alert showMessage:[self.server searchPlaceholder]];
    }
    
    
    [self.server setValue:self.field.text forKey:@"search"];
    [self.server networkRequest];
}


@end
