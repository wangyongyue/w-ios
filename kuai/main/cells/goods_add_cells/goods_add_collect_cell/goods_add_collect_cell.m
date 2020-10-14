//
//  goods_add_collect_cell.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import "goods_add_collect_cell.h"
@interface goods_add_collect_cell ()
@property(nonatomic,strong)button_image *left;


@end

@implementation goods_add_collect_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contentView.backgroundColor = white_color;
        
        self.left = [[button_image alloc]init];
        [self.contentView addSubview:self.left];
        
        
        [self.left mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(12);
            make.centerX.equalTo(self.contentView);
            make.width.offset(80);
            make.height.offset(80);
            
        }];
        
    
        
    }
    return self;
}

- (void)clickTap{
    
    
    //       photo_viewer_controller *photo = [[photo_viewer_controller alloc]init];
    //       [self.navigationController pushViewController:photo animated:NO];
   
    
}
- (void)loadModel:(id)model{
    
    goods_add_collect *m = (goods_add_collect *)model;    
    self.left.title = m.titleLeft;
    
    if (m.isDetails) {
        self.left.isEditor = NO;
        
    }else{
        self.left.isEditor = YES;
    }
    
    
   self.left.file = m.urlLeft;


    __weak typeof(self) weakSelf = self;
    
    [self.left click:^{
        
        m.urlLeft = weakSelf.left.file;
        
    } deleBlock:^{
        if (m.urlLeft.id > 0) {
            m.fileId1 = m.urlLeft.id;
        }
        m.urlLeft = nil;
        
    }];
    
   

}
@end
@implementation goods_add_collect
- (NSString *)identifier{ return NSStringFromClass([goods_add_collect_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(1, 130)];
}
+ (goods_add_collect *)creat:(NSString *)left urlLeft:(File *)urlLeft{
    
    goods_add_collect *test = [[goods_add_collect alloc]init];
    test.titleLeft = left;
    test.urlLeft = urlLeft;

    return test;
}
+ (goods_add_collect *)creat:(NSString *)left urlLeft:(File *)urlLeft isDetails:(BOOL)isDetails{
    
    goods_add_collect *test = [[goods_add_collect alloc]init];
    test.titleLeft = left;
    test.urlLeft = urlLeft;
    test.isDetails = isDetails;
    
    return test;
    
    
}
@end
