//
//  UIView+Extend.h
//  kuai
//
//  Created by apple on 2020/8/10.
//  Copyright © 2020 sui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Extend)
+ (UIImage *)baseImageNamde:(NSString *)name;
+ (UIImage*)createImageWithColor:(UIColor*)color rect:(CGRect)rect;
+ (UIImage*)getVideoPreViewImage:(NSURL *)path;
+ (UIImage*)getVideoNetworkingPreViewImage:(NSURL *)url;
- (UIImage *)cutImage;
+ (UIImage *)fixOrientation:(UIImage *)aImage;
+ (UIImage *)rotateRightWith90:(UIImage *)aImage;
@end

NS_ASSUME_NONNULL_END
