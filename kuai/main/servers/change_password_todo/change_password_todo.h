//
//  change_password_todo.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Server.h"

NS_ASSUME_NONNULL_BEGIN

@interface change_password_todo : Server
@property(nonatomic,copy)NSString *oldPassword;
@property(nonatomic,copy)NSString *nPwd;

@property(nonatomic,copy)NSString *confirmPassword;

@end

NS_ASSUME_NONNULL_END
