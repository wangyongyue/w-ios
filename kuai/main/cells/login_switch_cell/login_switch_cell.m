
//
//  login_switch_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "login_switch_cell.h"
#import "Header.h"
@interface login_switch_cell ()
@property(nonatomic,strong)UILabel *label;
@end

@implementation login_switch_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.label = [[label_text_blue alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.bottom.offset(-12);
            make.left.offset(30);
            make.right.offset(-30);
            make.height.offset(50);

        }];
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    login_switch *m = (login_switch *)model;
    self.label.text = m.title;
}
@end
@implementation login_switch
- (NSString *)identifier{ return NSStringFromClass([login_switch_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 54)];
}
+ (login_switch *)creat:(NSString *)title{
    
    login_switch *test = [[login_switch alloc]init];
    test.title = title;
    return test;
}
@end
