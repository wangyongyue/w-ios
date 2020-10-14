//
//  goods_subTitle_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_subTitle_cell.h"
#import "Header.h"
@interface goods_subTitle_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UILabel *label1;
@property(nonatomic,strong)UIView *bgView;

@end

@implementation goods_subTitle_cell
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
            make.bottom.offset(-0);

        }];
        self.label = [[label_bold alloc]init];
        [self.bgView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(5);
            make.left.offset(12);
            
        }];
        
        self.label1 = [[label_default alloc]init];
        [self.bgView addSubview:self.label1];
        [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(self.label.mas_right).offset(5);
            make.top.offset(5);
            make.right.offset(-12);
            
        }];
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_subTitle *m = (goods_subTitle *)model;
    self.label.text = m.title;
    self.label1.text = m.title1;

}
@end
@implementation goods_subTitle
- (NSString *)identifier{ return NSStringFromClass([goods_subTitle_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 40)];
}
+ (goods_subTitle *)creat:(NSString *)title title1:(NSString *)title1{
    
    goods_subTitle *test = [[goods_subTitle alloc]init];
    test.title = title;
    test.title1 = title1;
    return test;
}
@end
