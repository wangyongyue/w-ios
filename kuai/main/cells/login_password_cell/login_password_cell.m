//
//  login_password_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "login_password_cell.h"
#import "Header.h"
@interface login_password_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)field_default *field;

@end

@implementation login_password_cell
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
        self.field.secureTextEntry = YES;
        
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
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    login_password *m = (login_password *)model;
    self.label.text = m.title;
    self.field.placeholder = m.placeholder;

    
    self.field.re = [[regular_password alloc]init];
    [self.field change:^(NSString *text) {
    
        m.input = text;

    }];
}
@end
@implementation login_password
- (NSString *)identifier{ return NSStringFromClass([login_password_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 90)];
}
+ (login_password *)creat:(NSString *)title placeholder:(NSString *)placeholder{
    
    login_password *test = [[login_password alloc]init];
    test.title = title;
    test.placeholder = placeholder;

    return test;
}
@end
