//
//  goods_state_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_state_cell.h"
#import "Header.h"
@interface goods_state_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIView *bgView;
@property(nonatomic,strong)UILabel *statelabel;

@end

@implementation goods_state_cell
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
          self.label = [[label_text_blue alloc]init];
          [self.bgView addSubview:self.label];
        
          [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
              
              make.top.offset(5);
              make.left.offset(12);
              
          }];
          
          self.statelabel = [[label_text_blue alloc]init];
          [self.bgView addSubview:self.statelabel];
          [self.statelabel mas_makeConstraints:^(MASConstraintMaker *make) {
              
              make.right.offset(-12);
              make.top.offset(5);

          }];
                
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    
    
}
- (void)loadModel:(id)model{
    
    goods_state *m = (goods_state *)model;
    self.label.text = m.title;
    self.statelabel.text = m.title1;

}
@end
@implementation goods_state
- (NSString *)identifier{ return NSStringFromClass([goods_state_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 40)];
}
+ (goods_state *)creat:(NSString *)title title1:(NSString *)title1{
    
    goods_state *test = [[goods_state alloc]init];
    test.title = title;
    test.title1 = title1;
    return test;
}
@end
