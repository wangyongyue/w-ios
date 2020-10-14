//
//  goods_add_input_time_cell.m
//  kuai
//
//  Created by apple on 2020/9/2.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_input_time_cell.h"
@interface goods_add_input_time_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)field_default *field;
@property(nonatomic,strong)UIView *lineView;
@property(nonatomic,strong)UIImageView *todo;


@end

@implementation goods_add_input_time_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentView.backgroundColor = white_color;
        
        
        self.label = [[label_default alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.offset(12);

        }];
        
        self.field = [[field_default alloc]init];
        [self.contentView addSubview:self.field];
        [self.field mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(self.label.mas_right).offset(12);
            make.top.offset(12);
            make.width.offset(ScreenWidth - 120);

        }];
        self.todo = [[UIImageView alloc]init];
               [self.contentView addSubview:self.todo];
               self.todo.image = [UIImage imageNamed:@"my_more"];
               [self.todo mas_makeConstraints:^(MASConstraintMaker *make) {
                   
                   make.right.offset(-12);
                   make.top.offset(12);
               }];
        
        self.lineView = [[view_line alloc]init];
        [self.contentView addSubview:self.lineView];
        [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.bottom.offset(0);
            make.height.offset(0.6);
            make.left.offset(0);
            make.right.offset(0);


        }];
        
       
        
    }
    return self;
}
- (void)clickTap{
    
    
}
- (void)loadModel:(id)model{
    
    goods_add_input_time *m = (goods_add_input_time *)model;
    self.label.text = m.title;
    self.field.text = m.input;
    self.field.placeholder = m.placeholder;
    self.field.isEdit = NO;
        
    __weak typeof(self) weakSelf = self;
    [self.field editBegin:^{
        
        [AlertTime show:m.input block:^(NSString *text) {
            
            m.input = text;
            weakSelf.field.text = text;
            
        }];
    }];
}

@end
@implementation goods_add_input_time
- (NSString *)identifier{ return NSStringFromClass([goods_add_input_time_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 50)];
}
+ (goods_add_input_time *)creat:(NSString *)title placeholder:(NSString *)placeholder input:(NSString *)input{
    
    goods_add_input_time *test = [[goods_add_input_time alloc]init];
    test.title = title;
    test.placeholder = placeholder;
    test.input = input;

    return test;
}

@end
