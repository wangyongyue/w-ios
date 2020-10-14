//
//  label_gray.m
//  kuai
//
//  Created by apple on 2020/8/28.
//  Copyright © 2020 sui. All rights reserved.
//

#import "label_gray.h"

@implementation label_gray

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.textColor = gray_color;
        self.textAlignment = NSTextAlignmentRight;
        self.backgroundColor = white_color;
        
        
        
    }
    return self;
}
@end
