//
//  view_fillet.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//

#import "view_fillet.h"

@implementation view_fillet
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = white_color;
        self.layer.cornerRadius= 12;
        self.layer.masksToBounds= YES;
    }
    return self;
}

@end
