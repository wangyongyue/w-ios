//
//  goods_project_item_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_project_item_cell.h"
#import "Header.h"
@interface goods_project_item_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UILabel *label1;
@property(nonatomic,strong)UIView *bgView;
@property(nonatomic,strong)UIView *lineView;

@end

@implementation goods_project_item_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.bgView = [[view_fillet alloc]init];
        [self.contentView addSubview:self.bgView];
        
        
        
        self.label = [[label_default alloc]init];
        [self.bgView addSubview:self.label];
        
        self.label1 = [[label_default alloc]init];
        [self.bgView addSubview:self.label1];
        
        
        self.lineView = [[view_line alloc]init];
        [self.bgView addSubview:self.lineView];
        
        [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.bottom.offset(-12);
            make.left.offset(12);
            make.right.offset(-12);

        }];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.offset(12);
            make.right.offset(-12);

        }];
        [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.label.mas_bottom).offset(12);
            make.height.offset(0.6);
            make.left.offset(0);
            make.right.offset(0);
            
        }];
               
        [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.lineView.mas_bottom).offset(12);
            make.left.offset(12);
            make.right.offset(-12);
            
        }];
       
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_project_item *m = (goods_project_item *)model;
    self.label.attributedText = m.title;
    self.label1.attributedText = m.title1;

}
@end
@implementation goods_project_item
- (NSString *)identifier{ return NSStringFromClass([goods_project_item_cell class]);}
- (NSValue *)size{
    
    
    CGFloat h = [view_h textWithWidth:ScreenWidth - 24 str:self.title1.string];
    if (h >= 30) {
        h = 50;
    }else{
        h = 30;
    }
    return [NSValue valueWithCGSize:CGSizeMake(1, 100 + h)];
}
+ (goods_project_item *)creat:(NSString *)title title1:(NSString *)title1{
    
    goods_project_item *test = [[goods_project_item alloc]init];
    test.title = title;
    test.title1 = title1;

    return test;
}
@end
