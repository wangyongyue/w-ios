//
//  UIView+gesture.m
//  kuai
//
//  Created by apple on 2020/6/12.
//  Copyright © 2020 sui. All rights reserved.
//

#import "UIView+gesture.h"

@implementation UIView (gesture)
- (void)getTypeImage:(Behavior *)model{
    
    float x = model.startPoint.x - model.endPoint.x;
    float y = model.startPoint.y - model.endPoint.y;
    NSString *imgName;
    if ([model isKindOfClass:[BeSlide class]]) {
        imgName = @"up.png";

        if (x > 0 && x > y) {
            imgName = @"left.png";
        }else
        if (x < 0 && -x > y) {
            imgName = @"right.png";
        }else
        if (y > 0 && x < y) {
            imgName = @"up.png";
        }
        if (y < 0 && x < -y) {
            imgName = @"down.png";
        }
        
    }else if ([model isKindOfClass:[BeTap class]]) {
        
        imgName = @"tap.png";

    }
    
    UIImage *img = [UIImage imageNamed:imgName];
    UIImageView *imgView = [[UIImageView alloc]initWithImage:img];
    [self addSubview:imgView];
    imgView.frame = CGRectMake(0, 0, img.size.width, img.size.height);
    imgView.center = CGPointMake(model.startPoint.x - x/2, model.startPoint.y - y/2);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [imgView removeFromSuperview];
    });
  
}
- (UIButton *)getTypeButton:(Behavior *)model{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:button];
    
    float x = model.startPoint.x - model.endPoint.x;
    float y = model.startPoint.y - model.endPoint.y;
    NSString *imgName;
    if ([model isKindOfClass:[BeSlide class]]) {
        imgName = @"up.png";

        if (x > 0 && x > y) {
            imgName = @"left.png";
        }else
        if (x < 0 && -x > y) {
            imgName = @"right.png";
        }else
        if (y > 0 && x < y) {
            imgName = @"up.png";
        }
        if (y < 0 && x < -y) {
            imgName = @"down.png";
        }
        
        UIImage *hua = [UIImage imageNamed:imgName];
        [button setImage:hua forState:UIControlStateNormal];
        button.frame = CGRectMake(0, 0, hua.size.width, hua.size.height);
        button.center = CGPointMake(model.startPoint.x - x/2, model.startPoint.y - y/2);
        
    }else if ([model isKindOfClass:[BeTap class]]) {
        
        imgName = @"tap.png";
        UIImage *hua = [UIImage imageNamed:imgName];
        [button setImage:hua forState:UIControlStateNormal];
        button.frame = CGRectMake(0, 0, hua.size.width, hua.size.height);
        button.center = CGPointMake(model.startPoint.x, model.startPoint.y);
    }
    
    
    return button;
   
}

@end
