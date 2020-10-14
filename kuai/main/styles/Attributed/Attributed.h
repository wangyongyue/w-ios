//
//  Attributed.h
//  kuai
//
//  Created by apple on 2020/9/18.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Attributed : NSObject
+ (NSMutableAttributedString *) transBoldStr:(NSString *)boldStr currentStr:(NSString *)currentString;
@end

NS_ASSUME_NONNULL_END
