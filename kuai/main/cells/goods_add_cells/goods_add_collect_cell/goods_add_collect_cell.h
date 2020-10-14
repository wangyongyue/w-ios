//
//  goods_add_collect_cell.h
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface goods_add_collect_cell : UICollectionViewCell

@end
@interface goods_add_collect : NSObject
@property(nonatomic,copy)NSString *titleLeft;
@property(nonatomic,strong)File *urlLeft;
@property(nonatomic,assign)BOOL isDetails;
@property(nonatomic,assign)NSInteger fileId1;


+ (goods_add_collect *)creat:(NSString *)left urlLeft:(File *)urlLeft ;
+ (goods_add_collect *)creat:(NSString *)left urlLeft:(File *)urlLeft isDetails:(BOOL)isDetails;

@end
NS_ASSUME_NONNULL_END
