//
//  TabBarVC.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "TabBarVC.h"
#import "NavgationVC.h"
#import "ViewController.h"
#import "TabBar.h"
#import "HomeController.h"
#import "MineController.h"

@implementation TabBarVC
- (void)viewDidLoad{
    [super viewDidLoad];
   
//    [self.tabBar setBackgroundColor:[UIColor blackColor]];
    
    TabBar *bar = [[TabBar alloc]initWithFrame:self.tabBar.bounds];
    bar.backgroundColor = [UIColor whiteColor];
//    [self.tabBar addSubview:bar];
    [self setValue:bar forKey:@"tabBar"];
    [self createContrllrs];
    
    
}
- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    self.tabBar.backgroundImage = [[UIImage alloc]init];

    for (int i = 0;i < self.tabBar.subviews.count; i ++) {
        UIView *view = self.tabBar.subviews[i];
        if ([NSStringFromClass([view class]) isEqualToString:@"UILabel"]) {
            
//            [self.tabBar bringSubviewToFront:view];

        }

    }
    
}




- (void)addController:(UIViewController *)controller withTitle:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName {
    [self addChildViewController:controller];
    
}
- (void)createContrllrs{
    
    UIViewController *m1 = [[HomeController alloc]init];
    NavgationVC *home = [[NavgationVC alloc]initWithRootViewController:m1];
    [self addController:home withTitle:@"首页" imageName:@"" selectedImageName:@""];
 
    UIViewController *m3 = [[MineController alloc]init];
    NavgationVC *mine = [[NavgationVC alloc]initWithRootViewController:m3];
    [self addController:mine withTitle:@"我的" imageName:@"" selectedImageName:@""];
    
    
    
    
}



@end
