//
//  change_mine_todo.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Server.h"

NS_ASSUME_NONNULL_BEGIN

@interface change_mine_todo : Server
@property(nonatomic,copy)NSString *mobile;
@property(nonatomic,copy)NSString *email;

@end

NS_ASSUME_NONNULL_END
