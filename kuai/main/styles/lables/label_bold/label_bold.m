//
//  label_bold.m
//  kuai
//
//  Created by apple on 2020/9/18.
//  Copyright © 2020 sui. All rights reserved.
//

#import "label_bold.h"

@implementation label_bold

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.font = bold_font;
    }
    return self;
}

@end
