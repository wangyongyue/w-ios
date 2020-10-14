//
//  Router.h
//  kuai
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Server.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Router : NSObject
+ (void)push:(UIViewController *)controller;
+ (void)pushNotAnimated:(UIViewController *)controller;
+ (void)pop;
+ (UINavigationController *)navigationController;

@end

NS_ASSUME_NONNULL_END
