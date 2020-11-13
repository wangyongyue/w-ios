//
//  goods_detail.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Server.h"

NS_ASSUME_NONNULL_BEGIN

@interface goods_detail : Server<server_navigation_protocol>
@property(nonatomic,assign)NSInteger id;
@property(nonatomic,assign)NSInteger flag;

@end



NS_ASSUME_NONNULL_END
