//
//  photo_item_cell.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//


#import "photo_item_cell.h"
#import "Header.h"
@interface photo_item_cell ()
@property(nonatomic,strong)UIImageView *headerView;



@end

@implementation photo_item_cell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    
        
        self.headerView = [[UIImageView alloc]init];
        [self.contentView addSubview:self.headerView];
        [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.offset(2);
            make.bottom.offset(-0);
            make.left.offset(2);
            make.right.offset(-2);

        }];
        
       
        
        
    }
    return self;
}
- (void)loadModel:(id)model{
    
    photo_item *m = (photo_item *)model;
    
    PHAsset *asset = m.asset;
    
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];//请求选项设置
    options.resizeMode = PHImageRequestOptionsResizeModeFast;//自定义图片大小的加载模式
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.synchronous = NO;//是否同步加载
    [[PHImageManager defaultManager] requestImageForAsset:asset targetSize: CGSizeMake(160, 160) contentMode:PHImageContentModeAspectFill options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
        self.headerView.image = result;
    }];
    

}
@end
@implementation photo_item
- (NSString *)identifier{ return NSStringFromClass([photo_item_cell class]);}
- (NSValue *)size{
    return [NSValue valueWithCGSize:CGSizeMake(0.25, ScreenWidth/4)];
}

@end
