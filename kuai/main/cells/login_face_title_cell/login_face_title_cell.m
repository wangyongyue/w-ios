//
//  login_face_title_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "login_face_title_cell.h"
#import "Header.h"
@interface login_face_title_cell ()
@property(nonatomic,strong)UILabel *label;
@end

@implementation login_face_title_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.label = [[label_title alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(22);
            make.bottom.offset(-12);
            make.left.offset(12);
            make.right.offset(-12);

        }];
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    login_face_title *m = (login_face_title *)model;
    self.label.text = m.title;
}
@end
@implementation login_face_title
- (NSString *)identifier{ return NSStringFromClass([login_face_title_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 70)];
}
+ (login_face_title *)creat:(NSString *)title{
    
    login_face_title *test = [[login_face_title alloc]init];
    test.title = title;
    return test;
}
@end
