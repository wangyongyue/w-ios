//
//  goods_add_todo_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_todo_cell.h"
#import "Header.h"
@interface goods_add_todo_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UILabel *label1;
@property(nonatomic,strong)UIView *lineView;

@end

@implementation goods_add_todo_cell
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
        
        self.label1 = [[label_default alloc]init];
        [self.contentView addSubview:self.label1];
        [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(self.label.mas_right).offset(12);
            make.top.offset(12);
            make.right.offset(-12);

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
- (void)loadModel:(id)model{
    
    goods_add_todo *m = (goods_add_todo *)model;
    self.label.text = m.title;
    self.label1.text = m.title1;

}
@end
@implementation goods_add_todo
- (NSString *)identifier{ return NSStringFromClass([goods_add_todo_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 50)];
}
+ (goods_add_todo *)creat:(NSString *)title title1:(NSString *)title1{
    
    goods_add_todo *test = [[goods_add_todo alloc]init];
    test.title = title;
    test.title1 = title1;

    return test;
}
@end
