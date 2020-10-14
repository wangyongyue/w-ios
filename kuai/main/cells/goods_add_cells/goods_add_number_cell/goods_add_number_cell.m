//
//  goods_add_number_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_number_cell.h"
#import "Header.h"
@interface goods_add_number_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIView *lineView;
@property(nonatomic,strong)UIImageView *imageView;
@property(nonatomic,strong)UIImageView *deleteView;

@end

@implementation goods_add_number_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentView.backgroundColor = white_color;
        
        self.imageView = [[UIImageView alloc]init];
        [self.contentView addSubview:self.imageView];
        
        
        self.deleteView = [[UIImageView alloc]init];
        [self.contentView addSubview:self.deleteView];
        
        self.imageView.image = [UIImage imageNamed:@"left_blue"];
        self.deleteView.image = [UIImage imageNamed:@"delete"];
        
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;

        [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(0);
            make.left.offset(0);
            make.width.offset(40);
            make.height.offset(40);

        }];
        
        
        [self.deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.centerY.equalTo(self.imageView);
            make.right.offset(-12);
            make.width.offset(23);
            make.height.offset(23);

        }];
        
        self.label = [[label_white alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.centerY.equalTo(self.imageView);
            make.left.offset(6);

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
    
    goods_add_number *m = (goods_add_number *)model;
    self.label.text = m.title;
    
    if (m.isDetails) {
        
        [self.deleteView setHidden:YES];
    }else{
        [self.deleteView setHidden:NO];

    }

}
@end
@implementation goods_add_number
- (NSString *)identifier{ return NSStringFromClass([goods_add_number_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 40)];
}
+ (goods_add_number *)creat:(NSString *)title{
    
    goods_add_number *test = [[goods_add_number alloc]init];
    test.title = title;
    
    return test;
}
+ (goods_add_number *)creat:(NSString *)title isDetails:(BOOL)isDetails{
    
    goods_add_number *test = [[goods_add_number alloc]init];
    test.title = title;
    test.isDetails = isDetails;
    
    return test;
    
}
@end
