//
//  regular_number_20.m
//  kuai
//
//  Created by apple on 2020/9/18.
//  Copyright © 2020 sui. All rights reserved.
//

#import "regular_number_20.h"

@implementation regular_number_20
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.max = 20;
        self.regularString = @"^[0-9]+";
        self.keyboardType = UIKeyboardTypeNumberPad;
        
    }
    return self;
}
@end
