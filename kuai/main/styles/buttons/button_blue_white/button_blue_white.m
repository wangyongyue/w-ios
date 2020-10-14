//
//  button_blue_white.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "button_blue_white.h"

@implementation button_blue_white

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self setTitleColor:white_color forState: UIControlStateNormal];
        self.backgroundColor = blue_color;
    }
    return self;
}


@end
