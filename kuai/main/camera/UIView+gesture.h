//
//  UIView+gesture.h
//  kuai
//
//  Created by apple on 2020/6/12.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (gesture)

- (void)getTypeImage:(Behavior *)model;
- (UIButton *)getTypeButton:(Behavior *)model;
@end

NS_ASSUME_NONNULL_END
