//
//  PlayVC.m
//  kuai
//
//  Created by apple on 2020/6/9.
//  Copyright © 2020 sui. All rights reserved.
//

#import "PlayVC.h"
#import <AVFoundation/AVFoundation.h>
#import "Video.h"
#import "Header.h"

@interface PlayVC ()
@property(nonatomic,strong)UIButton *saveButton;
@property(nonatomic,strong)UIButton *videoButton;
@property(nonatomic,strong)Video *player;


@end

@implementation PlayVC
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [self.player remove];
}
- (void)viewDidLoad{
    [super viewDidLoad];
    
    
    self.player = [[Video alloc]initWithFrame:self.view.bounds];
    self.player.array = self.array;
    self.player.url = self.url;
    [self.view addSubview:self.player];
    [self.player show];
    
    UIButton *button = [[UIButton alloc]init];
    [button setTitle:@"上传与发布" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(ScreenWidth/2, ScreenHeight - 50, ScreenWidth/2, 50);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(update) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *save = [[UIButton alloc]init];
    [save setTitle:@"保存不发布" forState:UIControlStateNormal];
    [save setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    save.frame = CGRectMake(0, ScreenHeight - 50, ScreenWidth/2, 50);
    [self.view addSubview:save];
    [save addTarget:self action:@selector(save) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    [back setImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    back.frame = CGRectMake(10, 30, 50, 50);
    [self.view addSubview:back];
    
}
- (void)back{
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)update{
    
    [self userDefaultSave];
    [self.navigationController popViewControllerAnimated:YES];

}
- (void)save{
    
    [self userDefaultSave];
    [self.navigationController popViewControllerAnimated:YES];

}
- (void)userDefaultSave{
    NSArray *array = (NSArray *)[[NSUserDefaults standardUserDefaults] objectForKey:VideoUrls];
    NSMutableArray *strs = [NSMutableArray array];
    if (array != nil) {
        [strs addObjectsFromArray:array];
    }
    [strs addObject:self.url];
    [[NSUserDefaults standardUserDefaults] setObject:strs forKey:VideoUrls];
    
    
    
    
    
    
    NSDictionary *datas = (NSDictionary *)[[NSUserDefaults standardUserDefaults] objectForKey:VideoData];
    NSMutableDictionary *newDatas = [NSMutableDictionary dictionary];
    if (datas != nil) {
        [newDatas setDictionary:datas];
    }
    NSMutableArray *dics = [NSMutableArray array];
    for (Behavior *be in self.array) {
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        dic[@"time"] = [NSNumber numberWithFloat:be.time];
        dic[@"startPoint"] = NSStringFromCGPoint(be.startPoint);
        dic[@"endPoint"] = NSStringFromCGPoint(be.endPoint);
        dic[@"class"] = NSStringFromClass([be class]);
        [dics addObject:dic];
    }
    newDatas[self.url] = dics;
    [[NSUserDefaults standardUserDefaults] setObject:newDatas forKey:VideoData];

}
@end
