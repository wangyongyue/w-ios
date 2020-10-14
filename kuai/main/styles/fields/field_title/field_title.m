//
//  field_title.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "field_title.h"

@implementation field_title

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.textColor = text_color;
        self.font = text_font;
        self.textAlignment = NSTextAlignmentLeft;
    }
    return self;
}

@end
