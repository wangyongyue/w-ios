//
//  Photos.h
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//


#import "Server.h"
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface Photos : Server
@property(nonatomic,copy) FileBlock block;
- (void)uploadFinish:(FileBlock)block;
@end

NS_ASSUME_NONNULL_END
