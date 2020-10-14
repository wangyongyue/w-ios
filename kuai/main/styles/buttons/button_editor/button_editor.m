//
//  button_editor.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "button_editor.h"

@implementation button_editor

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setImage:[UIImage imageNamed:@"editor"] forState:UIControlStateNormal];
    }
    return self;
}

@end
