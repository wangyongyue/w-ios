//
//  goods_add_line_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_line_cell.h"
#import "Header.h"
@interface goods_add_line_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UILabel *label1;
@property(nonatomic,strong)UIView *lineView;

@end

@implementation goods_add_line_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentView.backgroundColor = gray_l_color;
                
    }
    return self;
}
- (void)loadModel:(id)model{
    
   

}
@end
@implementation goods_add_line
- (NSString *)identifier{ return NSStringFromClass([goods_add_line_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 15)];
}
+ (goods_add_line *)creat{
    
    goods_add_line *test = [[goods_add_line alloc]init];
    return test;
}
@end
