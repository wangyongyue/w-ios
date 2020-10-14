//
//  mine_two_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "mine_two_cell.h"
#import "Header.h"
@interface mine_two_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UILabel *label1;
@property(nonatomic,strong)UIImageView *imageView;
@property(nonatomic,strong)UIImageView *imageView1;
@property(nonatomic,strong)UIView *bgView;

@end

@implementation mine_two_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        

        self.bgView = [[view_fillet alloc]init];
        [self.contentView addSubview:self.bgView];
        
        self.imageView = [[UIImageView alloc]init];
        [self.bgView addSubview:self.imageView];
        
        self.imageView1 = [[UIImageView alloc]init];
        [self.bgView addSubview:self.imageView1];
        
        self.imageView.image = [UIImage imageNamed:@"mine_phone"];
        self.imageView1.image = [UIImage imageNamed:@"mine_email"];

        self.label = [[UILabel alloc]init];
        [self.bgView addSubview:self.label];
        
        self.label1 = [[UILabel alloc]init];
        [self.bgView addSubview:self.label1];
        
        
        [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.bottom.offset(-12);
            make.left.offset(12);
            make.right.offset(-12);

        }];
        
        [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.offset(12);
            

        }];
        
        [self.imageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.imageView.mas_bottom).offset(12);
            make.left.offset(12);
            

        }];
       
        
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.equalTo(self.imageView.mas_right).offset(12);
            
        }];
        [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.imageView.mas_bottom).offset(12);
            make.left.equalTo(self.imageView1.mas_right).offset(12);
            
        }];
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    mine_two *m = (mine_two *)model;
    if ([m.title isKindOfClass:[NSString class]]) {
        self.label.text = m.title;
    }
    if ([m.title1 isKindOfClass:[NSString class]]) {
        self.label1.text = m.title1;
        
    }

}
@end
@implementation mine_two
- (NSString *)identifier{ return NSStringFromClass([mine_two_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 100)];
}
+ (mine_two *)creat:(NSString *)title title1:(NSString *)title1{
    
    mine_two *test = [[mine_two alloc]init];
    test.title = title;
     test.title1 = title1;

    return test;
}
@end
