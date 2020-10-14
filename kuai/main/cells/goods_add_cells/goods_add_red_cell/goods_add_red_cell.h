//
//  goods_add_red_cell.h
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface goods_add_red_cell : UICollectionViewCell

@end
@interface goods_add_red : NSObject
@property(nonatomic,copy)NSString *title;

+ (goods_add_red *)creat:(NSString *)title;

@end
NS_ASSUME_NONNULL_END
