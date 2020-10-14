//
//  forget_todo.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Server.h"

NS_ASSUME_NONNULL_BEGIN

@interface forget_todo : Server
@property(nonatomic,copy)NSString *iCode;
@property(nonatomic,copy)NSString *tel;

@property(nonatomic,copy)NSString *password;
@property(nonatomic,copy)NSString *passwordConfirm;

@end

NS_ASSUME_NONNULL_END
