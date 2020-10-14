//
//  home_content_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "home_content_cell.h"
#import "Header.h"
@interface home_content_cell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIImageView *imageView;

@end

@implementation home_content_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.imageView = [[UIImageView alloc]init];
        [self.contentView addSubview:self.imageView];
        [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.bottom.offset(-12);
            make.left.offset(12);
            make.right.offset(-12);

        }];
        
        self.label = [[label_home alloc]init];
        self.label.textColor = [UIColor blackColor];
        [self.imageView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.offset(12);

        }];
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    home_content *m = (home_content *)model;
    self.label.text = m.title;
    

}
@end
@implementation home_content
- (NSString *)identifier{ return NSStringFromClass([home_content_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(0.5, 130)];
}
+ (home_content *)creat:(NSString *)title{
    
    home_content *test = [[home_content alloc]init];
    test.title = title;
    return test;
}
+ (home_content *)creat:(NSString *)title imageName:(NSString *)imageName{
    
    home_content *test = [[home_content alloc]init];
    test.title = title;
    test.imageName = imageName;

    return test;
}
@end
