//
//  label_blue.m
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//

#import "label_blue.h"

@implementation label_blue

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.textColor = white_color;
        self.font = text_font;
        self.textAlignment = NSTextAlignmentCenter;
        self.backgroundColor = blue_color;
        self.layer.cornerRadius= 20;
        self.layer.masksToBounds= YES;
        
        
    }
    return self;
}
@end
