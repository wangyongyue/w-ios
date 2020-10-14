//
//  goods_add_car_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_car_cell.h"



@interface goods_add_car_cell ()


@property(nonatomic,strong)button_image *left;
@property(nonatomic,strong)button_image *right;

@end

@implementation goods_add_car_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentView.backgroundColor = white_color;
        
        self.left = [[button_image alloc]init];
        [self.contentView addSubview:self.left];
        
        self.right = [[button_image alloc]init];
        [self.contentView addSubview:self.right];
        
        [self.left mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.left.offset(12);
            make.width.offset(80);
            make.bottom.offset(-12);

        }];
        
        
        [self.right mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(self.left.mas_right).offset(12);
            make.top.offset(12);
            make.width.offset(80);
            make.bottom.offset(-12);
        }];
        
        
       
        
      
        
    }
    return self;
}

- (void)clickPhoto{

       
       
       
}
- (void)loadModel:(id)model{
    
    goods_add_car *m = (goods_add_car *)model;
    self.left.title = m.titleLeft;
    self.right.title = m.titleRight;
    
    if (m.isDetails) {
        self.left.isEditor = NO;
        self.right.isEditor = NO;
        
    }else{
        self.left.isEditor = YES;
        self.right.isEditor = YES;
    }
    
   self.left.file = m.urlLeft;
    self.right.file = m.urlRight;


    __weak typeof(self) weakSelf = self;
    
    [self.left click:^{
        
        m.urlLeft = weakSelf.left.file;
        
    } deleBlock:^{
        if (m.urlLeft.id > 0) {
            m.fileId1 = m.urlLeft.id;
        }
        m.urlLeft = nil;
        
    }];
    
    [self.right click:^{
        m.urlRight = weakSelf.right.file;

    } deleBlock:^{
        if (m.urlRight.id > 0) {
            m.fileId2 = m.urlRight.id;
        }
        m.urlRight = nil;

    }];
}
@end
@implementation goods_add_car
- (NSString *)identifier{ return NSStringFromClass([goods_add_car_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 130)];
}
+ (goods_add_car *)creat:(NSString *)left right:(NSString *)right urlLeft:(File *)urlLeft urlRight:(File *)urlRight{
    
    goods_add_car *test = [[goods_add_car alloc]init];
    test.titleLeft = left;
    test.titleRight = right;
    test.urlLeft = urlLeft;
    test.urlRight = urlRight;

    return test;
}
+ (goods_add_car *)creat:(NSString *)left right:(NSString *)right urlLeft:(File *)urlLeft urlRight:(File *)urlRight isDetails:(BOOL)isDetails{
    
    goods_add_car *test = [[goods_add_car alloc]init];
    test.titleLeft = left;
    test.titleRight = right;
    test.urlLeft = urlLeft;
    test.urlRight = urlRight;
    test.isDetails = isDetails;

    return test;
    
}
@end
