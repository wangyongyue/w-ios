//
//  goods_title_group_cell.h
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface goods_title_group_cell : UICollectionViewCell

@end
@interface goods_title_group : NSObject
@property(nonatomic,copy)NSString *title;
+ (goods_title_group *)creat:(NSString *)title;

@end
NS_ASSUME_NONNULL_END
