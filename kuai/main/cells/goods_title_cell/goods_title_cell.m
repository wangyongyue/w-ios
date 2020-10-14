//
//  goods_title_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_title_cell.h"
#import "Header.h"
@interface goods_title_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UILabel *label1;

@end

@implementation goods_title_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentView.backgroundColor = white_color;
        self.label = [[label_bold alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.offset(12);

        }];
        
        self.label1 = [[label_default_all alloc]init];
        [self.contentView addSubview:self.label1];
        [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(self.label.mas_right).offset(12);
            make.top.offset(12);
            make.right.offset(-12);

        }];
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_title *m = (goods_title *)model;
    self.label.text = m.title;
    self.label1.text = m.title1;
    
    

}
@end
@implementation goods_title
- (NSString *)identifier{ return NSStringFromClass([goods_title_cell class]);}
- (NSValue *)size{
    
    int h = [view_h textSize:self.title1];
    return [NSValue valueWithCGSize:CGSizeMake(1, 30 + h)];
}
+ (goods_title *)creat:(NSString *)title title1:(NSString *)title1{
    
    goods_title *test = [[goods_title alloc]init];
    test.title = title;
    test.title1 = title1;

    return test;
}
@end
