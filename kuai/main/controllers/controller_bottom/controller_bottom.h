//
//  controller_bottom.h
//  kuai
//
//  Created by apple on 2020/10/15.
//  Copyright © 2020 sui. All rights reserved.
//


#import "controller_bottom.h"
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface controller_bottom : controller_back
@property(nonatomic,strong)Server *server;
+ (void)push:(Server *)server;

@end

NS_ASSUME_NONNULL_END
