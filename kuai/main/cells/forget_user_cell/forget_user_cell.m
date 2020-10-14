
//
//  forget_user_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "forget_user_cell.h"
#import "Header.h"
@interface forget_user_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)field_default *field;

@end

@implementation forget_user_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.label = [[UILabel alloc]init];
        [self.contentView addSubview:self.label];
        
        self.field = [[field_default alloc]init];
        [self.contentView addSubview:self.field];
        
        
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
    
    forget_user *m = (forget_user *)model;
    self.label.text = m.title;
    self.field.placeholder = m.placeholder;
    
    self.field.re = [[regular_phone alloc]init];
    [self.field change:^(NSString *text) {
       
        m.input = text;
        
    }];
}
@end
@implementation forget_user
- (NSString *)identifier{ return NSStringFromClass([forget_user_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 60)];
}
+ (forget_user *)creat:(NSString *)title placeholder:(NSString *)placeholder{
    
    forget_user *test = [[forget_user alloc]init];
    test.title = title;
    test.placeholder = placeholder;

    return test;
}
@end
