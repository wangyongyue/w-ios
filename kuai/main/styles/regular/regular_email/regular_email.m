//
//  regular_email.m
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import "regular_email.h"

@implementation regular_email
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.regularResult = @"[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+\\.[a-zA-Z]{2,4}";
        self.regularString = @"[^\u4e00-\u9fa5]+";
        
        self.keyboardType = UIKeyboardTypeURL;
    }
    return self;
}
@end
