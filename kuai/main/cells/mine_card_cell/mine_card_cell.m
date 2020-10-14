//
//  mine_card_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "mine_card_cell.h"
@interface mine_card_cell ()
@property(nonatomic,strong)button_card *button;
@property(nonatomic,strong)UIImageView *bgImage;

@end

@implementation mine_card_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.bgImage = [[UIImageView alloc]init];
        [self.contentView addSubview:self.bgImage];
        self.bgImage.image = [UIImage imageNamed:@"card_kuang"];
        [self.bgImage mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.bottom.offset(-12);
            make.left.offset(20);
            make.right.offset(-20);


        }];
        
        self.button = [[button_card alloc]init];
        [self.contentView addSubview:self.button];
        [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12 + 5);
            make.bottom.offset(-(12 + 5));
            make.left.offset(20 + 5);
            make.right.offset(-(20 + 5));

        }];
        
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    mine_card *m = (mine_card *)model;
    self.button.imageName = m.imageName;
    if (m.frontFile) {
        self.button.file = m.frontFile;
    }
    __weak typeof(self) weakSelf = self;
    [self.button click:^{
        
        m.frontFile = weakSelf.button.file;
        
        
    }];
}
@end
@implementation mine_card
- (NSString *)identifier{ return NSStringFromClass([mine_card_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 250)];
}

+ (mine_card *)creat:(File *)frontFile imageName:(NSString *)imageName{
    
    mine_card *test = [[mine_card alloc]init];
    test.frontFile = frontFile;
    test.imageName = imageName;

    
    return test;
    
}
@end
