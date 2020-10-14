//
//  home_content_cell.h
//  kuai
//
//  Created by apple on 2020/8/27.
//  Copyright © 2020 sui. All rights reserved.
//




#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface home_content_cell : UICollectionViewCell

@end
@interface home_content : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *imageName;

+ (home_content *)creat:(NSString *)title;
+ (home_content *)creat:(NSString *)title imageName:(NSString *)imageName;


@end
NS_ASSUME_NONNULL_END
