//
//  AlertList.h
//  kuai
//
//  Created by apple on 2020/9/2.
//  Copyright © 2020 sui. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Header.h"
#import "choice_server.h"

NS_ASSUME_NONNULL_BEGIN

@interface AlertList : UIView
@property(nonatomic,copy)ObjectBlock block;
+ (void)show:(choice_server *)server block:(ObjectBlock)block;

@end

NS_ASSUME_NONNULL_END
