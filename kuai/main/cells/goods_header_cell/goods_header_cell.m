//
//  goods_header_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_header_cell.h"
#import "Header.h"
@interface goods_header_cell ()
@property(nonatomic,strong)UIView *view;
@end

@implementation goods_header_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.view = [[view_default alloc]init];
        [self.contentView addSubview:self.view];
        self.view.frame = CGRectMake(12, 0, ScreenWidth - 24, 20);
        
        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.view.bounds byRoundingCorners:UIRectCornerTopLeft|UIRectCornerTopRight cornerRadii:CGSizeMake(12, 12)];
        CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
        maskLayer.frame = self.view.bounds;
        maskLayer.path = maskPath.CGPath;
        self.view.layer.mask = maskLayer;
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
   
}
@end
@implementation goods_header
- (NSString *)identifier{ return NSStringFromClass([goods_header_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 20)];
}
+ (goods_header *)creat{
    goods_header *test = [[goods_header alloc]init];
    return test;
}
@end
