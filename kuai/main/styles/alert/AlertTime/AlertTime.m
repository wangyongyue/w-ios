//
//  AlertTime.m
//  kuai
//
//  Created by apple on 2020/9/2.
//  Copyright © 2020 sui. All rights reserved.
//


#import "AlertTime.h"
@interface AlertTime ()
@property(nonatomic,copy)NSString *time;
@property(nonatomic,strong)UIDatePicker *picker;

@end
@implementation AlertTime

+ (void)show:(NSString *)time block:(TextBlock)block{
    
    AlertTime *view = [[AlertTime alloc]init];
    view.block = block;
    view.time = time;
    
    
    if (time.length == 10) {
        
        
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        fmt.dateFormat = @"yyyy-MM-dd";
        NSDate *date =  [fmt dateFromString:time];
        [view.picker setDate:date animated:YES];

    }else{
        
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        fmt.dateFormat = @"yyyy-MM-dd";
        NSString *dateString =  [fmt stringFromDate:[NSDate date]];
        view.time = dateString;
        
        [view.picker setDate:[NSDate date] animated:YES];
    }
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    view.backgroundColor= [UIColor clearColor];
    view.frame = window.bounds;
    [window addSubview:view];
    
   
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self removeFromSuperview];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
                
        self.backgroundColor = white_color;
        UIView *view = [[view_blue alloc]init];
        [self addSubview:view];
        
        UIButton *left = [[UIButton alloc]init];
        [left setTitle:@"取消" forState:UIControlStateNormal];
        [left setTitleColor:white_color forState:UIControlStateNormal];
        [view addSubview:left];
        
        UIButton *right = [[UIButton alloc]init];
        [right setTitle:@"确定" forState:UIControlStateNormal];
        [right setTitleColor:white_color forState:UIControlStateNormal];
        [view addSubview:right];
        
        self.picker = [[UIDatePicker alloc]init];
        [self addSubview:self.picker];
        self.picker.backgroundColor = white_color;
        self.picker.datePickerMode = UIDatePickerModeDate;
        NSLocale *local = [NSLocale localeWithLocaleIdentifier:@"zh"];
        self.picker.locale = local;
        [self.picker addTarget:self action:@selector(dateChange:) forControlEvents:UIControlEventValueChanged];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.offset(0);
            make.right.offset(0);
            make.bottom.offset(-220);
            make.height.offset(40);
        }];
        
        [left mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.offset(12);
            make.top.offset(0);
            make.bottom.offset(0);
        }];
        [right mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.right.offset(-12);
            make.top.offset(0);
            make.bottom.offset(0);
        }];
        
        [self.picker mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.offset(0);
            make.right.offset(0);
            make.top.equalTo(view.mas_bottom).offset(0);
            make.bottom.offset(0);
        }];
        
        [left addTarget:self action:@selector(leftCick) forControlEvents:UIControlEventTouchUpInside];
        [right addTarget:self action:@selector(rightCick) forControlEvents:UIControlEventTouchUpInside];

    }
    return self;
}
- (void)dateChange:(UIDatePicker *)picker{
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";
    NSString *dateString =  [fmt stringFromDate:picker.date];
    self.time = dateString;
}
- (void)leftCick{
   
    [self removeFromSuperview];
    
}

- (void)rightCick{
    
 
    NSLog(@"%@",self.time);
    self.block(self.time);
    [self removeFromSuperview];

    
}

@end
