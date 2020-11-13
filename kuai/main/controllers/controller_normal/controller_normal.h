//
//  controller_normal.h
//  kuai
//
//  Created by apple on 2020/10/15.
//  Copyright © 2020 sui. All rights reserved.
//


#import "controller_back.h"
#import "Server.h"
#import "list_pull_down_up_view.h"
#import "Router.h"
#import <Masonry.h>

NS_ASSUME_NONNULL_BEGIN

@interface controller_normal : controller_back
@property(nonatomic,strong)Server<server_navigation_protocol> *server;
+ (void)push:(Server<server_navigation_protocol> *)server;


@end

NS_ASSUME_NONNULL_END
