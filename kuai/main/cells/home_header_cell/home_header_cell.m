//
//  home_header_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "home_header_cell.h"
#import "Header.h"
@interface home_header_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIImageView *imageView;

@end

@implementation home_header_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.imageView = [[UIImageView alloc]init];
        [self.contentView addSubview:self.imageView];
        [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(0);
            make.bottom.offset(0);
            make.left.offset(0);
            make.right.offset(0);
            make.height.offset(100);

        }];
        
        self.label = [[label_home alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.center.equalTo(self.contentView);

        }];
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    home_header *m = (home_header *)model;
    self.label.text = m.title;
}
@end
@implementation home_header
- (NSString *)identifier{ return NSStringFromClass([home_header_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 190)];
}
+ (home_header *)creat:(NSString *)title{
    
    home_header *test = [[home_header alloc]init];
    test.title = title;
    return test;
}
@end
