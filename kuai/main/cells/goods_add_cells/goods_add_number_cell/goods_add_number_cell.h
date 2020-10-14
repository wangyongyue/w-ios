//
//  goods_add_number_cell.h
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface goods_add_number_cell : UICollectionViewCell

@end

@interface goods_add_number : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,assign)BOOL isDetails;

+ (goods_add_number *)creat:(NSString *)title;
+ (goods_add_number *)creat:(NSString *)title isDetails:(BOOL)isDetails;

@end
NS_ASSUME_NONNULL_END
