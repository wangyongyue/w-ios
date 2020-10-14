//
//  AlertDate.m
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import "AlertDate.h"
@interface AlertDate ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,copy)NSString *time;
@property(nonatomic,copy)NSString *year;
@property(nonatomic,copy)NSString *month;
@property(nonatomic,copy)NSString *day;
@property(nonatomic,copy)NSString *hour;
@property(nonatomic,copy)NSString *minute;

@property(nonatomic,strong)UIPickerView *picker;

@end
@implementation AlertDate

+ (void)show:(NSString *)time block:(TextBlock)block{
    
    AlertDate *view = [[AlertDate alloc]init];
    view.block = block;
    view.time = time;
    
    
    if (time.length == 0) {
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        fmt.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        NSString *dateString =  [fmt stringFromDate:[NSDate date]];
        
        view.time = dateString;
        NSArray *strs = [dateString componentsSeparatedByString:@" "];
        if (strs.count < 2) {
            return;
        }
        NSArray *dates = [strs.firstObject componentsSeparatedByString:@"-"];
        NSArray *times = [strs.lastObject componentsSeparatedByString:@":"];

        view.year = dates[0];
        view.month = dates[1];
        view.day = dates[2];

        view.hour = times[0];
        view.minute = times[1];
        
    }else{
        
        NSString *dateString = time;
        NSArray *strs = [dateString componentsSeparatedByString:@" "];
        if (strs.count < 2) {
            return;
        }
        NSArray *dates = [strs.firstObject componentsSeparatedByString:@"-"];
        NSArray *times = [strs.lastObject componentsSeparatedByString:@":"];

        view.year = dates[0];
        view.month = dates[1];
        view.day = dates[2];

        view.hour = times[0];
        view.minute = times[1];
        
        
    }
    
    
    
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    view.backgroundColor= [UIColor clearColor];
    view.frame = window.bounds;
    [window addSubview:view];
    
   
    
    [view selectRowInComponent];
    
}
- (void)selectRowInComponent{
    
    [self.array addObject:[self years]];
    [self.array addObject:[self months]];
    [self.array addObject:[self days:@""]];
    [self.array addObject:[self hours]];
    [self.array addObject:[self minutes]];
    
    [self.picker reloadAllComponents];

    
    


    for (int i = 0; i < [self years].count; i ++) {
        if ([[self years][i] isEqualToString:self.year]) {
            [self.picker selectRow:i inComponent:0 animated:YES];
            continue;
        }
    }
    
    for (int i = 0; i < [self months].count; i ++) {
        if ([[self months][i] isEqualToString:self.month]) {
            [self.picker selectRow:i inComponent:1 animated:YES];
            continue;
        }
    }
    
    for (int i = 0; i < [self days:@""].count; i ++) {
        if ([[self days:@""][i] isEqualToString:self.day]) {
            [self.picker selectRow:i inComponent:2 animated:YES];
            continue;
        }
    }
    
    for (int i = 0; i < [self hours].count; i ++) {
        if ([[self hours][i] isEqualToString:self.hour]) {
            [self.picker selectRow:i inComponent:3 animated:YES];
            continue;
        }
    }
    
    for (int i = 0; i < [self minutes].count; i ++) {
        if ([[self minutes][i] isEqualToString:self.minute]) {
            [self.picker selectRow:i inComponent:4 animated:YES];
            continue;
        }
    }
    


}
- (NSMutableArray *)array{
    if (_array == nil) {
        _array = [NSMutableArray array];
    }
    return _array;
}
- (NSMutableArray *)years{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 2010; i < 2200; i ++) {
        [array addObject:[NSString stringWithFormat:@"%d",i]];
    }
    return array;
}
- (NSMutableArray *)months{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 1; i <= 12; i ++) {
        if (i > 9) {
            [array addObject:[NSString stringWithFormat:@"%d",i]];

        }else{
            [array addObject:[NSString stringWithFormat:@"0%d",i]];
        }
    }
    return array;
}
- (NSMutableArray *)days:(NSString *)month{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 1; i <= 30; i ++) {
        if (i > 9) {
            [array addObject:[NSString stringWithFormat:@"%d",i]];
        }else{
            [array addObject:[NSString stringWithFormat:@"0%d",i]];
        }
    }
    return array;
}
- (NSMutableArray *)hours{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 24; i ++) {
        if (i > 9) {
            [array addObject:[NSString stringWithFormat:@"%d",i]];

        }else{
            [array addObject:[NSString stringWithFormat:@"0%d",i]];

        }


    }
    return array;
}
- (NSMutableArray *)minutes{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 60; i ++) {
        if (i > 9) {
            [array addObject:[NSString stringWithFormat:@"%d",i]];

        }else{
            [array addObject:[NSString stringWithFormat:@"0%d",i]];

        }

    }
    
    return array;
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
        
        UIPickerView *picker = [[UIPickerView alloc]init];
        [self addSubview:picker];
        picker.backgroundColor = white_color;
        picker.delegate = self;
        picker.dataSource = self;
      
        self.picker = picker;
        
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
        
        [picker mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.offset(0);
            make.right.offset(0);
            make.top.equalTo(view.mas_bottom).offset(0);
            make.bottom.offset(0);
        }];
        
        [left addTarget:self action:@selector(leftCick) forControlEvents:UIControlEventTouchUpInside];
        [right addTarget:self action:@selector(rightCick) forControlEvents:UIControlEventTouchUpInside];

        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(leftCick)];
        [self addGestureRecognizer:tap];
    }
    return self;
}

- (void)dateChange:(UIDatePicker *)picker{
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd HH::mm::ss";
    NSString *dateString =  [fmt stringFromDate:picker.date];
    
    
}
- (void)leftCick{
   
    [self removeFromSuperview];
    
}

- (void)rightCick{
    
    self.time = [NSString stringWithFormat:@"%@-%@-%@ %@:%@:00",self.year,self.month,self.day,self.hour,self.minute];
    NSLog(@"%@",self.time);
    self.block(self.time);
    [self removeFromSuperview];

    
}
#pragma mark - dataSouce
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return self.array.count;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.array[component] count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger) row forComponent:(NSInteger)component {
    return self.array[component][row];
}
#pragma mark - delegate
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSString *selFood = self.array[component][row];
    NSLog(@"%@", selFood);
    switch (component) {
        case 0:
            self.year = selFood;
            break;
        case 1:
            self.month = selFood;
            break;
        case 2:
            self.day = selFood;
            break;
        case 3:
            self.hour = selFood;
            break;
        case 4:
            self.minute = selFood;
            break;
            
        default:
            break;
    }
   
}


@end
