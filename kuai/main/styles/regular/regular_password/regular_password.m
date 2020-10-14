//
//  regular_password.m
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import "regular_password.h"

@implementation regular_password
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.max = 20;
        self.regularString = @"^[A-Za-z0-9]{0,20}+$";
        self.regularResult = @"^[A-Za-z0-9]{6,20}+$";

    }
    return self;
}
@end
