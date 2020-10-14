//
//  LoginConroller.m
//  kuai
//
//  Created by apple on 2020/8/10.
//  Copyright © 2020 sui. All rights reserved.
//

#import "LoginConroller.h"
#import "Header.h"

@interface LoginConroller ()

@property(nonatomic,strong)list_view *list;
@property(nonatomic,assign)NSInteger isFace;
@property(nonatomic,strong)UIView *aView;



@end

@implementation LoginConroller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"人脸登录" forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.frame = CGRectMake(100, 100, 100, 50);
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button1 setTitle:@"人脸注册" forState:UIControlStateNormal];
    [self.view addSubview:button1];
    button1.frame = CGRectMake(100, 200, 100, 50);
    
    [button addTarget:self action:@selector(faceRe) forControlEvents:UIControlEventTouchUpInside];
    
    [button1 addTarget:self action:@selector(faceJian) forControlEvents:UIControlEventTouchUpInside];

    
    UIView *bgView = [[view_blue alloc]init];
    [self.view addSubview:bgView];
    bgView.frame = self.view.bounds;
        
    self.aView = [[view_default alloc]init];
    [self.view addSubview:self.aView];
    [self.aView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(80);
        make.left.offset(12);
        make.right.offset(-12);
        make.bottom.offset(-120);
        
    }];
        
    
    list_view *list = [[list_view alloc]init];
    [self.view addSubview:list];

    [list mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(120);
        make.left.offset(30);
        make.right.offset(-30);
        make.bottom.offset(-80);

    }];
    
    login_confi *server = [[login_confi alloc]init];
    list.server = server;
    [server networkRequest];
  
    
    self.list = list;
    
    
    self.aView.layer.cornerRadius = 15;
    self.aView.layer.masksToBounds = YES;
    
    
    self.list.layer.cornerRadius = 15;
    self.list.layer.masksToBounds = YES;
    
    
    
    [self.list setHidden:NO];
   
    
}





@end
