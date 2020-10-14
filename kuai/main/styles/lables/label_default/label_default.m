//
//  label-default.m
//  kuai
//
//  Created by apple on 2020/8/26.
//  Copyright © 2020 sui. All rights reserved.
//

#import "label_default.h"

@implementation label_default

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.textColor = text_color;
        self.font = text_font;
        self.textAlignment = NSTextAlignmentLeft;
        self.numberOfLines = 2;
    }
    return self;
}
@end
