//
//  button_back.m
//  kuai
//
//  Created by apple on 2020/8/31.
//  Copyright © 2020 sui. All rights reserved.
//

#import "button_back.h"

@implementation button_back

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setImage:[UIImage imageNamed:@"back_new"] forState:UIControlStateNormal];
        self.frame = CGRectMake(0, 0, 40, 40);
    }
    return self;
}

@end
