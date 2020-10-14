//
//  time.m
//  kuai
//
//  Created by apple on 2020/9/17.
//  Copyright © 2020 sui. All rights reserved.
//

#import "WTime.h"

@implementation WTime

+ (NSString *)date{
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";
    NSString *dateString =  [fmt stringFromDate:[NSDate date]];
    return dateString;
}
+ (NSString *)time{
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd HH:mm";
    NSString *dateString =  [fmt stringFromDate:[NSDate date]];
    return [NSString stringWithFormat:@"%@:00",dateString];
}
+ (NSString *)timeToDate:(NSString *)time{
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    NSDate *date =  [fmt dateFromString:time];
    
    NSDateFormatter *fmtDate = [[NSDateFormatter alloc] init];
    fmtDate.dateFormat = @"yyyy-MM-dd";
    NSString *dateString =  [fmtDate stringFromDate:date];
    return dateString;
}
@end
