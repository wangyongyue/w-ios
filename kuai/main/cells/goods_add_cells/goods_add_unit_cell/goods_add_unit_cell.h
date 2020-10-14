//
//  goods_add_unit_cell.h
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface goods_add_unit_cell : UICollectionViewCell

@end
@interface goods_add_unit : NSObject
@property(nonatomic,copy)NSString *left;
@property(nonatomic,copy)NSString *right;
@property(nonatomic,copy)NSString *unit;

+ (goods_add_unit *)creat:(NSString *)left right:(NSString *)right unit:(NSString *)unit;

@end
NS_ASSUME_NONNULL_END
