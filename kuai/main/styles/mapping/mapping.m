//
//  mapping.m
//  kuai
//
//  Created by apple on 2020/9/17.
//  Copyright © 2020 sui. All rights reserved.
//

#import "mapping.h"

@implementation mapping
+ (NSString *)extractStringWithDictionary:(NSDictionary *)dic keys:(NSString *)keys{
    
    id r = [mapping extractWithDictionary:dic keys:keys];
    if ([r isKindOfClass:[NSString class]]) {
        
        return r;
    }else if ([r isKindOfClass:[NSNumber class]]) {
        
        return [NSString stringWithFormat:@"%@",r];
    }
    
    return @"";
}
+ (NSInteger)extractIntegerWithDictionary:(NSDictionary *)dic keys:(NSString *)keys{
    id r = [mapping extractWithDictionary:dic keys:keys];
    if ([r isKindOfClass:[NSNumber class]]) {
        
        return  [r integerValue];
    }
    return 0;

}
+ (float)extractFloatWithDictionary:(NSDictionary *)dic keys:(NSString *)keys{
    id r = [mapping extractWithDictionary:dic keys:keys];
     if ([r isKindOfClass:[NSNumber class]]) {
           
           return  [r floatValue];
       }
    return 0.0;
}
+ (id)extractWithDictionary:(NSDictionary *)dic keys:(NSString *)keys{
    
    NSArray *array = [keys componentsSeparatedByString:@"."];
    id result;
    for (int i = 0; i < array.count; i ++) {
        NSString *key = array[i];
        if (result != nil && [result isKindOfClass:[NSDictionary class]]) {
            NSDictionary *a = (NSDictionary *)result;
            result = [a valueForKey:key];
        }else{
            result = [dic valueForKey:key];
        }
    }
    return result;
}
+ (NSString *)decimalNumber:(NSString *)string num:(int)num{
    if ([string isEqualToString:@"0"]) {
        return string;
    }
    NSString *doubleString;

    if (num == 2) {
        doubleString = [NSString stringWithFormat:@"%.2lf", [string doubleValue]];
    }else if (num == 3) {
        doubleString = [NSString stringWithFormat:@"%.3lf", [string doubleValue]];
    }else{
        doubleString = [NSString stringWithFormat:@"%.2lf", [string doubleValue]];
    }
    NSDecimalNumber *decNumber = [NSDecimalNumber decimalNumberWithString:doubleString];
    NSLog(@"%@", [decNumber stringValue]);
    return [decNumber stringValue];
}



@end
