//
//  goods_add_header_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_header_cell.h"
#import "Header.h"
@interface goods_add_header_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIView *view;
@property(nonatomic,strong)UIView *lineView;

@end

@implementation goods_add_header_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentView.backgroundColor = white_color;
        
        
        
        
        self.view = [[view_blue alloc]init];
        [self.contentView addSubview:self.view];
        [self.view mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.offset(12);
            make.top.offset(10);
            make.height.offset(30);
            make.width.offset(2);

        }];
        
        self.label = [[label_text_blue alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.equalTo(self.view).offset(12);

        }];
        
        self.lineView = [[view_line alloc]init];
        [self.contentView addSubview:self.lineView];
        [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.bottom.offset(0);
            make.height.offset(0.6);
            make.left.offset(0);
            make.right.offset(0);


        }];
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_add_header *m = (goods_add_header *)model;
    self.label.text = m.title;

}
@end
@implementation goods_add_header
- (NSString *)identifier{ return NSStringFromClass([goods_add_header_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 50)];
}
+ (goods_add_header *)creat:(NSString *)title{
    
    goods_add_header *test = [[goods_add_header alloc]init];
    test.title = title;

    return test;
}
@end
