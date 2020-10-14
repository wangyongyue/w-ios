//
//  regular.m
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import "regular.h"

@implementation regular
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.max = 100;
        self.keyboardType = UIKeyboardTypeDefault;

    }
    return self;
}
- (NSString *)run:(NSString *)string{
    
    if (string.length <= 0) {
        return @"";
    }
    if (string.length > self.max) {
        return [string substringToIndex:self.max];
    }
    BOOL isEmj = [self stringContainsEmoji:string];
    if (isEmj) {
        return [string substringToIndex:[string length]-1];
    }
    if (self.regularString.length <= 0) {
        return string;
    }
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",self.regularString];
    if (![pred evaluateWithObject:string]) {
        return [string substringToIndex:[string length]-1];
    }
    return string;
        
}
- (BOOL)stringContainsEmoji:(NSString *)str
{
    if (str.length <= 0) {
        return NO;
    }
    NSString *string = str;
    __block BOOL returnValue = NO;
    
    [string enumerateSubstringsInRange:NSMakeRange(0, [string length])
                               options:NSStringEnumerationByComposedCharacterSequences
                            usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                const unichar hs = [substring characterAtIndex:0];
                                if (0xd800 <= hs && hs <= 0xdbff) {
                                    if (substring.length > 1) {
                                        const unichar ls = [substring characterAtIndex:1];
                                        const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                                        if (0x1d000 <= uc && uc <= 0x1f77f) {
                                            returnValue = YES;
                                        }
                                    }
                                } else if (substring.length > 1) {
                                    const unichar ls = [substring characterAtIndex:1];
                                    if (ls == 0x20e3) {
                                        returnValue = YES;
                                    }
                                } else {
                                    if (0x2100 <= hs && hs <= 0x27ff) {
                                        returnValue = YES;
                                    } else if (0x2B05 <= hs && hs <= 0x2b07) {
                                        returnValue = YES;
                                    } else if (0x2934 <= hs && hs <= 0x2935) {
                                        returnValue = YES;
                                    } else if (0x3297 <= hs && hs <= 0x3299) {
                                        returnValue = YES;
                                    } else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50) {
                                        returnValue = YES;
                                    }
                                }
                            }];
    return returnValue;
}
@end
