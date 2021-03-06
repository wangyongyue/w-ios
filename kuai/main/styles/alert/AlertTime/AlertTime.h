//
//  AlertTime.h
//  kuai
//
//  Created by apple on 2020/9/2.
//  Copyright © 2020 sui. All rights reserved.
//



#import <UIKit/UIKit.h>
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface AlertTime : UIView
@property(nonatomic,copy)TextBlock block;
+ (void)show:(NSString *)time block:(TextBlock)block;
@end

NS_ASSUME_NONNULL_END
