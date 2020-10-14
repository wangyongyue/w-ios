//
//  mine_input_cell.h
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface mine_input_cell : UICollectionViewCell

@end
@interface mine_input : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *input;
@property(nonatomic,copy)NSString *placeholder;
@property(nonatomic,strong)regular *re;


+ (mine_input *)creat:(NSString *)title placeholder:(NSString *)placeholder;
+ (mine_input *)creat:(NSString *)title placeholder:(NSString *)placeholder re:(regular *)re;
+ (mine_input *)creat:(NSString *)title placeholder:(NSString *)placeholder input:(NSString *)input re:(regular *)re;

@end
NS_ASSUME_NONNULL_END
