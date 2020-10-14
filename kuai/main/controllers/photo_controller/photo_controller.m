//
//  photo_controller.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//


#import "photo_controller.h"

@interface photo_controller ()

@end

@implementation photo_controller
- (void)uploadFinish:(FileBlock)block{
    
    self.block = block;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"相册";
    
    
    list_view *list = [[list_view alloc]init];
    [self.view addSubview:list];
    [list mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.bottom.offset(0);
        make.left.offset(0);
        make.right.offset(0);

    }];
    
    Photos *server = [[Photos alloc]init];
    list.server = server;
    [server networkRequest];
    [server uploadFinish:^(File *file) {
        self.block(file);
    }];
}



@end
