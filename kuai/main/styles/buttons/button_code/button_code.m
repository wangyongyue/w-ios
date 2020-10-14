//
//  button_code.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "button_code.h"
#import "Color.h"
@implementation button_code
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self setTitleColor:white_color forState: UIControlStateNormal];
        self.backgroundColor = blue_color;
        self.layer.cornerRadius = 15;
        self.layer.masksToBounds = YES;
        [self setTitle:@"获取验证码" forState:UIControlStateNormal];
        
    }
    return self;
}
- (void)backCode{
    
    [self setTitle:@"获取验证码" forState:UIControlStateNormal];
    [self setBackgroundColor:blue_color];
    self.enabled = YES;
}
- (void)clickCode{
    if (self.enabled == NO) {
        return;
    }
    __block int timeout=60; //倒计时时间
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
    dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0); //每秒执行
    
    dispatch_source_set_event_handler(_timer, ^{
        if(timeout<=0){ //倒计时结束，关闭
            dispatch_source_cancel(self->_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
               
                [self setTitle:@"获取验证码" forState:UIControlStateNormal];
                [self setBackgroundColor:blue_color];
                self.enabled = YES;
            });
        }else{
            int seconds = timeout % 61;
            NSString *strTime = [NSString stringWithFormat:@"%.2d", seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示 根据自己需求设置
                [self setTitle:[NSString stringWithFormat:@"%@S",strTime] forState:UIControlStateNormal];
                [self setBackgroundColor:code_color];
                self.enabled = NO;
                
            });
            timeout--;
        }
    });
    dispatch_resume(_timer);
    
}

@end
