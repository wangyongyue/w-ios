//
//  regular_code.m
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import "regular_code.h"

@implementation regular_code
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.max = 6;
        self.regularString = @"^[0-9]*$";
        self.keyboardType = UIKeyboardTypePhonePad;

    }
    return self;
}
@end
