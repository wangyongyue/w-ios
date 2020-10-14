//
//  goods_add_unit_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_unit_cell.h"
#import "Header.h"
@interface goods_add_unit_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UILabel *labelRight;
@property(nonatomic,strong)UIView *lineView;
@property(nonatomic,strong)UILabel *labelUnit;

@end

@implementation goods_add_unit_cell
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
        
        self.labelRight = [[label_default alloc]init];
        [self.contentView addSubview:self.labelRight];
        [self.labelRight mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(self.label.mas_right).offset(12);
            make.top.offset(12);
            make.right.offset(-52);

        }];
        
        self.labelUnit = [[label_default alloc]init];
        [self.contentView addSubview:self.labelUnit];
        [self.labelUnit mas_makeConstraints:^(MASConstraintMaker *make) {
            
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
    
    goods_add_unit *m = (goods_add_unit *)model;
    self.label.text = m.left;
    self.labelRight.text = m.right;
    self.labelUnit.text = m.unit;

}
@end
@implementation goods_add_unit
- (NSString *)identifier{ return NSStringFromClass([goods_add_unit_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 50)];
}
+ (goods_add_unit *)creat:(NSString *)left right:(NSString *)right unit:(NSString *)unit{
    
    goods_add_unit *test = [[goods_add_unit alloc]init];
    test.right = right;
    test.unit = unit;
    test.left = left;

    return test;
}
@end
