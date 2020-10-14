//
//  Photos.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//


#import "Photos.h"
#import "Header.h"
#import <Photos/Photos.h>


@interface Photos()

@end
@implementation Photos
- (void)uploadFinish:(FileBlock)block{
    self.block = block;
}
- (void)loadTableData:(NSDictionary *)reponse{
           
    [self.array removeAllObjects];
    
    PHFetchResult *assets = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeImage options:nil]; //得到所有图片
    for (int i = (int)assets.count - 1 ; i >= 0 ; i --) {
        PHAsset *a = assets[i];
        photo_item *item = [[photo_item alloc]init];
        item.asset = a;
        [self.array addObject:item];
        
    }
    
    
}
- (void)tableIndex:(NSInteger)index{
    
    photo_item *item = self.array[index];
    PHAsset *a = item.asset;
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];//请求选项设置
    options.resizeMode = PHImageRequestOptionsResizeModeFast;//自定义图片大小的加载模式
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.synchronous = NO;//是否同步加载
    options.networkAccessAllowed = YES;
    [[PHImageManager defaultManager] requestImageDataForAsset:a options:options resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
        
        UIImage *bigImage = [UIImage imageWithData:imageData];


        FileUpdate *update = [[FileUpdate alloc]init];
        update.image = bigImage;
        __weak typeof(update) weakUpdate = update;
        [update networkRequest];
        [update successData:^{
           
            File *file = weakUpdate.file;
            if (self.block) {
                self.block(file);
            }
            [self.navigationController popViewControllerAnimated:YES];

        }];



    }];
    
    
}


@end
