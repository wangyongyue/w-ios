//
//  ViewController.m
//  kuai
//
//  Created by apple on 2020/6/9.
//  Copyright © 2020 sui. All rights reserved.
//

#import "ViewController.h"
#import "CameraVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [[UIButton alloc]init];
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 100, 100, 50);
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    
}
- (void)click{
    
    NSLog(@"点击");
    CameraVC *vc = [[CameraVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
