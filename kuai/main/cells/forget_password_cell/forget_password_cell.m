
//
//  forget_password_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "forget_password_cell.h"
#import "Header.h"
@interface forget_password_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)field_default *field;

@end

@implementation forget_password_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.label = [[UILabel alloc]init];
        [self.contentView addSubview:self.label];
        
        self.field = [[field_default alloc]init];
        [self.contentView addSubview:self.field];
        self.field.secureTextEntry = YES;
        
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.offset(12);
            
        }];
        
        [self.field mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.offset(100);
            make.right.offset(-12);
            
        }];
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    forget_password *m = (forget_password *)model;
    self.label.text = m.title;
    self.field.placeholder = m.placeholder;
    
    self.field.re = [[regular_password alloc]init];
    [self.field change:^(NSString *text) {
       
        m.input = text;
        
    }];
}
@end
@implementation forget_password
- (NSString *)identifier{ return NSStringFromClass([forget_password_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 50)];
}
+ (forget_password *)creat:(NSString *)title placeholder:(NSString *)placeholder
{
    
    forget_password *test = [[forget_password alloc]init];
    test.title = title;
    test.placeholder = placeholder;
    return test;
}
@end
