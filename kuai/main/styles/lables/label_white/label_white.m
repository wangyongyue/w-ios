//
//  label_white.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "label_white.h"

@implementation label_white
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.textColor = white_color;
        self.textAlignment = NSTextAlignmentLeft;
       
    }
    return self;
}

@end
