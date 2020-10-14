
//
//  regular_number.m
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import "regular_number.h"

@implementation regular_number
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.max = 100;
        self.regularString = @"^[0-9]+";
        self.keyboardType = UIKeyboardTypeNumberPad;
        
    }
    return self;
}
@end
