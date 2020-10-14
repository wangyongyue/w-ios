//
//  goods_title_group_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//

#import "goods_title_group_cell.h"
#import "Header.h"
@interface goods_title_group_cell ()
@property(nonatomic,strong)UILabel *label;
@end

@implementation goods_title_group_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.label.backgroundColor = clear_color;
        self.label = [[UILabel alloc]init];
        [self.contentView addSubview:self.label];
        self.label.textAlignment = NSTextAlignmentCenter;
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.bottom.offset(-12);
            make.left.offset(0);
            make.right.offset(0);

        }];
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_title_group *m = (goods_title_group *)model;
    self.label.text = m.title;
}
@end
@implementation goods_title_group
- (NSString *)identifier{ return NSStringFromClass([goods_title_group_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 50)];
}
+ (goods_title_group *)creat:(NSString *)title{
    
    goods_title_group *test = [[goods_title_group alloc]init];
    test.title = title;
    return test;
}
@end
