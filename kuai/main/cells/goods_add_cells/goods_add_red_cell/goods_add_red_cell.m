//
//  goods_add_red_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_red_cell.h"
#import "Header.h"
@interface goods_add_red_cell ()
@property(nonatomic,strong)UILabel *label;


@end

@implementation goods_add_red_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentView.backgroundColor = gray_l_color;
        
        
        self.label = [[label_default alloc]init];
        self.label.textColor = red_color;
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.offset(12);
            make.right.offset(-12);

        }];
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_add_red *m = (goods_add_red *)model;
    self.label.text = m.title;

}
@end
@implementation goods_add_red
- (NSString *)identifier{ return NSStringFromClass([goods_add_red_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 60)];
}
+ (goods_add_red *)creat:(NSString *)title{
    
    goods_add_red *test = [[goods_add_red alloc]init];
    test.title = title;

    return test;
}
@end
