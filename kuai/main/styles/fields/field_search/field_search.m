//
//  field_search.m
//  kuai
//
//  Created by apple on 2020/9/1.
//  Copyright © 2020 sui. All rights reserved.
//

#import "field_search.h"

@implementation field_search

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.textColor = text_color;
        self.font = text_font;
        self.textAlignment = NSTextAlignmentLeft;
        self.frame = CGRectMake(0, 0, ScreenWidth - 100, 28);
        self.placeholder = @"请输入搜索内容";
        self.backgroundColor = white_color;
        self.layer.cornerRadius = 6;
        self.layer.masksToBounds = YES;
    }
    return self;
}

@end
