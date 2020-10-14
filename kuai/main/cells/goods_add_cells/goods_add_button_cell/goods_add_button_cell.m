//
//  goods_add_button_cell.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_button_cell.h"
#import "Header.h"
@interface goods_add_button_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIImageView *imageView;

@end

@implementation goods_add_button_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentView.backgroundColor = blue_color;
        
        self.imageView = [[UIImageView alloc]init];
        [self.contentView addSubview:self.imageView];
        self.imageView.image = [UIImage imageNamed:@"add_blue"];
        [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.centerY.equalTo(self.contentView);
            make.left.offset(ScreenWidth/2 - 40);
        

        }];
                
        self.label = [[label_white alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.centerY.equalTo(self.contentView);
            make.left.equalTo(self.imageView.mas_right).offset(12);
            

        }];
        
        
        
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    goods_add_button *m = (goods_add_button *)model;
    self.label.text = m.title;

}
@end
@implementation goods_add_button
- (NSString *)identifier{ return NSStringFromClass([goods_add_button_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 40)];
}
+ (goods_add_button *)creat:(NSString *)title{
    
    goods_add_button *test = [[goods_add_button alloc]init];
    test.title = title;

    return test;
}
@end
