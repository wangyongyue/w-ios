//
//  NavgationVC.m
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import "NavgationVC.h"
#import "Color.h"
@implementation NavgationVC
- (void)viewDidLoad{
    [super viewDidLoad];
 
    NSDictionary *navbarTitleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                                   [UIColor whiteColor],NSForegroundColorAttributeName,[UIFont systemFontOfSize:18],NSFontAttributeName,
                                                   nil];
    [self.navigationBar setTitleTextAttributes:navbarTitleTextAttributes];
    self.navigationBar.translucent=NO;
    self.navigationBar.barTintColor=blue_color;


    
}
@end
