//
//  goods_add_input_date_cell.h
//  kuai
//
//  Created by apple on 2020/9/2.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface goods_add_input_date_cell : UICollectionViewCell

@end
@interface goods_add_input_date : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *placeholder;
@property(nonatomic,copy)NSString *input;

+ (goods_add_input_date *)creat:(NSString *)title placeholder:(NSString *)placeholder input:(NSString *)input;

@end
NS_ASSUME_NONNULL_END
