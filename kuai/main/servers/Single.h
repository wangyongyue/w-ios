//
//  Single.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.

//

#import <Foundation/Foundation.h>
#import "Header.h"

NS_ASSUME_NONNULL_BEGIN

@interface Single : NSObject
SINGLETON_FOR_HEADER
@property(nonatomic,copy)NSString *token;
@property(nonatomic,copy)NSString *userId;
@property(nonatomic,copy)NSString *deviceId;
@property(nonatomic,strong)NSArray *menuVOList;
@property(nonatomic,strong)user *use;

- (BOOL)jurisdiction:(NSString *)jd;

@end

NS_ASSUME_NONNULL_END
