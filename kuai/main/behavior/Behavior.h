//
//  Behavior.h
//  kuai
//
//  Created by apple on 2020/6/12.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Behavior : NSObject
@property (nonatomic, assign) float time;
@property (nonatomic, assign) CGPoint startPoint;
@property (nonatomic, assign) CGPoint endPoint;
@end

NS_ASSUME_NONNULL_END
