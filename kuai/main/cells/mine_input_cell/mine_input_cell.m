//
//  mine_input_cell.m
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//


#import "mine_input_cell.h"
@interface mine_input_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)field_default *field;

@end

@implementation mine_input_cell
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
    
    mine_input *m = (mine_input *)model;
    self.label.text = m.title;
    self.field.placeholder = m.placeholder;
    self.field.text = m.input;

    self.field.re = m.re;
    [self.field change:^(NSString *text) {
       
        m.input = text;

    }];
}
@end
@implementation mine_input
- (NSString *)identifier{ return NSStringFromClass([mine_input_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 60)];
}
+ (mine_input *)creat:(NSString *)title placeholder:(NSString *)placeholder{
    
    mine_input *test = [[mine_input alloc]init];
    test.title = title;
    test.placeholder = placeholder;

    return test;
}
+ (mine_input *)creat:(NSString *)title placeholder:(NSString *)placeholder re:(regular *)re{
    mine_input *test = [[mine_input alloc]init];
       test.title = title;
       test.placeholder = placeholder;
    test.re = re;

       return test;
    
}
+ (mine_input *)creat:(NSString *)title placeholder:(NSString *)placeholder input:(NSString *)input re:(regular *)re{
    
    mine_input *test = [[mine_input alloc]init];
    test.title = title;
    test.placeholder = placeholder;
    test.re = re;
    test.input = input;

    return test;
}
@end
