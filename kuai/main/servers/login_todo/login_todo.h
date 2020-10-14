//
//  login_todo.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Server.h"

NS_ASSUME_NONNULL_BEGIN

@interface login_todo : Server
@property(nonatomic,strong)NSString *username;
@property(nonatomic,strong)NSString *password;
@property(nonatomic,strong)NSString *code;

@end

NS_ASSUME_NONNULL_END
