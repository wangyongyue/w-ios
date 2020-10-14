//
//  goods_footer_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_footer_cell.h"
#import "Header.h"
@interface goods_footer_cell ()
@property(nonatomic,strong)UIView *view;
@end

@implementation goods_footer_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.view = [[view_default alloc]init];
        [self.contentView addSubview:self.view];
        self.view.frame = CGRectMake(12, 0, ScreenWidth - 24, 20);
                
        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.view.bounds byRoundingCorners:UIRectCornerBottomLeft|UIRectCornerBottomRight cornerRadii:CGSizeMake(12, 12)];
        CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
        maskLayer.frame = self.view.bounds;
        maskLayer.path = maskPath.CGPath;
        self.view.layer.mask = maskLayer;
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_footer *m = (goods_footer *)model;
}
@end
@implementation goods_footer
- (NSString *)identifier{ return NSStringFromClass([goods_footer_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 30)];
}
+ (goods_footer *)creat{
    
    goods_footer *test = [[goods_footer alloc]init];
    return test;
}
@end
