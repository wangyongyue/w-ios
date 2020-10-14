//
//  goods_add_sign_cell.h
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface goods_add_sign_cell : UICollectionViewCell

@end
@interface goods_add_sign : NSObject
@property(nonatomic,copy)NSString *titleLeft;
@property(nonatomic,copy)NSString *titleRight;
@property(nonatomic,copy)NSString *titleMiddle;


@property(nonatomic,assign)BOOL isDetails;
@property(nonatomic,strong)File *urlLeft;
@property(nonatomic,strong)File *urlRight;
@property(nonatomic,strong)File *urlMiddle;
@property(nonatomic,assign)NSInteger fileId1;
@property(nonatomic,assign)NSInteger fileId2;
@property(nonatomic,assign)NSInteger fileId3;

+ (goods_add_sign *)creat:(NSString *)left middle:(NSString *)middle right:(NSString *)right urlLeft:(File *)urlLeft urlMiddle:(File *)urlMiddle urlRight:(File *)urlRight;
+ (goods_add_sign *)creat:(NSString *)left middle:(NSString *)middle right:(NSString *)right urlLeft:(File *)urlLeft urlMiddle:(File *)urlMiddle urlRight:(File *)urlRight isDetails:(BOOL)isDetails;
@end
NS_ASSUME_NONNULL_END
