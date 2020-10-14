//
//  goods_model_item_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_model_item_cell.h"
#import "Header.h"
@interface goods_model_item_cell ()
@property(nonatomic,strong)UILabel *header;
@property(nonatomic,strong)UILabel *headerTitle;
@property(nonatomic,strong)UILabel *footer;
@property(nonatomic,strong)UILabel *footerTitle;

@property(nonatomic,strong)UIView *bgView;
@property(nonatomic,strong)UIView *lineView;

@end

@implementation goods_model_item_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.bgView = [[view_fillet alloc]init];
        [self.contentView addSubview:self.bgView];
        
        
        
        self.header = [[label_default alloc]init];
        [self.bgView addSubview:self.header];
        
        self.headerTitle = [[label_default alloc]init];
        [self.bgView addSubview:self.headerTitle];
        
        self.footer = [[label_default alloc]init];
        [self.bgView addSubview:self.footer];
        
        self.footerTitle = [[label_default alloc]init];
        [self.bgView addSubview:self.footerTitle];
        
        
        self.lineView = [[view_line alloc]init];
        [self.bgView addSubview:self.lineView];
        
        [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.bottom.offset(-0);
            make.left.offset(12);
            make.right.offset(-12);

        }];
        [self.header mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.offset(12);

        }];
        [self.headerTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.equalTo(self.header.mas_right).offset(12);

        }];
        [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.headerTitle.mas_bottom).offset(12);
            make.height.offset(0.6);
            make.left.offset(0);
            make.right.offset(0);
            
        }];
               
        [self.footer mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.lineView.mas_bottom).offset(12);
            make.left.offset(12);

        }];
        [self.footerTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.lineView.mas_bottom).offset(12);
            make.left.equalTo(self.footer.mas_right).offset(12);

        }];
       
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_model_item *m = (goods_model_item *)model;
    self.header.text = m.header;
    self.headerTitle.text = m.headerTitle;
    
    self.footer.text = m.footer;
    self.footerTitle.text = m.footerTitle;

}
@end
@implementation goods_model_item
- (NSString *)identifier{ return NSStringFromClass([goods_model_item_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 100)];
}

@end
