//
//  photo_viewer_controller.h
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "controller_back.h"
#import "Server.h"
NS_ASSUME_NONNULL_BEGIN

@interface photo_viewer_controller : controller_back
@property(nonatomic,strong)Server *server;
+ (void)push:(Server *)server;
@end

NS_ASSUME_NONNULL_END
