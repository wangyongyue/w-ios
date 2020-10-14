//
//  mapping.h
//  kuai
//
//  Created by apple on 2020/9/17.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface mapping : NSObject

+ (NSString *)extractStringWithDictionary:(NSDictionary *)dic keys:(NSString *)keys;
+ (NSInteger)extractIntegerWithDictionary:(NSDictionary *)dic keys:(NSString *)keys;
+ (float)extractFloatWithDictionary:(NSDictionary *)dic keys:(NSString *)keys;
+ (NSString *)decimalNumber:(NSString *)string num:(int)num;

@end

NS_ASSUME_NONNULL_END
