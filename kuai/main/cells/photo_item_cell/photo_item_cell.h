//
//  photo_item_cell.h
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <Photos/Photos.h>

NS_ASSUME_NONNULL_BEGIN

@interface photo_item_cell : UICollectionViewCell

@end
@interface photo_item : NSObject
@property(nonatomic,strong)PHAsset *asset;

@end
NS_ASSUME_NONNULL_END
