//
//  goods_add_car_cell.h
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Header.h"
NS_ASSUME_NONNULL_BEGIN

@interface goods_add_car_cell : UICollectionViewCell

@end
@interface goods_add_car : NSObject
@property(nonatomic,copy)NSString *titleLeft;
@property(nonatomic,copy)NSString *titleRight;

@property(nonatomic,assign)BOOL isDetails;
@property(nonatomic,strong)File *urlLeft;
@property(nonatomic,strong)File *urlRight;

@property(nonatomic,assign)NSInteger fileId1;
@property(nonatomic,assign)NSInteger fileId2;

+ (goods_add_car *)creat:(NSString *)left right:(NSString *)right urlLeft:(File *)urlLeft urlRight:(File *)urlRight;
+ (goods_add_car *)creat:(NSString *)left right:(NSString *)right urlLeft:(File *)urlLeft urlRight:(File *)urlRight isDetails:(BOOL)isDetails;


@end
NS_ASSUME_NONNULL_END
