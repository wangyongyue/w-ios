//
//  regular_decimal_two.m
//  kuai
//
//  Created by apple on 2020/9/18.
//  Copyright © 2020 sui. All rights reserved.
//

#import "regular_decimal_two.h"

@implementation regular_decimal_two
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.max = 13;
        self.regularString = @"^[0-9]{1,10}+(\\.[0-9]{0,2})?$";
        
    }
    return self;
}
@end
