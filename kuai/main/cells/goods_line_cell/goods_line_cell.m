//
//  goods_line_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//

#import "goods_line_cell.h"
#import "Header.h"
@interface goods_line_cell ()
@property(nonatomic,strong)UIView *line;

@end

@implementation goods_line_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.line = [[view_line alloc]init];
        [self.contentView addSubview:self.line];
        [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(0);
            make.left.offset(0);
            make.right.offset(0);
            make.height.offset(0.6);

        }];
        
       
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_line *m = (goods_line *)model;

}
@end
@implementation goods_line
- (NSString *)identifier{ return NSStringFromClass([goods_line_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 1)];
}
+ (goods_line *)creat{
    
    goods_line *test = [[goods_line alloc]init];

    return test;
}
@end
