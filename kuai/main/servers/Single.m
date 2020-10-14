//
//  Single.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Single.h"
#import <AdSupport/AdSupport.h>
@implementation Single

SINGLETON_FOR_CLASS
- (void)setToken:(NSString *)token{
    
    [[NSUserDefaults standardUserDefaults] setValue:token forKeyPath:@"token"];
}
- (NSString *)token{
    
    NSString *token = [[NSUserDefaults standardUserDefaults] valueForKey:@"token"];
    return token;
    
}
- (NSString *)deviceId{
  NSString *strIDFV = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    //    NSString *strIDFV = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    return strIDFV;
}
- (BOOL)jurisdiction:(NSString *)jd{
    
    for (NSString *string in self.menuVOList) {
        if ([string isEqualToString:jd]) {
            
            return YES;
        }
    }
    return NO;
}
@end
