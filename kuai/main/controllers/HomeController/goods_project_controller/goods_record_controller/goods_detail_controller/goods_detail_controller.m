
//
//  goods_detail_controller.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "goods_detail_controller.h"

@interface goods_detail_controller ()

@end

@implementation goods_detail_controller
+ (void)push:(Server *)server{
    
    goods_detail_controller *vc = [[goods_detail_controller alloc]init];
    vc.server = server;
    [Router push:vc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = [self.server navigationTitle];
    
    list_view *list = [[list_view alloc]init];
    [self.view addSubview:list];
    [list mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.bottom.offset(0);
        make.left.offset(0);
        make.right.offset(0);
        
    }];
    
    
    list.server = self.server;
    [self.server networkRequest];
}


@end
