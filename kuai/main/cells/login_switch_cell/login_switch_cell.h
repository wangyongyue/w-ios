//
//  login_switch_cell.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface login_switch_cell : UICollectionViewCell

@end
@interface login_switch : NSObject
@property(nonatomic,copy)NSString *title;
+ (login_switch *)creat:(NSString *)title;

@end
NS_ASSUME_NONNULL_END
