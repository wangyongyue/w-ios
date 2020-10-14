//
//  view_h.m
//  kuai
//
//  Created by apple on 2020/9/17.
//  Copyright © 2020 sui. All rights reserved.
//

#import "view_h.h"
@implementation view_h

+ (int)textSize:(NSString *)str{
    CGSize maxSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, MAXFLOAT);
    CGSize textSize = [view_h sizeWithString:str font:[UIFont systemFontOfSize:18] maxSize:maxSize];
    if (textSize.height < 50){
        return 50;
    }
    return (int)textSize.height;
}
+ (int)textWithWidth:(CGFloat)width str:(NSString *)str{
    CGSize maxSize = CGSizeMake(width, MAXFLOAT);
    CGSize textSize = [view_h sizeWithString:str font:[UIFont systemFontOfSize:16] maxSize:maxSize];
   
    return (int)textSize.height;
}

+ (CGSize)sizeWithString:(NSString *)str font:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *dict = @{NSFontAttributeName: font};
    CGSize textSize = [str boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
    return textSize;
}

@end
