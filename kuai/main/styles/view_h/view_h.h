//
//  view_h.h
//  kuai
//
//  Created by apple on 2020/9/17.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface view_h : NSObject
+ (int)textSize:(NSString *)str;
+ (int)textWithWidth:(CGFloat)width str:(NSString *)str;
@end

NS_ASSUME_NONNULL_END
