//
//  photo_controller.h
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "controller_back.h"
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface photo_controller : controller_back
@property(nonatomic,copy) FileBlock block;
- (void)uploadFinish:(FileBlock)block;
@end

NS_ASSUME_NONNULL_END
