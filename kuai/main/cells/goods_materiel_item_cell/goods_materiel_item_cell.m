//
//  goods_materiel_item_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_materiel_item_cell.h"
#import "Header.h"
@interface goods_materiel_item_cell ()
@property(nonatomic,strong)UILabel *header;

@property(nonatomic,strong)UIView *bgView;


@end

@implementation goods_materiel_item_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
       self.bgView = [[view_fillet alloc]init];
         [self.contentView addSubview:self.bgView];
         
         
         
         self.header = [[label_default alloc]init];
         [self.bgView addSubview:self.header];
         
       
         [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
             
             make.top.offset(12);
             make.bottom.offset(-0);
             make.left.offset(12);
             make.right.offset(-12);

         }];
         [self.header mas_makeConstraints:^(MASConstraintMaker *make) {
             
             make.top.offset(12);
             make.left.offset(12);
             make.right.offset(-12);


         }];
        
         
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_materiel_item *m = (goods_materiel_item *)model;
    self.header.text = m.header;

}
@end
@implementation goods_materiel_item
- (NSString *)identifier{ return NSStringFromClass([goods_materiel_item_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 60)];
}

@end
