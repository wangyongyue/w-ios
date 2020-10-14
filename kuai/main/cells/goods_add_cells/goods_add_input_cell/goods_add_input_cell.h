//
//  goods_add_input_cell.h
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface goods_add_input_cell : UICollectionViewCell

@end
@interface goods_add_input : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *placeholder;
@property(nonatomic,copy)NSString *input;
@property(nonatomic,copy)NSString *sendNum;



@property(nonatomic,strong)regular *re;

+ (goods_add_input *)creat:(NSString *)title placeholder:(NSString *)placeholder input:(NSString *)input;
+ (goods_add_input *)creat:(NSString *)title placeholder:(NSString *)placeholder input:(NSString *)input re:(regular *)re;

@end
NS_ASSUME_NONNULL_END
