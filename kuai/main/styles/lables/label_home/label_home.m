//
//  label_home.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//

#import "label_home.h"

@implementation label_home
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.textColor = white_color;
        self.textAlignment = NSTextAlignmentLeft;
        self.backgroundColor = clear_color;
        self.font = home_font;
        
        
    }
    return self;
}

@end
