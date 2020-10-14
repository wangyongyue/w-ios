//
//  login_face_header_cell.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import "login_face_header_cell.h"
#import "Header.h"
@interface login_face_header_cell ()
@property(nonatomic,strong)UIImageView *imageView;
@end

@implementation login_face_header_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.imageView = [[UIImageView alloc]init];
        [self.contentView addSubview:self.imageView];
        self.imageView.image = [UIImage imageNamed:@"login_face"];
        
        [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.center.equalTo(self.contentView);
            make.height.offset(180);
            make.width.offset(180);

        }];
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    login_face_header *m = (login_face_header *)model;
}
@end
@implementation login_face_header
- (NSString *)identifier{ return NSStringFromClass([login_face_header_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 200)];
}
+ (login_face_header *)creat:(NSString *)title{
    
    login_face_header *test = [[login_face_header alloc]init];
    return test;
}
@end
