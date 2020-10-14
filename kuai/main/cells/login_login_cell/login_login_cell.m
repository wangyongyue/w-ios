//
//  login_login_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "login_login_cell.h"
#import "Header.h"
@interface login_login_cell ()
@property(nonatomic,strong)UILabel *label;
@end

@implementation login_login_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.label = [[label_blue alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.bottom.offset(-12);
            make.left.offset(12);
            make.right.offset(-12);
            make.height.offset(40);

        }];
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    login_login *m = (login_login *)model;
    self.label.text = m.title;
}
@end
@implementation login_login
- (NSString *)identifier{ return NSStringFromClass([login_login_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 64)];
}
+ (login_login *)creat:(NSString *)title{
    
    login_login *test = [[login_login alloc]init];
    test.title = title;
    return test;
}
@end
