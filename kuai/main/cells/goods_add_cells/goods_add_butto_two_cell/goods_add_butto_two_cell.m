//
//  goods_add_butto_two_cell.m
//  kuai
//
//  Created by apple on 2020/9/4.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_butto_two_cell.h"
#import "Header.h"
@interface goods_add_butto_two_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UILabel *label1;
@property(nonatomic,strong)goods_add_butto_two *m;

@end

@implementation goods_add_butto_two_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentView.backgroundColor = white_color;
      
        self.label = [[label_blue alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(5);
            make.left.offset(20);
            make.width.offset(ScreenWidth/2 - 40);
            make.height.offset(40);


        }];
        
        self.label1 = [[label_blue alloc]init];
        [self.contentView addSubview:self.label1];
        [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(5);
            make.right.offset(-20);
            make.width.offset(ScreenWidth/2 - 40);
            make.height.offset(40);
            

        }];
                
    }
    return self;
}
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    UIView *view = [super hitTest:point withEvent:event];
    
    if (point.x < ScreenWidth/2) {
        self.m.rd = 1;
    }else{
        self.m.rd = 2;

    }
    return view;
}
- (void)loadModel:(id)model{
    
    goods_add_butto_two *m = (goods_add_butto_two *)model;
    self.label.text = m.left;
    self.label1.text = m.right;

    self.m = m;
}
@end
@implementation goods_add_butto_two
- (NSString *)identifier{ return NSStringFromClass([goods_add_butto_two_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 50)];
}
+ (goods_add_butto_two *)creat:(NSString *)left right:(NSString *)right{
    
    goods_add_butto_two *test = [[goods_add_butto_two alloc]init];
    test.left = left;
    test.right = right;

    return test;
}
@end
