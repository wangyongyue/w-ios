//
//  goods_brand_item_cell.h
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface goods_brand_item_cell : UICollectionViewCell

@end
@interface goods_brand_item : NSObject
@property(nonatomic,copy)NSString *header;
@property(nonatomic,copy)NSString *headerTitle;
@property(nonatomic,copy)NSString *middle;
@property(nonatomic,copy)NSString *middleTitle;
@property(nonatomic,copy)NSString *footer;
@property(nonatomic,copy)NSString *footerTitle;

@property(nonatomic,assign)NSInteger id;

@end
NS_ASSUME_NONNULL_END
