//
//  Alert.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Alert.h"
#import "Header.h"
@implementation Alert

+ (void)loading{
    
    
    dispatch_async(dispatch_get_main_queue(), ^{
        UIView *view = [[Alert alloc]init];
        
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        view.backgroundColor= [UIColor clearColor];
        view.frame = window.bounds;
        [window addSubview:view];
        
        UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyleGray)];
        [view addSubview:activityIndicator];
        activityIndicator.color = alert_color;
        activityIndicator.backgroundColor = clear_color;
        activityIndicator.hidesWhenStopped = NO;
        [activityIndicator startAnimating];
        
     
        [activityIndicator mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(view);
            make.width.offset(150);
            make.height.offset(150);

        }];
        
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            
//            [view removeFromSuperview];
//            
//        });
    
        
    });
    
    
    
}
+ (void)dismiss{
    dispatch_async(dispatch_get_main_queue(), ^{

        UIWindow *window = [UIApplication sharedApplication].keyWindow;
           for (UIView *sub in window.subviews) {
               if ([sub isKindOfClass:[Alert class]]) {
                   [sub removeFromSuperview];

               }
           }
           
    });
   
}
+ (void)loading:(NSString *)string{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if (string.length <= 0) {
            return;
        }
        UIView *view = [[Alert alloc]init];
        
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        view.backgroundColor= [UIColor clearColor];
        view.frame = window.bounds;
        [window addSubview:view];
                       
        UILabel *resultsLabel = [[UILabel alloc]init];
        resultsLabel.text = string;
        resultsLabel.textColor = [UIColor whiteColor];
        resultsLabel.textAlignment = NSTextAlignmentCenter;
        resultsLabel.backgroundColor = alert_color;
        resultsLabel.font = [UIFont systemFontOfSize:15];
        resultsLabel.numberOfLines = 0;
        [view addSubview:resultsLabel];
        resultsLabel.layer.cornerRadius = 6;
        resultsLabel.layer.masksToBounds = YES;
        [resultsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(view.mas_centerY).offset(- 50);
            make.left.offset(100);
            make.right.offset(-100);
            make.height.offset(60);
            
        }];
        
        
    });
    
}
+ (void)showMessage:(NSString *)string{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if (string.length <= 0) {
            return;
        }
        UIView *view = [[UIView alloc]init];
        
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        view.backgroundColor= [UIColor clearColor];
        view.frame = window.bounds;
        [window addSubview:view];
                       
        UILabel *resultsLabel = [[UILabel alloc]init];
        resultsLabel.text = string;
        resultsLabel.textColor = [UIColor whiteColor];
        resultsLabel.textAlignment = NSTextAlignmentCenter;
        resultsLabel.backgroundColor = alert_color;
        resultsLabel.font = [UIFont systemFontOfSize:15];
        resultsLabel.numberOfLines = 0;
        [view addSubview:resultsLabel];
        resultsLabel.layer.cornerRadius = 12;
        resultsLabel.layer.masksToBounds = YES;
        [resultsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(view.mas_centerY).offset(- 50);
            make.left.offset(100);
            make.right.offset(-100);
            make.height.offset(60);

        }];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [view removeFromSuperview];
            
        });
        
    });
    
    
}
+ (void)photos:(void(^)(NSInteger index))block{
    
    UIAlertController* alert;
    
    if ([Alert getIsIpad]) {
        
        alert = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleAlert];
    }else{
        
        alert = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
        
    }
    
    
    UIAlertAction* photoAction = [UIAlertAction actionWithTitle:@"相册" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        block(1);
        
        
    }];
    
    
    UIAlertAction* deleteAction = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        block(0);
        
        
    }];
    
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {
        
    }];
    [alert addAction:deleteAction];
    [alert addAction:photoAction];
    [alert addAction:cancelAction];
    
    if ([Alert getIsIpad]) {
        
        UIPopoverPresentationController *popPresenter = [alert popoverPresentationController];
        popPresenter.sourceView = [Router navigationController].viewControllers.lastObject.view; // 这就是挂靠的对象
        
        CGRect rect = CGRectMake(0, 0, ScreenWidth, ScreenHeight);
        
        popPresenter.sourceRect = rect;
    }
    
    [[Router navigationController].viewControllers.lastObject presentViewController:alert animated:YES completion:nil];
    
    
    
    
}
+ (void)showTitle:(NSString *)string block:(void(^)(void))block{
    
    
    //显示弹出框列表选择
      UIAlertController* alert;
      
      alert = [UIAlertController alertControllerWithTitle:@"" message:string preferredStyle:UIAlertControllerStyleAlert];
      
      UIAlertAction* deleteAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
          block();
          
      }];
      UIAlertAction* saveAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {
         
      }];
    
      [alert addAction:saveAction];
      [alert addAction:deleteAction];

     
      [[Router navigationController] presentViewController:alert animated:YES completion:nil];

      
    
    
    
}
+ (BOOL)getIsIpad

{
    
    NSString *deviceType = [UIDevice currentDevice].model;
    if([deviceType isEqualToString:@"iPhone"]) {
        
        //iPhone
        
        return NO;
        
    }
    
    else if([deviceType isEqualToString:@"iPod touch"]) {
        
        //iPod Touch
        
        return NO;
        
    }
    
    else if([deviceType isEqualToString:@"iPad"]) {
        
        //iPad
        
        return YES;
        
    }
    
    return NO;
    
}
@end
