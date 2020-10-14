//
//  button_default.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "button_default.h"

@implementation button_default

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self setTitleColor:text_color forState: UIControlStateNormal];
    }
    return self;
}

@end
