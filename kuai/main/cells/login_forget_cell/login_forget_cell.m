//
//  login_forget_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "login_forget_cell.h"
#import "Header.h"
@interface login_forget_cell ()
@property(nonatomic,strong)UILabel *label;
@end

@implementation login_forget_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.label = [[label_gray alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.bottom.offset(-12);
            make.right.offset(-12);

        }];
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    login_forget *m = (login_forget *)model;
    self.label.text = m.title;
}
@end
@implementation login_forget
- (NSString *)identifier{ return NSStringFromClass([login_forget_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 40)];
}
+ (login_forget *)creat:(NSString *)title{
    
    login_forget *test = [[login_forget alloc]init];
    test.title = title;
    return test;
}
@end
