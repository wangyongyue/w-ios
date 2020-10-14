
//
//  regular_decimal.m
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import "regular_decimal.h"

@implementation regular_decimal
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.max = 14;
        self.regularString = @"^[0-9]{1,10}+(\\.[0-9]{0,3})?$";
        self.keyboardType = UIKeyboardTypeDecimalPad;

        
    }
    return self;
}
@end
