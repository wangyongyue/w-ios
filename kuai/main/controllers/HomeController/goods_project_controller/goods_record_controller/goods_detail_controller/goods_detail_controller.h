//
//  goods_detail_controller.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "controller_back.h"
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface goods_detail_controller : controller_back
@property(nonatomic,strong)Server *server;
+ (void)push:(Server *)server;

@end

NS_ASSUME_NONNULL_END
