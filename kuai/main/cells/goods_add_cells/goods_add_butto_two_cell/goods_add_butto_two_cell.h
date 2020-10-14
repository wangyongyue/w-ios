//
//  goods_add_butto_two_cell.h
//  kuai
//
//  Created by apple on 2020/9/4.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface goods_add_butto_two_cell : UICollectionViewCell

@end
@interface goods_add_butto_two : NSObject
@property(nonatomic,copy)NSString *right;
@property(nonatomic,copy)NSString *left;
@property(nonatomic,assign)NSInteger rd;

+ (goods_add_butto_two *)creat:(NSString *)left right:(NSString *)right;

@end
NS_ASSUME_NONNULL_END
