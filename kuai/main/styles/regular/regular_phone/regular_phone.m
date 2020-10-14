//
//  regular_phone.m
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import "regular_phone.h"
@implementation regular_phone
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.max = 11;
        self.regularString = @"^[0-9]*$";
        self.keyboardType = UIKeyboardTypePhonePad;
    }
    return self;
}

@end
