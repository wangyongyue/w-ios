//
//  Attributed.m
//  kuai
//
//  Created by apple on 2020/9/18.
//  Copyright © 2020 sui. All rights reserved.
//

#import "Attributed.h"

@implementation Attributed
+ (NSMutableAttributedString *) transBoldStr:(NSString *)boldStr currentStr:(NSString *)currentString;
{
    NSString *strNew = [NSString stringWithFormat:@"%@%@",boldStr,currentString];
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:strNew];
   
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:[strNew rangeOfString:boldStr]];
   [str addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:15] range:[strNew rangeOfString:boldStr]];

    return str;
    
}
@end
