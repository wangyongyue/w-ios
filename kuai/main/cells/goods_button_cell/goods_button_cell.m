
//
//  goods_button_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_button_cell.h"
#import "Header.h"
@interface goods_button_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIView *bgView;

@end

@implementation goods_button_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.bgView = [[view_default alloc]init];
        [self.contentView addSubview:self.bgView];
        [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(0);
            make.left.offset(12);
            make.right.offset(-12);
            make.bottom.offset(0);

        }];
        
        self.label = [[label_blue alloc]init];
        [self.bgView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(0);
            make.bottom.offset(-0);
            make.left.offset(12);
            make.right.offset(-12);

        }];
        
        self.label.layer.cornerRadius = 12;
        self.label.layer.masksToBounds = YES;
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_button *m = (goods_button *)model;
    self.label.text = m.title;
}
@end
@implementation goods_button
- (NSString *)identifier{ return NSStringFromClass([goods_button_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 40)];
}
+ (goods_button *)creat:(NSString *)title{
    
    goods_button *test = [[goods_button alloc]init];
    test.title = title;
    return test;
}
@end
