//
//  goods_state_cell.h
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface goods_state_cell : UICollectionViewCell

@end
@interface goods_state : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *title1;

@property(nonatomic,assign)NSInteger id;
@property(nonatomic,assign)int status;
@property(nonatomic,assign)int flag;

+ (goods_state *)creat:(NSString *)title title1:(NSString *)title1;

@end
NS_ASSUME_NONNULL_END
