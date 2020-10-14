//
//  Alert.h
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Header.h"
NS_ASSUME_NONNULL_BEGIN

@interface Alert : UIView

+ (void)loading;
+ (void)dismiss;
+ (void)showMessage:(NSString *)string;
+ (void)loading:(NSString *)string;

+ (void)photos:(void(^)(NSInteger index))block;
+ (void)showTitle:(NSString *)string block:(void(^)(void))block;

@end

NS_ASSUME_NONNULL_END
