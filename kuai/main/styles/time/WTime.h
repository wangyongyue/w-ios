//
//  time.h
//  kuai
//
//  Created by apple on 2020/9/17.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WTime : NSObject
+ (NSString *)date;
+ (NSString *)time;
+ (NSString *)timeToDate:(NSString *)time;
@end

NS_ASSUME_NONNULL_END
