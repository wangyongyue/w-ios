//
//  login_code_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "login_code_cell.h"
#import "Header.h"

@interface login_code_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)field_default *field;
@property(nonatomic,strong)button_code *button;

@end

@implementation login_code_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.label = [[UILabel alloc]init];
        [self.contentView addSubview:self.label];
        
        self.field = [[field_default alloc]init];
        [self.contentView addSubview:self.field];
        self.field.textAlignment = NSTextAlignmentLeft;
        self.field.backgroundColor = input_color;
        
        self.button = [[button_code alloc]init];
        [self.contentView addSubview:self.button];

        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.offset(12);
            
        }];
        self.field.leftView= [[UIView alloc]initWithFrame:CGRectMake(0, 0, 10, 40)];
        self.field.leftViewMode = UITextFieldViewModeAlways;
        [self.field mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.label.mas_bottom).offset(12);
            make.bottom.offset(-12);
            make.left.offset(12);
            make.right.offset(-12);
            make.height.offset(40);

        }];
        
        
        [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.centerY.equalTo(self.field);
            make.right.offset(-12);
            make.height.offset(30);
            make.width.offset(100);

        }];
        
        
        
    }
    return self;
}
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    UIView* view = [super hitTest:point withEvent:event];
    if ([view isKindOfClass:[UIButton class]]) {
        return self.contentView;
    }else if ([view isKindOfClass:[UITextField class]]) {
        return self.field;
    }
    return nil;
}
- (void)loadModel:(id)model{
    
    login_code *m = (login_code *)model;
    self.label.text = m.title;
    self.field.placeholder = m.placeholder;
    if (m.isCode) {
        [self.button clickCode];
    }else{
        [self.button backCode];
    }
    
    
    self.field.re = [[regular_code alloc]init];
    [self.field change:^(NSString *text) {
       
        m.input = text;

        
    }];

}
@end
@implementation login_code
- (NSString *)identifier{ return NSStringFromClass([login_code_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 90)];
}
+ (login_code *)creat:(NSString *)title placeholder:(NSString *)placeholder{
    
    login_code *test = [[login_code alloc]init];
    test.title = title;
    test.placeholder = placeholder;

    return test;
}
@end
