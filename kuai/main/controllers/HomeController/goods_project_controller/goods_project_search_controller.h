//
//  goods_project_search_controller.h
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "controller_search.h"
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface goods_project_search_controller : controller_search
@property(nonatomic,strong)Server *server;
+ (void)push:(Server *)server;
@end

NS_ASSUME_NONNULL_END
