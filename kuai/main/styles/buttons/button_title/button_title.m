//
//  button_title.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "button_title.h"

@implementation button_title

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self setTitleColor:text_color forState: UIControlStateNormal];
    }
    return self;
}


@end
