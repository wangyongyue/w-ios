//
//  Color.h
//  kuai
//
//  Created by apple on 2020/8/26.
//  Copyright © 2020 sui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN



#define text_color [UIColor blackColor]
#define white_color [UIColor whiteColor]
#define bg_color [UIColor whiteColor]
#define blue_color rgb(28,231,238)
#define gray_color rgb(144,144,144)
#define clear_color [UIColor clearColor]
#define mine_bg_color rgb(248,248,248)
#define line_color rgb(230,230,230)
#define red_color rgb(255,84,84)
#define gray_l_color rgb(248,248,248)
#define image_color rgb(243,245,248)
#define input_color rgb(249,249,249)
#define code_color rgb(210,210,210)
#define alert_color rgb(104,100,100)


#define rgb(r,g,b)  [UIColor colorWithRed:(r)/255.f \
green:(g)/255.f \
blue:(b)/255.f \
alpha:1.f]


@interface Color : UIColor

@end

NS_ASSUME_NONNULL_END
