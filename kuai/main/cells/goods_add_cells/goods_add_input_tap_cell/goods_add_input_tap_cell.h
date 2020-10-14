//
//  goods_add_input_tap_cell.h
//  kuai
//
//  Created by apple on 2020/9/2.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface goods_add_input_tap_cell : UICollectionViewCell

@end
@interface goods_add_input_tap : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *placeholder;
@property(nonatomic,copy)NSString *input;
@property(nonatomic,assign)NSInteger id;

@property(nonatomic,strong)regular *re;

+ (goods_add_input_tap *)creat:(NSString *)title placeholder:(NSString *)placeholder input:(NSString *)input;
+ (goods_add_input_tap *)creat:(NSString *)title placeholder:(NSString *)placeholder input:(NSString *)input aid:(NSInteger)aid;

@end
NS_ASSUME_NONNULL_END
